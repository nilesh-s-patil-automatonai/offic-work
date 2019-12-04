#!/bin/bash
echo "No. of host connected "
sudo nmap -sn 192.168.0.1/24

echo "hardware configuration of hosts:"
echo "printing to file ..."

list=(192.168.0.57 192.168.0.56 )
for a in "${list[@]}"
do	
	echo $a':'
	
	ssh -t test@$a "df /dev/nvme0n1p2* -h && exit "
	
	echo 
done > /home/automatonai-pcnp2/Desktop/host.txt


echo "192.168.0.167:" >> /home/automatonai-pcnp2/Desktop/host.txt	 
df /dev/nvme0n1p2* -h >> /home/automatonai-pcnp2/Desktop/host.txt

