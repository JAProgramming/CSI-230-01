# /bin/bash

pl=$(bash prefixlength.bash)

submask=""
for i in {1..32};
do
	if [[ "${i}" -le "${pl}" ]]
	then
	submask="${submask}1"
	else
	submask="${submask}0"
	fi
done

echo "${submask}"
