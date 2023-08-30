#/bin/sh
mkdir /home/ubuntu

cat <<EOF > /home/ubuntu/sandbox
#!/bin/sh
exec docker run -t -i --rm woosuknam/sandbox:latest /bin/zsh -c 'clear && /bin/zsh'
EOF

chmod 777 /home/ubuntu/sandbox

useradd ubuntu -s /home/ubuntu/sandbox
chown ubuntu:ubuntu /home/ubuntu

echo "ubuntu:password" | chpasswd