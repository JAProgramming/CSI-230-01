#! /bin/bash

ip=$(bash myip.bash)

myip1=$(echo "${ip}" | cut -d'.' -f1)
#echo "${myip1}"
myip2=$(echo "${ip}" | cut -d'.' -f2)
#echo "${myip2}"
myip3=$(echo "${ip}" | cut -d'.' -f3)
#echo "${myip3}"
myip4=$(echo "${ip}" | cut -d'.' -f4)
#echo "${myip4}"

ip1binary=$(echo "obase=2;$myip1" | bc)
ip2binary=$(echo "obase=2;$myip2" | bc)
ip3binary=$(echo "obase=2;$myip3" | bc)
ip4binary=$(echo "obase=2;$myip4" | bc)
: '
echo "${ip1binary}"
echo "${ip2binary}"
echo "${ip3binary}"
echo "${ip4binary}"
'
echo "${ip1binary}""${ip2binary}""${ip3binary}""${ip4binary}"
