# /bin/bash

while read -r line;
 do
ping -c 1 $line | grep "64 bytes" | cut -d " " -f4 | tr -d ":" >> activehosts.txt
done < possibleips.txt
	

