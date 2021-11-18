sudo apt-get update && sudo apt-get -y upgrade

# chang password
echo "vagrant:admin123@" | chpasswd

# enabled ssh password login
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
# sudo sed -i 's/#\s*PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo cat /etc/ssh/sshd_config | grep PasswordAuthentication

ip a