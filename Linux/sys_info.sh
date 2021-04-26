#!/bin/bash

mkdir ~/scripts && cp sys_info.sh ~/scripts
 
echo "A Quick System Audit Script" 
echo "3/3/2021"
echo "Machine Type Info:"  
echo $MATCHTYPE  
echo -e  "Uname Info: $(uname -a) \n"   
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" 
echo "Hostname: $(hostname)" 
echo "DNS Server:" 
cat  /etc/resolv.conf  
echo "Memory Info:"  
free  
echo -e "\nCPU Info:"
lscpu | grep CPU 
echo -e "\nDisk Usage:"
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n" 
echo -e "\n777 Files:" 
find / -type f -perm 777 
echo -e "\nTop 10 Processes " 
ps aux -m | awk '{print $1, $2, $3, $4, $11}' | head 


