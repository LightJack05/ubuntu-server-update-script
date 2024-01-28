TIME=`date +%F@%T`

# Maintainance Tasks
# Not recommended for high-availability servers!
echo "[$TIME | Update Script] Starting maintainance crontabs..." >> cron.log
apt update | sed -e "s/^/[$TIME | Update Script] /" >> /var/log/cron.log
apt upgrade -y  | sed -e "s/^/[$TIME | Update Script] /" >> /var/log/cron.log
echo "[$TIME | Update Script] Maintainance crontabs completed." >> /var/log/cron.log

# Optional Reboot:
# 45 3 * * 1 reboot