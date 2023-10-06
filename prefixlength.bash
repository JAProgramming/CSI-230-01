# /bin/bash

ip=$(bash myfullip.bash | cut -d'/' -f2)

echo "${ip}"
