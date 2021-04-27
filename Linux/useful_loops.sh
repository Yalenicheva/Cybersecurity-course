#!/bin/bash

#Define packages list
packages=(
   'nano'
   'wget'
   'net-tool'
)

# Loop through the list of packages and show if they are installed
for package in ${packages[@]};
do
    if [ $(which package) ]
    then
       echo "$package is installed at $(which $package)."
    else
       echo "$package is not installed."
    fi
done

 #Search each users' home directory for scripts and provide formatted output.
for user in $(ls /home);
do
    for item in $(find /home/$user  -iname '*.sh');
    do
        echo -e "Found a script in $user's home folder! \n$item"
    done
done

#Loop through scripts in a scripts folder and change the permittions to execute 
for script in $(ls ~/scripts);
do
    if [ ! -x ~/scripts/$script ]
    then
        chmod +x ~/scripts/$script
    fi
done

#Loop through a group of files and create a hash of each file
for file in $(ls ~/Documents/files_for_hashing/);
do
    sha256sum $file
done
