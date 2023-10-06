# /bin/bash
echo Welcome to the ip menu
echo Please enter one of the following options
echo 1-Get my ip address
echo 2-Get my ip address binary
echo 3-Get my network mask binary
echo 4-Get my network address binary
echo 5-Convert a binary to ip address
echo 6-Quit
read ans

while [ "${ans}" != "6" ]
do
if [[ "${ans}" == "1" ]]
then
        ip=$(bash myip.bash)
        echo "${ip}"
elif [[ "${ans}" == "2" ]]
then
        ipbin=$(bash myipbinary.bash)
        echo "${ipbin}"
elif [[ "${ans}" == "3" ]]
then
        netbin=$(bash binarynetworkmask.bash)
        echo "${netbin}"
elif [[ "${ans}" == "4" ]]
then
        netaddress=$(bash mynetworkbinary.bash)
        echo "${netaddress}"
elif [[ "${ans}" == "5" ]]
then
        echo Please enter a 32 digit binary number
        ipbin=$(bash binarytoip.bash)
	echo "${ipbin}"

elif [[ "${ans}" == "6" ]]
then
        echo exiting....
else
        echo Invalid Number
fi

echo Welcome to the ip menu
echo Please enter one of the following options
echo 1-Get my ip address
echo 2-Get my ip address binary
echo 3-Get my network mask binary
echo 4-Get my network address binary
echo 5-Convert a binary to ip address
echo 6-Quit
read ans

done
