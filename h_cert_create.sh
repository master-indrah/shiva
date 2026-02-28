1. create h_cert

mkdir -p /root/h_cert
cd /root/h_cert
openssl req -x509 -newkey rsa:4096 -keyout h_key.key -out h_cert.crt -sha256 -days 3650 -nodes -subj "/CN=$(curl -s ip.sb)" -addext "subjectAltName=IP:$(curl -s ip.sb)"
chmod 600 *




2. install sing-box

# 推荐方式（自动处理 systemd、服务、更新）
curl -fsSL https://sing-box.app/install.sh | sh

# 如果想装最新测试版（更激进更新），用下面这行：
# curl -fsSL https://sing-box.app/install.sh | sh -s -- --beta

3. install hysteria2

bash <(curl -fsSL https://get.hy2.sh/)
