# install lsb-release 
sudo apt-get install lsb-release
# install figlet to enable ASCII art
sudo apt-get install figlet
# install update-motd software
sudo apt-get install update-motd
# delete default directory
sudo rm -r /etc/update-motd.d/
# create new directory
sudo mkdir /etc/update-motd.d/
# create dynamic files
sudo touch /etc/update-motd.d/00-header ; sudo touch /etc/update-motd.d/10-sysinfo ; sudo touch /etc/update-motd.d/90-footer
sudo bash -c 'cat motd_scripts/header.script > /etc/update-motd.d/00-header'
sudo bash -c 'cat motd_scripts/body.script > /etc/update-motd.d/10-sysinfo'
sudo bash -c 'cat motd_scripts/footer.script > /etc/update-motd.d/90-footer'
# make files executable
sudo chmod +x /etc/update-motd.d/*
# remove MOTD file
sudo rm -f /etc/motd.dynamic
echo "Done..."