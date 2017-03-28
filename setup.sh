#!/bin/bash
CYAN='\033[1;36m'
PURPLE='\033[1;35m'
WHITE='\033[0;37m'
YELLOW='\033[1;33m'

echo -e "${PURPLE}Installing tmux...${YELLOW}"
ln -s ~/.tmux/tmux.conf ~/tmux

if [ "$?" -ne "0" ]; then
  echo -e "${PURPLE}~/tmux already exists, removing..."
  rm ~/.tmux.conf
  ln -s ~/.tmux/tmux.conf ~/tmux
fi

echo -e "${PURPLE}Setting tmux source...${WHITE}"
tmux source-file ~/.tmux.conf > /dev/null
echo -e "${CYAN}Success!${WHITE}"
