#chamrousse.sh
#!/bin/bash

OPTIONS='-q 100 -t 500 -w 1280 -h 768 -x'
DATE=$(date +"%d/%m/%Y")
HOUR=$(date +"%R")

raspistill -o powdercam.jpg $OPTIONS
echo picture taken
 for file in powdercam.jpg ; do
  composite -gravity Center mockup.png "${file}" "${file}"
  convert "${file}" -fill black -respect-parenthesis \
  -font Roboto-Bold -pointsize 25 -gravity NorthWest -annotate +30+10 $DATE \
  -font Roboto-Bold -pointsize 25 -gravity NorthEast -annotate +30+10 $HOUR \
  "${file}"
  echo webcam shot enhanced
done
