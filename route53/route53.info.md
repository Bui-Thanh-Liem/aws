# Route 53

# DNS - Domain Name System

# Register Domain Name

# DNS Routing Record

# Health Checking

# Hosted zone

    - Nếu domain mua bởi bên thứ ba thì cần trỏ NS (name servers)

    - Quản lý các record của domain: A, AAAA, NS, CNAME, MX, TXT, ...

    - ...

# Private hosted zone

    - Có thể mapping với tên miền

    - Có thể gắn cho các resource

    - Chỉ có tác dụng trong VPC

# Routing policy

    - Simple: Trỏ tới những resource đơn lẻ

    - Weighted: Phân chia tỉ lệ điều hướng tới nhiều resource

    - Failover: Cấu hình trỏ với một cập resource primary và secondary

    - Geolocation: Trỏ theo địa lý của user

    - Geoproximity: Trỏ theo dịa lý của resource

    - Latency: khi có quá nhiều resource trên nhiều regions , để aws tự động traffic tới region có latency tốt hơn

    - IP-based: dựa trên địa chỉ IP cho phép

    - Multivalue answer: Trả về tối đa 8 bản ghi "khỏe mạnh" (healthy) ngẫu nhiên cho client.
