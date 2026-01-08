# VPC (Virtual Private Cloud)

# Subnet

# IP Address

    - Public ip

    - Private ip

# Routing (Route Table)

    - Xác định traffic sẽ được đi đâu trong mạng

    - Quyết định subnet là public hay private

        - Public: khi có route ra internet gateway

# Elastic IP

    - Không đổi khi stop - start instance

# Security group

    - Firewall ở cấp đọ instance

# ACL (Network Access Control List)

    - Apply ở cấp độ subnet

    - Có số ưu tiên

    - Có các role Allow/Deny

    - Protocol

    - Port range

    - Source IP (In bound) / destination IP (Out bound)

# VPC low log

    - Watch traffic in/out

# VPN connection

    - Kết nối VPC trên aws tới on-premise

# Elastic Network Interface

    - Cart mạng ảo

# Internet gateway

    - Cổng vào từ internet tới các thanh phần bên trong VPC

# NAT gateway

    - Cho phép các dịch vụ bên trong kết nối ra internet, nhưng không cho internet vào.

# VPC endpoint

    - Cho các dịch vụ private trong VPC kết nối tới các dịch vụ khác nhưng không thông qua internet.

# Peering connection

    - Kênh kết nối giữa 2 VPC

# Transit gateway

    - Như hub giữa các VPCs

# CIDR - (Classless Inter Domain Routing)

    - Cách viết để xác định một dải IP dùng trong mạng

    - AWS recommend:

        - 192.168.0.0 - 192.168.255.255 - 192.168.0.0/20

        - 10.10.0.0 - 192.255.255.255 - 10.0.0.0/16

        - 172.16.0.0 - 172.31.255.255 - 172.31.0.0/16

    - VD: 10.0.0.0/16

        - 16 bit đầu dùng subnet mask

        CIDR	    Subnet mask	        Số IP
        /32	        255.255.255.255	    1 IP
        /24	        255.255.255.0	    256 IP
        /16	        255.255.0.0	        65,536 IP
        /0	        0.0.0.0	            Toàn bộ Internet
