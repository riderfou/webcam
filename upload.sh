#upload.sh
#!/bin/bash

echo ftp upload in progress
ncftpput -S .tmp -u planneig -p GyfnVT5b ftp.plan-neige.org /www/peufdaddy/ /home/pi/powdercam/powdercam.jpg
echo powdercam image upload finished
mv /home/pi/powdercam/powdercam.jpg /home/pi/powdercam/$(date +%Y%m%d-%H%M).jpg
echo archive image created
ncftpput -u planneig -p GyfnVT5b ftp.plan-neige.org /www/peufdaddy/archive /home/pi/powdercam/*.jpg
echo archive image upload finished
rm *.jpg
echo file erased
