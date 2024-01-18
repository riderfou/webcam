#powdercam.sh
#!/bin/bash

cd /home/pi/powdercam/
while [ 1 ]; do
 ./chamrousse.sh
 ./upload.sh
 echo waiting...
 sleep 60
done
