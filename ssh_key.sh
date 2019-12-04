#!/bin/bash

echo "printing to file ..."
list=( 192.168.0.57 192.168.0.56)
for a in "${list[@]}"
do	
	ssh-copy-id -f'test@'$a''
	
done  > /home/automatonai-pcnp2/Desktop/ssh_key.txt



