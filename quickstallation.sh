echo "***************************"
echo " "
echo "Greetings"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt-get update
sudo apt-get -y install git tree puppet

git clone https://github.com/Defthy/sshmoduuli.git


sudo puppet apply --modulepath ~/sshmoduuli/puppet/modules/ -e 'class {"openssh":}'

cd

echo "***************************"
echo " "
echo "Engaged"
echo " "
echo "***************************"

