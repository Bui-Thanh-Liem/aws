const { S3Client, GetObjectCommand, PutObjectCommand } = require('@aws-sdk/client-s3');
const sharp = require('sharp');

const s3 = new S3Client();
const SIZES = [100, 200, 1000];

exports.handler = async (event) => {
    // 1. Lấy thông tin file từ event S3
    const bucket = event.Records[0].s3.bucket.name;
    const key = decodeURIComponent(event.Records[0].s3.object.key.replace(/\+/g, ' '));

    // Kiểm tra nếu file nằm trong folder resize thì bỏ qua để tránh loop
    if (key.startsWith('resized-')) {
        console.log('File is already a resized version. Skipping...');
        return;
    }

    try {
        // 2. Tải ảnh từ S3 về
        const getCommand = new GetObjectCommand({ Bucket: bucket, Key: key });
        const response = await s3.send(getCommand);
        const streamToBuffer = (stream) => new Promise((resolve, reject) => {
            const chunks = [];
            stream.on('data', (chunk) => chunks.push(chunk));
            stream.on('error', reject);
            stream.on('end', () => resolve(Buffer.concat(chunks)));
        });
        const inputBuffer = await streamToBuffer(response.Body);

        // 3. Resize và upload từng kích thước
        const fileName = key.split('/').pop();
        
        const uploadPromises = SIZES.map(async (size) => {
            const resizedBuffer = await sharp(inputBuffer)
                .resize(size, size, { fit: 'inside', withoutEnlargement: true })
                .toBuffer();

            const destinationKey = `resized-${size}/${fileName}`;
            
            console.log(`Uploading to: ${destinationKey}`);
            
            return s3.send(new PutObjectCommand({
                Bucket: bucket,
                Key: destinationKey,
                Body: resizedBuffer,
                ContentType: response.ContentType
            }));
        });

        await Promise.all(uploadPromises);
        
        return { statusCode: 200, body: 'Resizing complete!' };

    } catch (error) {
        console.error('Error:', error);
        throw error;
    }
};