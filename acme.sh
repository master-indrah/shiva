curl https://get.acme.sh | sh -s email=my@example.com

cd .acme.sh

./acme.sh --issue -d panda.eatfat.xyz -w /var/www/html

mkdir -p /root/cert/

./acme.sh --install-cert -d panda.eatfat.xyz --key-file  /root/cert/key.pem  --fullchain-file /root/cert/cert.pem 

