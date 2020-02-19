# install lsb-release, install figlet to enable ASCII art, install update-motd software
sudo apt install lsb-release figlet update-motd
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
