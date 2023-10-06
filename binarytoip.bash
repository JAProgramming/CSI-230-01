# /bin/bash

read network

myip1=$(echo "${network:0:8}")
myip2=$(echo "${network:9:8}")
myip3=$(echo "${network:17:8}")
myip4=$(echo "${network:25:8}")

ip1num=$((2#"${myip1}"))
ip2num=$((2#"${myip2}"))
ip3num=$((2#"${myip3}"))
ip4num=$((2#"${myip4}"))

echo "${ip1num}"."${ip2num}"."${ip3num}"."${ip4num}"
