#!/bin/bash
cd ..
DIR=\\PortableGit\\_home
REP=$DIR\\_repos
SSH_K=$DIR\\ssh_keys
AGRE=y
if [ -d "$DIR" ]; then
    read -p "Есть $DIR . Перезаписать нахер?[y/n]: " par
    if [[ "$par" =~ $AGRE ]]; then
    rm -r \\PortableGit\\_home 
    mkdir $DIR $REP $SSH_K
    echo $DIR " Было перезприсан"
    echo $REP " Было перезприсан"
    echo $SSH_K " Было перезприсан"
    else echo "$DIR существует"
    fi
else
    mkdir $DIR $REP $SSH_K
    echo $DIR " Было создано"
    echo $REP " Было создано"
    echo $SSH_K " Было создано"
fi

file_Myconf=_user_settings.sh
file_In_Directory=PortableGit\\etc\\profile.d\\

if [ -f $file_In_Directory$file_Myconf ];then
    if cmp -s $file_Myconf  $file_In_Directory$file_Myconf ; 
    then echo "Файлы $file_Myconf и $file_In_Directory$file_Myconf одинаковы" 
    else 
        read -p "Перезаписать файл? $file_In_Directory$file_Myconf [y/n]: " par
        if [[ "$par" =~ $AGRE ]]; then
            rm -r \\PortableGit\\etc\\profile.d\\_user_settings.sh
            cp _user_settings.sh  \\PortableGit\\etc\\profile.d\\_user_settings.sh 
            echo "Файл $file_In_Directory$file_Myconf был перезаписан"
        else echo $file_In_Directory$file_Myconf " был не тронут"
        fi
    fi
else
    cp $file_Myconf $file_In_Directory
    echo "Скопирован файл"
fi