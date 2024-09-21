alias sudo='sudo '

# Interactive operation...
alias rm='rm -i'
# cp: -d = --no-dereference --preserve=links
# cp: -T, --no-target-directory = treat DEST as a normal file
alias cp='cp -i'
alias mv='mv -i'

# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

# Some shortcuts for different directory listings
# alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'

alias ls='ls --color=auto'
# alias ll='ls -l'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias l.='ls -d .* --color=auto'
alias lli='ls -alFi'

alias scr='screen'

alias cx='chmod +x' 

alias e='vim'
alias v='vim -M'

alias r-sync='sudo rsync -avP --append --inplace'

alias 2diff='diff -yW $(($(tput cols)-2))'

alias wg++='PATH=/cygdrive/c/mingw/mingw64/bin/:''"'"$PATH"'"'' g++'

alias wget-dir='wget -r --no-parent --reject "index.html*" --user-agent="Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36"'

#alias ee='TERM=linux && ee'
alias ee='sbl'

alias he='hexedit'

alias basic='bwbasic'
alias bas='bwbasic'

alias md='mkdir'
alias ren='prename'
alias bkp='bkp.sh'
alias bkp-v='bkp-v.sh'
alias cd-up='. cd-up' # cd to parent dir of symlink's target
alias cd-to='. cd-to' # cd to THE dir of symlink's target 
alias md5='md5deep -r'
alias bcf='bc -l ~/.config/bcrc'
alias googler='BROWSER=links googler -n 5'
alias gclip_pwd='p="$(cygpath -w "$(pwd)")"; printf "%s" "${p%\\n}" | gclip'
alias gpwd='gclip_pwd'
alias ppwd='cygpath -m "$(pclip | perl -pe '"'"'s/^[\s]*"(.*)"[\s]*$/$1/'"'"')"'
alias pclip_cd='cd "$(ppwd)"'

# to highlight source
# (first apt-cyg install source-highlight)
# alias lessh='LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" less -M -R '
alias pless='LESSOPEN="| pygmentize -f terminal256 -O style=native -g %s" less -M -R '
alias less_='LESSOPEN="| pygmentize -f terminal256 -O style=native -g %s" less -M -R '
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias cat_="pygmentize -f terminal256 -O style=native -g"


# to run GUI applications
alias chrome='cygstart chrome'
alias firefox='cygstart firefox'

# ssh
alias ssh-nr='ssh root@192.168.1.200'
alias ssh-urs='ssh theo@192.168.1.220'
alias ssh-ganka='ssh ganka@192.168.1.147'
alias ssh-mimi='ssh theo@192.168.1.105'
alias ssh-nr-out='ssh ssh://root@212.80.57.11:200'
alias ssh-urs-out='ssh ssh://theo@212.80.57.11:220'
alias ssh-p='ssh pi@192.168.1.121'
alias ssh-rl='ssh vagrant@192.168.10.10'
alias ssh-tlx='ssh theo@192.168.1.135'
alias ssh-sp='ssh ssh://evg@92.244.99.142:22222'

alias ssh-nr-out='ssh root@212.80.57.11 -p 200'

#alias ssh-ora='ssh -F ~/.ssh/conf_ora -i ~/.ssh/keys/ssh-key-2022-05-25_oracle_daubmannus.key ubuntu@141.144.194.208'
#alias ssh-ora='ssh -F ~/.ssh/conf_ora -i ~/.ssh/keys/ssh-key-2022-03-01_oracle_daubmannus.key ubuntu@150.230.20.188'

# apache / httpd

alias httpd-start='/usr/sbin/httpd'
alias httpd-stop='kill -TERM `cat /var/run/httpd/httpd.pid`'
alias httpd-restart='kill -HUP `cat /var/run/httpd/httpd.pid`'
alias httpd-log='less /var/log/httpd/error_log'


# gvim
#alias gvim='HOME=/cygdrive/c/\!Portablez/gvim/gvim_9.1.0_x64_signed/vim/vim91/ cygstart /cygdrive/c/\!Portablez/gvim/gvim_9.1.0_x64_signed/vim/vim91/gvim.exe'

# X server
#alias runx='run xwin -multiwindow'
alias runx='ps aux | grep xwin >/dev/null || run xwin -multiwindow'

# gnuplot with X server
alias gnuplot='runx && gnuplot'

# viewer with X server
#alias feh='runx && sleep 1 && feh'

# xterm with X server
alias xterm='runx && DISPLAY=:0.0 xterm'

#alias cool-retro-term='ps aux | grep xwin >/dev/null || runx; ssh -Y theo@192.168.1.220 cool-retro-term &'
#alias cool-retro-term="XLaunch -run ~/cool-retro-term.config.xlaunch"


# ad hoc
alias cal='cal -m'

#alias cowsay-random='cowsay -f $(ls /usr/share/cowsay/cows/ | shuf -n1)'
alias cowsay-random='cowsay -f $(ls /usr/local/share/cows/ | shuf -n1)'

#alias ddos='docker run -d --rm alpine/bombardier -c 1000 -d 60000h -l '

alias wol='wol --cygwin'

alias mpv='/cygdrive/c/!Portablez/mpv/mpv-x86_64-20200621-git-dc24a43/mpv.exe'
#alias ytdl='youtube-dl'
alias ytdl='yt-dlp'
alias ytdl-srt='yt-dlp --skip-download --write-sub --write-auto-sub --sub-lang en --convert-subs srt'

alias gs='/cygdrive/c/Program\ Files/gs/gs9.56.1/bin/gswin64c -sFONTPATH="$WINDIR"/fonts -dEmbedAllFonts=true '

alias VBoxManage='/cygdrive/c/Program\ Files/Oracle/VirtualBox/VBoxManage.exe'

alias 2iB='numfmt --to=iec-i --suffix=B --format="%9.2f"'

alias mddate='( name="$(date +%Y-%m-%d_)" && mkdir $name && chown Administrators:None $name && chmod 775 $name )'

alias olr-t="sed 's/][^]].*$/]/'"

alias wttr='curl -H "Accept-Language: uk" wttr.in/50.424972,30.648194?M wttr.in/48.517408105680026,32.283590891512695?M wttr.in/48.866675471444076,31.634217359911574?M 2>/dev/null | less -RS'
#alias wttr='curl wttr.in/Kyiv wttr.in/50.424972,30.648194?M?T | less -S'
#alias wttr='curl wttr.in/50.424972,30.648194?M | less -SR'
alias wttr-='curl wttr.in/50.424972,30.648194?M'
alias wttr-m='curl wttr.in/moon'

alias npp='/mnt/c/\!Portablez/npp.8.6.9.portable.x64/notepad++.exe'
