import { S3Client, GetObjectCommand } from "@aws-sdk/client-s3";
import { DynamoDBClient } from "@aws-sdk/client-dynamodb";
import { DynamoDBDocumentClient, PutCommand } from "@aws-sdk/lib-dynamodb";

const s3Client = new S3Client({});
const dynamoClient = new DynamoDBClient({});
const docClient = DynamoDBDocumentClient.from(dynamoClient);

const TABLE_NAME = "employee"; // Tên bảng của bạn

export const handler = async (event) => {
    // 1. Lấy thông tin file từ Event S3
    const bucket = event.Records[0].s3.bucket.name;
    const key = decodeURIComponent(event.Records[0].s3.object.key.replace(/\+/g, ' '));

    try {
        // 2. Tải nội dung file từ S3
        const commandS3 = new GetObjectCommand({ Bucket: bucket, Key: key });
        const responseS3 = await s3Client.send(commandS3);
        const csvContent = await responseS3.Body.transformToString();

        // 3. Phân tách dòng và xử lý
        const lines = csvContent.split('\n').filter(line => line.trim() !== "");
        
        console.log(`Bắt đầu xử lý ${lines.length} dòng dữ liệu...`);

        // 4. Lặp qua từng dòng và ghi vào DynamoDB
        const promises = lines.map(async (line) => {
            const [id, name, address] = line.split(',');

            const item = {
                id: id.trim(),
                name: name.trim(),
                address: address.trim(),
            };

            const putParams = {
                TableName: TABLE_NAME,
                Item: item
            };

            return docClient.send(new PutCommand(putParams));
        });

        // Chờ tất cả các dòng được ghi xong
        await Promise.all(promises);

        console.log("Ghi dữ liệu vào DynamoDB thành công.");

        return {
            statusCode: 200,
            body: JSON.stringify({ message: "Import hoàn tất", total: lines.length }),
        };

    } catch (error) {
        console.error("Lỗi:", error);
        throw error;
    }
};

