ZSHRC_BEFORE_LOCAL="$HOME/.zshrc.before.local"
ZSHRC_FINAL_LOCAL="$HOME/.zshrc.final.local"

[ -f "$ZSHRC_BEFORE_LOCAL" ] && source "$ZSHRC_BEFORE_LOCAL"
# Default Path to oh-my-zsh installation.
[ -z "$ZSH" ] && export ZSH="/usr/share/oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git autojump)

# User configuration
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8

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

#autoload -U compinit promptinit
#compinit
#promptinit; prompt gentoo

zstyle ':completion::complete:*' use-cache 1
setopt extendedglob

LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:*.tar=00;38;5;61:*.tgz=00;38;5;61:*.arj=00;38;5;61:*.taz=00;38;5;61:*.lzh=00;38;5;61:*.lzma=00;38;5;61:*.tlz=00;38;5;61:*.txz=00;38;5;61:*.zip=00;38;5;61:*.z=00;38;5;61:*.Z=00;38;5;61:*.dz=00;38;5;61:*.gz=00;38;5;61:*.lz=00;38;5;61:*.xz=00;38;5;61:*.bz2=00;38;5;61:*.bz=00;38;5;61:*.tbz=00;38;5;61:*.tbz2=00;38;5;61:*.tz=00;38;5;61:*.deb=00;38;5;61:*.rpm=00;38;5;61:*.jar=00;38;5;61:*.rar=00;38;5;61:*.ace=00;38;5;61:*.zoo=00;38;5;61:*.cpio=00;38;5;61:*.7z=00;38;5;61:*.rz=00;38;5;61:*.apk=00;38;5;61:*.gem=00;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.PNG=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=00;38;5;245:*.rdf=00;38;5;245:*.owl=00;38;5;245:*.n3=00;38;5;245:*.ttl=00;38;5;245:*.nt=00;38;5;245:*.torrent=00;38;5;245:*.xml=00;38;5;245:*Makefile=00;38;5;245:*Rakefile=00;38;5;245:*Dockerfile=00;38;5;245:*build.xml=00;38;5;245:*rc=00;38;5;245:*1=00;38;5;245:*.nfo=00;38;5;245:*README=00;38;5;245:*README.txt=00;38;5;245:*readme.txt=00;38;5;245:*.md=00;38;5;245:*README.markdown=00;38;5;245:*.ini=00;38;5;245:*.yml=00;38;5;245:*.cfg=00;38;5;245:*.conf=00;38;5;245:*.c=00;38;5;245:*.cpp=00;38;5;245:*.cc=00;38;5;245:*.sqlite=00;38;5;245:*.go=00;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.lof=00;38;5;240:*.lol=00;38;5;240:*.lot=00;38;5;240:*.out=00;38;5;240:*.toc=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=00;38;5;166:*.MOV=00;38;5;166:*.mpg=00;38;5;166:*.mpeg=00;38;5;166:*.m2v=00;38;5;166:*.mkv=00;38;5;166:*.ogm=00;38;5;166:*.mp4=00;38;5;166:*.m4v=00;38;5;166:*.mp4v=00;38;5;166:*.vob=00;38;5;166:*.qt=00;38;5;166:*.nuv=00;38;5;166:*.wmv=00;38;5;166:*.asf=00;38;5;166:*.rm=00;38;5;166:*.rmvb=00;38;5;166:*.flc=00;38;5;166:*.avi=00;38;5;166:*.fli=00;38;5;166:*.flv=00;38;5;166:*.gl=00;38;5;166:*.m2ts=00;38;5;166:*.divx=00;38;5;166:*.webm=00;38;5;166:*.axv=00;38;5;166:*.anx=00;38;5;166:*.ogv=00;38;5;166:*.ogx=00;38;5;166:';
export LS_COLORS

#PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%} '

alias off='systemctl poweroff'
alias 00='asdbg ~/.config/awesome/rc.lua.oauhix'
alias sc='systemctl'
alias es='eselect'
alias vii='MYCOMPLETE="youcompleteme" vim'
alias vigrc='vi ~/.local/goagent/local/proxy.user.ini'
alias avd1='emulator @avd1 -qemu -m 2048 -enable-kvm &'
alias cateflog='tail -f /var/log/emerge-fetch.log'
alias asrc='vi ~/.config/awesome/rc.lua'
alias fq='ssh -qTfnCN -D 8888 -i ~/.ssh/amazone2.pem ubuntu@54.187.137.113 &'
alias rnet='wpa_cli reconnect'
alias lhand='xmodmap -e "pointer = 3 2 1"'
alias rhand='xmodmap -e "pointer = 1 2 3"'
alias telocd='telnet localhost 4444'
alias cmocd='ocd /usr/share/openocd/scripts/interface/cmsis-dap.cfg /usr/share/openocd/scripts/board/stm3210e_eval.cfg'
alias adb='arm-none-eabi-gdb -x gdbscript'
alias mkcs='find `pwd` -name "*.c" -o -name "*.h" > cscope.files && cscope -Rbq'
alias wk='vi -c VimwikiIndex'
alias dr='vi -c VimwikiMakeDiaryNote'
alias f='locate'
alias v='vifm .'
alias aon='go-mtpfs ~/s5'
alias aoff='fusermount -u ~/s5'

#为vimwiki抓图
zt() {
    echo -n 'Please capture picture using mouse...' 
    picfile=`scrot -s -q 100 -e 'echo $f'`
    echo "done."
    sxiv $picfile >/dev/null 2>&1
    echo -n 'Are you sure use this picture? [y|n]' 
    read affirm
    if [ $affirm = "y" ]; then
        mv $picfile ~/Dropbox/vimwiki/html/images/
        echo "{{local:html/images/$picfile}}"
    else
        rm $picfile
        return 0
    fi
}

#之所以写为函数是因为alias uz=‘unzip -O GBK'不能TAB补全文件名，不知为何？
uz() {
    unzip -O GBK  $1
}

#双向增量备份文件夹，待完善参数判定和说明
#使用方法: isync dir1 dir2
#不要求两文件后是否有'/'
isync() {
    if [ $# -ne 2 ]; then
        echo "Usage: $0 dir1 dir2"
        echo "Synchronize: dir1 <=> dir2"
        return 1
    fi

    rsync -r --size-only $1/ $2/
    rsync -r --size-only $1/ $1/
}

vsync(){
    if [ $# -ne 2 ]; then
        echo "Usage: $0 dir1 dir2"
        echo "Preview synchronize: dir1 <=> dir2"
        return 1
    fi

    echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    rsync -rvn --size-only $1/ $2/
    echo "\n\n<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    rsync -rvn --size-only $2/ $1/
}

ocd(){
    local OCDP_P1=${1:-"interface/ftdi/jtagkey.cfg"}
    local OCDP_P2=${2:-"board/stm3210c_eval.cfg"}
    local OCDP_P3=${3:-""}
    local ocdcmd="openocd "
    ocdcmd=$ocdcmd${OCDP_P1:+"-f ${OCDP_P1} "}${OCDP_P2:+"-f ${OCDP_P2} "}${OCDP_P3:+"-f ${OCDP_P3} "}
    if [[ -e ~/.openocd.cfg ]]; then
        ocdcmd=$ocdcmd"-f ~/.openocd.cfg "
    fi
    if [[ -e .openocd.cfg && `pwd` != ~ ]]; then
        ocdcmd=$ocdcmd"-f .openocd.cfg "
    fi
    echo "> "$ocdcmd"\n"
    eval $ocdcmd

}

ocdd() {
    killall openocd > /dev/null 2>&1
    ocd > /dev/null 2>&1 &
    sleep 1 && telnet localhost 4444
}

mkst(){
    if [ $# -ne 1 ]; then
        echo "Usage: $0 <prjname>"
        return 1
    fi

    mkdir -p $1
    git archive --remote ~/Nutstore/myrepo/sttmp.git master | tar xC $1

}

[ -f "$ZSHRC_FINAL_LOCAL" ] && source "$ZSHRC_FINAL_LOCAL"
