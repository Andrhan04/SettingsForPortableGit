#!/bin/bash
DIR=\\PortableGit\\_home
AGRE=y
if [ -d "$DIR" ]; then
    read -p "Ситраю нахер?[y/n]: " par
    if [[ "$par" =~ $AGRE ]]; then
    rm -r \\PortableGit\\_home 
    mkdir \\PortableGit\\_home \\PortableGit\\_home\\_repos \\PortableGit\\_home\\ssh_keys
    else echo "$DIR does exist."
    fi
else
    mkdir \\PortableGit\\_home \\PortableGit\\_home\\_repos \\PortableGit\\_home\\ssh_key
fi

file_a=_user_settings.sh
file_b=PortableGit\\etc\\profile.d\\_user_settings.sh

if [ -f $file_b ];then
    if cmp -s $file_a $file_b ; 
    then echo Same 
    else 
        read -p "Ситраю нахер?[y/n]: " par
        if [[ "$par" =~ $AGRE ]]; then
            rm -r \\PortableGit\\etc\\profile.d\\_user_settings.sh
            cp _user_settings.sh  \\PortableGit\\etc\\profile.d\\_user_settings.sh 

        else echo "Ну и иди нафиг"
        fi
    fi
else
    cp _user_settings.sh \\PortableGit\\etc\\profile.d\\
fi