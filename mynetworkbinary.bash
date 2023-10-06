# /bin/bash

ip=$(bash myipbinary.bash)
pl=$(bash prefixlength.bash)
mask=$(bash binarynetworkmask.bash)

network=""

for i in {0..31}
do
	if [[ "${i}" -le "${pl}" && "${ip:$i:1}" -gt "0" ]]
	then
	 network="${network}1"
	else
	network="${network}0"
	fi

done
echo "${network}"
