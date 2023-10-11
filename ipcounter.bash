# /bin/bash

network=$(bash mynetworkbinary.bash)


for i in {1..254}
do
	ibinary=$(echo "obase=2;$i" | bc)
	echo -n "${network}"
	printf '%08d\n' "${ibinary}"
done

