#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PS1=$'\[\e[0;32m\]\[\e[1m\]\u\[\e[0m\]@\[\e[1m\]\h:\[\e[01;34m\]\w\[\e[0m\]\[\e[1m\] >>\[\e[0m\] '
complete -cf sudo
complete -cf man

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [[ $(tty) = /dev/tty2 ]]; then
clear
alias windows7='startx'
echo $'\e[01;36m[INFORMATION] \e[01;00mWindows 7 session has ended.\e[0m'
echo $'\e[01;36m[INFORMATION] \e[01;00mType startx to start a new session.\e[0m'
cd "VirtualBox VMs/Windows 7"
PS1=$'\[\e[0;31m\]\[\e[1m\]\u\[\e[0m\]@\[\e[1m\]\h:\[\e[01;34m\]\W\[\e[0m\]\[\e[1m\]\$ >>\[\e[0m\] '
fi
