#!/bin/sh

# Installs latest node.js locally without sudo
# Source https://gist.github.com/isaacs/579814#file-node-and-npm-in-30-seconds-sh

echo 'export PATH=/home/k/kmdice/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/default-java:/usr/lib/jvm/default-java' >> ~/.bashrc
. ~/.bashrc
mkdir ~/local
mkdir ~/node-latest-install
cd ~/node-latest-install
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=~/local
make install # ok, fine, this step probably takes more than 30 seconds...
curl https://www.npmjs.org/install.sh | sh

# Forces your .bashrc to be run every time you login.
echo "`cat .bash_profile`

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi" > .bash_profile
