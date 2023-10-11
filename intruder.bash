# bin/bash

for i in {0..20}
do
	echo Accessed: "${i}" times
	p=$(curl -s 192.168.145.132/helloworld.html)
done

