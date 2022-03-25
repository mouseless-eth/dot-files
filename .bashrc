#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='$(
# 1red 2green 3brown 4blue 5purple 6cyan 7green
c1=5        # color of \u and \h 
c2=2        # color of \w
t=40        # threshold for selecting prompt
pr="${debian_chroot:+($debian_chroot)}\[\033[01;3$c1 m\]\u\[\033[01;34m\]@\[\033[00;3$c1 m\]\h\[\033[01;34m\]:\[\033[00;3$c2 m\]\w"
if [ $(($(tput cols)-$(pwd|sed -e "s/\/home\/.*\/?/~/g"|wc -c))) -lt $((t)) ]; then
    echo "\r\[\033[01;34m\]┌["$pr"\[\033[01;34m\]]\n\[\033[01;34m\]└>\[\033[00m " 
else echo "\r "$pr"\[\033[01;34m\]>\[\033[00m "
fi)'


# Alias for dotfile management
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Spawning new terminal in same current working directory
# Commands to be executed before the prompt is displayed
# Save current working dir
PROMPT_COMMAND='pwd > "${HOME}/.cwd"'

# Change to saved working dir
[[ -f "${HOME}/.cwd"  ]] && cd "$(< ${HOME}/.cwd)"
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=$PATH:~/.npm-global/bin
