echo "Creating /srv/update-script..."
mkdir /srv/update-script

echo "Downloading update script..."
wget https://raw.githubusercontent.com/LightJack05/ubuntu-server-update-script/main/update.sh -P /srv/update-script/
chmod +x /srv/update-script/update.sh

echo "Creating cronjob for current user..."
(crontab -l 2>/dev/null; echo "10 3 * * 1 /srv/update-script/update.sh") | crontab -

echo "Completed setup. Script can be run manually using: /srv/update-script/update.sh"