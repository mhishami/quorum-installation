#!/bin/sh
#
wget https://golang.org/dl/go1.15.2.linux-amd64.tar.gz
sudo tar -C /usr/local/lib -xzf go1.15.2.linux-amd64.tar.gz

sudo apt install -y build-essential

echo > ~/.bash_profile <EOF
GO_HOME="/usr/local/lib/go"
QUORUM_HOME="/usr/local/lib/quorum"
PATH="$QUORUM_HOME/build/bin:$GO_HOME/bin:$PATH"

export PATH GO_HOME QUORUM_HOME
EOF
. ~/.bash_profile

git clone https://github.com/ConsenSys/quorum.git
cd quorum
make all
cd ..

sudo mv quorum /usr/local/lib/.

. ~/.bash_profile

