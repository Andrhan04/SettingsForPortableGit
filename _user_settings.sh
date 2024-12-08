# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
#alias vim='nano'
HOME='_home'
HISTFILE='./_home/.bash_history'

eval "$(ssh-agent -s)"

for file in _home/ssh_keys/*
do
  echo $file
  if [ -f "$file" ]
  then
    if [[ $file != *.pub ]]
    then ssh-add $file
    fi
  fi
done
