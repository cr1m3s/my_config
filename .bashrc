# User specific environment and startup programs
if ! [[ "$PATH" == "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Colors setup for man
export LESS="--RAW-CONTROL-CHARS"
export TERM=xterm-256color
export DISPLAY=":0.0"
export EDITOR=vim
export VISUAL=vim

#[[ -f ~/.config/LESS_TERMCAP ]] && . /home/oleksii/.config/LESS_TERMCAP

#force_color_promt=yes

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "

#export LS_COLORS=$(vivid generate snazzy)
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
alias grep="grep --color"
alias my_comp="gcc --save-temps"
alias git_log='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias types="cat ~/.types"
alias sound="alsamixer"
alias microphone="pavucontrol"
alias engeto="sshpass -p 9048202481 ssh parioleks-gmail.com@engeto.com"
alias ssdtest="sudo smartctl -t long -a /dev/sda"
alias ramspeed="sudo dmidecode --type 17"
alias gitu="git add . && git commit && git push"
alias recvid="ffmpeg -video_size 1366x768 -framerate 25 -f x11grab -i :0.0+0,0 output.mp4"
alias syserrors="sudo journalctl -p 3 -xb"
alias sysderrors="sudo systemctl --failed"
alias vimpluginstall="vim +':PlugInstall' +':q!' +':q!'"
alias tmux="export TERM=screen-256color tmux"
#alias termdump="du -sh ./* > /home/oleksii/.my_dumps/dmp"${PWD##*/}""
alias beep_mute="xset -b"
alias kali_qemu="qemu-system-x86_64 -hda kali.qcow -boot c -m 1024  2>&1
--enable-kvm | tee kali.log"
alias cubemx="/home/oleksii/STM32CubeMX/STM32CubeMX"
alias ligism="java -jar /home/oleksii/code/logic_sim/logisim-generic-2.7.1.jar"
alias temp_gpu="watch -n 2 sensors"
alias kali="qemu-system-x86_64 -hda /home/oleksii/kali.qcow -boot c -m 1024 --enable-kvm"
alias prettier="npx prettier --write *.html"

function extract
{
        if [ -f "$1" ] ; then
                case $1 in
                        *.tar.bz2) tar xvjf $1 ;;
                        *.tar.gz) tar xvzf $1 ;;
                        *.bz2) bunzip2 $1 ;;
                        *.rar) unrar x $1 ;;
                        *.gz) gunzip $1 ;;
                        *.tar) tar xvf $1 ;;
                        *.tbz2) tar xvfj $1 ;;
                        *.tgz) tar xvzf $1 ;;
                        *.zip) unzip $1 ;;
                        *.Z) uncompress $1 ;;
                        *.7z) 7z x $1 ;;
                        *) echo "'$1' cannot be extracted via >extract<"
                                ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}
