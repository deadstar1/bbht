sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y git
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y realpath

#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
sudo apt install awscli
echo "Don't forget to set up AWS credentials!"

sudo apt-get -y install build-essential libssl-dev libffi-dev python-dev
sudo apt-get -y install python-setuptools

#create a tools folder in /vagrant/tools
mkdir /vagrant/tools
cd /vagrant/tools/


echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
sudo pip install -r requirements.txt
cd /vagrant/tools/
echo "done"

echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd ~
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
rvm install 2.4.2
rvm use 2.4.2 --default
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
cd /vagrant/tools
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan
gem install bundler
bundle install --without test
cd /vagrant/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd /vagrant/tools/
echo "done"

echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd /vagrant/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd /vagrant/tools/
echo "done"

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd /vagrant/tools/
echo "done"

echo "installing knock.py"
sudo apt-get install python-dnspython
git clone https://github.com/guelfoweb/knock.git
cd /vagrant/tools/
echo "done"

echo "installing gittyleaks"
sudo pip install gittyleaks
echo "done"

echo "installing relative-url-extractor"
git clone https://github.com/jobertabma/relative-url-extractor.git
cd /vagrant/tools/
echo "done"

echo "installing wafwoof"
sudo pip install wafwoof
echo 'done'

#echo "installing recon-ng"
#git clone https://LaNMaSteR53@bitbucket.org/LaNMaSteR53/recon-ng.git
#cd recon-ng
#sudo pip install -r REQUIREMENTS
echo "done"

echo "installing recon.sh"
git clone https://github.com/jobertabma/recon.sh.git
cd /vagrant/tools/
echo "done"

cp /vagrant/bash_profile ~/.bash_profile
source ~/.bash_profile

# init recon.sh for recon-data
mkdir /vagrant/recon-data
cd /vagrant/recon-data
git init
recon.sh init /vagrant/recon-data


echo "One last time: don't forget to set up AWS credentials in ~/.aws/!"
