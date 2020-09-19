
wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.15.2.linux-amd64.tar.gz


echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bash_profile
. ~/.bash_profile

git clone https://github.com/ConsenSys/quorum.git
cd quorum
make all

sudo mv quorum /usr/local/.

echo "\$QUORUM_HOME=/usr/local/quorum" >> ~/.bash_profile
echo "export PATH=\$QUORUM_HOME/build/bin:\$PATH" >> ~/.bash_profile
. ~/.bash_profile

