# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -z $XDG_CONFIG_HOME ]] && export XDG_CONFIG_HOME="$HOME/.config"
alias gufeng='find /media/others/KuGou/古风/| grep mp3 | shuf > /tmp/mp3.lst;mpv --playlist=/tmp/mp3.lst'
alias zh='LANG=zh_CN.UTF-8'
alias en='LANG=en_US.UTF-8'
alias kugou='find /media/others/KuGou/| grep mp3 | shuf > /tmp/mp3.lst;mpv --playlist=/tmp/mp3.lst'
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias ll='ls -al'
alias ls='ls --color=auto'
alias liuxing="find /media/others/KuGou/流行/| grep mp3 | shuf > /tmp/mp3.lst;mpv --playlist=/tmp/mp3.lst"
alias chenyixun='find /media/others/陈奕迅无损/ | shuf > /tmp/mp3.lst;mpv --playlist=/tmp/mp3.lst'
alias volume="amixer -D pulse set Master"
alias closescreen="xrandr --output LVDS1 --off"
alias openscreen="xrandr --output LVDS1 --mode 1366x768 --right-of HDMI1"
alias closescreen2="xrandr --output HDMI1 --off"
alias openscreen2="xrandr --output HDMI1 --mode 1920x1080 --left-of LVDS1"
alias rsmv="rsync -ahP --remove-source-files"
alias rscp="rsync -ahP"
alias screenbg="find /home/kerwin/screen/ | shuf | head -1 | xargs -I{} feh --bg-scale {}"
alias i3lock="i3lock -c 000000"
alias vi="vim"
alias closetauchpad="synclient TouchpadOff=1"
alias y="yaourt"
alias yr="yaourt -R"
alias ys="yaourt -S"
alias gv="gvim"
alias tintingbk="luit -x -encoding gbk tintin"
alias t++="luit -x -encoding gbk tintin"
alias -s html=vi   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=vi     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vim       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vim
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias tmuxa='tmux attach'
export TERM="screen-256color"
#export PATH=$PATH:/home/kerwin/bin:/home/kerwin/android-sdk-linux/platform-tools:/home/kerwin/hackapk/jd-gui


export JAVA_HOME=/home/kerwin/jdk
export EDITOR="vim"
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
export NVM_DIR="/home/kerwin/.nvm"
 export ANDROID_HOME=/home/kerwin/adt-bundle/sdk/
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
                                                                     
#修改caps=enter
#if [ `xmodmap | grep -c Caps` = 1 ];then
#xmodmap -e "remove Lock = Caps_Lock"
#xmodmap -e "keysym Caps_Lock = KP_Enter"
#fi
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line      # [Home] - Go to beginning of line
fi
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}"  end-of-line            # [End] - Go to end of line
fi


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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/kerwin/.sdkman"
[[ -s "/home/kerwin/.sdkman/bin/sdkman-init.sh" ]] && source "/home/kerwin/.sdkman/bin/sdkman-init.sh"
