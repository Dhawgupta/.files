# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/dhawgupta/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# This is the old theme  that was used
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# added for the  shorter prompy by Dhawal on 26th October 2019
# I followed this link for thr power 9k elements 
#https://medium.com/@Clovis_app/configuration-of-a-beautiful-efficient-terminal-and-prompt-on-osx-in-7-minutes-827c29391961
#https://github.com/Powerlevel9k/powerlevel9k#available-prompt-segments this is the link for different prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda virtualenv context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
	
## Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’
#Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
bundler
dotenv
osx
rake
rbenv
ruby
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# added on 26th October 2019
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias dhawal9='ssh dhawal.cs15@172.16.26.9'
alias tulika35='ssh tulika@172.16.26.35'
alias conn_dhawal='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa dhawal.cs15@172.16.26.9:/home/stud/btech/cse/2015/dhawal.cs15 ~/Mounts/mnt1/ -o volname=dhawal'
alias conn_tulika9='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulika.pcs16@172.16.26.9:/home/Phd16/tulika.pcs16/ ~/Mounts/mnt2 -o volname=tulika9'
alias conn_tulika35='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulika@172.16.26.35:/home1/tulika/ ~/Mounts/mnt3 -o volname=tulika35'

alias conn_tulika35b='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulika@172.16.26.35:/home1/tulika/'
alias bigdata='ssh iitp@172.16.27.165'
alias tulika9='ssh tulika.pcs16@172.16.26.9'
alias conn_bigdata='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa iitp@172.16.27.165:/home/iitp ~/Mounts/BigData/'
alias conn_all='conn_dhawal; conn_tulika9; conn_tulika35; conn_bigdata'
alias dis_dhawal='sudo umount ~/Mounts/mnt1/'
alias dis_tulika9='sudo umount ~/Mounts/mnt2/'
alias dis_tulika35='sudo umount ~/Mounts/mnt3/'
alias dis_bigdata='sudo umount ~/Mounts/BigData'
alias dis_all='dis_dhawal; dis_tulika9; dis_tulika35; dis_bigdata'
# added by Anaconda3 5.2.0 installer
export SUMO_HOME="/usr/local/opt/sumo/share/sumo"
# export PATH="/Users/dhawgupta/anaconda3/bin:$PATH"  # commented out by conda initialize
alias tk1='ssh ubuntu@192.168.2.3'
alias conn_tk1='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa ubuntu@192.166.2.3:/home/ubuntu ~/Mounts/tk1/'
alias conn_web='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa dhawal.cs15@172.16.1.4:/home/stud/btech/cse/2015/dhawal.cs15 ~/Mounts/Website'
alias conn_w='/Users/dhawgupta/anaconda3/bin/python ~/signin.py'
alias sem8='cd ~/Desktop/Semester-8'/
alias btp='sem8 ;cd ./BTP/Codes/'
alias web='ssh dhawal.cs15@172.16.1.4'
alias takeupper='find . -mindepth 2 -type f -print -exec mv {} . \;'

export PATH=/Users/dhawgupta/opt/bin/:$PATH
plugins=(virtualenv)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENT=S(status virtualenv)
export PATH=/Users/dhawgupta/vcpkg/:$PATH
export PYTHONPATH=/Users/dhawgupta/pycolab/:$PYTHONPATH  # added on 2nd september for pycolab and ai safety gym world
export LD_LIBRARY_PATH=/usr/local/lib
alias clangmod="clang++ -I /usr/include -L /usr/lib"
alias clang-mlpack="clang++ -std=c++11 -O3  -I /usr/local/include -L ./  -L /usr/lib -L /usr/local/lib -lmlpack -larmadillo -lxml2 -lblas -llapack"
alias login="python ~/signin.py"

alias tulika40='ssh tulikapcs16@172.16.26.40'

alias conn_tulika40='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulikapcs16@172.16.26.40:/home/tulikapcs16 ~/Mounts/tulika40 -o volname=tulika40'
alias conn_cs551='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa cs551_group_03@172.16.26.40:/home/cs551_group_03 ~/Mounts/cs551 -o volname=cs551'

alias cs551='ssh cs551_group_03@172.16.26.40'

alias conn_cs551b='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa cs551_group_03@172.16.26.40:/home/cs551_group_03  -o volname=cs551'
alias google="googler --count 5"
alias z="vim ~/.zshrc"
alias s='source ~/.zshrc'
alias d='tmux attach -t dhawal'
alias createtmux='tmux new -s'
alias gpush='git add *; git commit -m "Automated Commit"; git push origin master' # this is to be used whrb need to do an uatomated commit and add all the files to teh master branch use casrefully 

alias conn_bonanza='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa dhawal@bonanza.cs.ualberta.ca:/cshome/dhawal ~/Mounts/bonanza/ -o volname=ualberta'


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dhawgupta/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dhawgupta/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dhawgupta/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dhawgupta/google-cloud-sdk/completion.zsh.inc'; fi
conda activate
# . /Users/dhawgupta/anaconda3/etc/profile.d/conda.sh  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dhawgupta/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dhawgupta/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dhawgupta/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dhawgupta/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

