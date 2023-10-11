# /bin/bash

cat access.log | cut -d' ' -f1 | sort | uniq -c 

