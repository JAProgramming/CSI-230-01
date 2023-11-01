
# /bin/bash


function listIPs () {

cat /var/log/apache2/access.log | cut -d' ' -f1 | sort | uniq 
}

function visitors  () {

cat /var/log/apache2/access.log | cut -d' ' -f1 | sort | uniq -c | cut -d " " -f6,7,8
}

function badClients () {
rm blacklist.txt
visit=$(visitors)
num=$(echo "${visit}" | grep -o -E "[0-9]{1,2}[ ]")
ip=$(echo "${visit}" | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")
# get count from visit
  # check if it is bigger than 3
	if [[ "${num}" -gt "3" ]]
	then
        echo "${ip}" >> blacklist.txt
        fi
# if it is
# put ip in blacklist.txt
cat blacklist.txt
}

function histogram () {

nums=$(cat /var/log/apache2/access.log | grep " 200 " | grep "25/Oct" | cut -d' ' -f1 | sort | uniq -c | cut -d " " -f7)
echo ""${nums}" visits on 25/Oct/2023 "

}

function block () {

while IFS= read -r line
do
	 iptables -A INPUT -s " $line"
done < blacklist.txt

}

block

