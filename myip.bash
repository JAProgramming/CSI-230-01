# /bin/bash

ip=$(bash myfullip.bash | cut -d'/' -f1) 

echo "${ip}"
