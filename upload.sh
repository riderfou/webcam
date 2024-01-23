echo uploading powdercam image on ftp
ncftpput -S .tmp -u username -p pwd  ftp.domain.tld / /home/jerome/webcam/powdercam.jpg
echo powdercam image uploaded

echo creating tmp local archive image
mv /home/jerome/webcam/powdercam.jpg /home/jerome/webcam/$(date +%Y%m%d-%H%M).jpg
echo tmp local archive image created

echo archiving previous powdercam image on ftp
ncftpput -u username -p pwd  ftp.domain.tld /archive /home/jerome/webcam/*.jpg
echo previous powdercam image archived

echo erasing local file
rm *.jpg
echo local file erased
