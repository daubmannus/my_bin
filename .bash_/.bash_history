rm baz
tar tvf foo.tar 
tar xvf foo.tar -C here
md here
tar xvf foo.tar -C here
tree here
md there
tar xvf foo.tar -C there/ --strip-components=1
tree there
tar xv foo.tar | tar czvf fooz.tar 
tar xv foo.tar
tar x0vf foo.tar | tar czvf fooz.tar 
tar x0f foo.tar | tar czvf fooz.tar 
tar x0f foo.tar
tar x0zf foo.tar
tar -x0zf foo.tar
tar xOzf foo.tar | tar czvf fooz.tar 
tar xOzf foo.tar 
tar xOf foo.tar | tar czvf fooz.tar 
tar xOf foo.tar 
ll
tar --help
tar --help | grep '-i'
tar --help | grep -w '-i'
tar --help | grep -F '-i'
tar --help | grep -F \\-i
tar --help | grep -F \\-o
tar --help | grep \\-o
tar --help | grep \\-i
gzip --help | grep \\-k
gzip -k foo.tar 
ll
rm -rf *ere
ll
md t
mv t foo
l
tar xvf foo.tar -C foo
l foo
md z
tar xvf foo.tar.gz -C z
cat z
l z
l
tar czvf fooz.tar foo/*
ll
rm -rf z/*
l
tar xvf fooz.tar -C z
l tar z
l
rm -rf z/*
rm fooz.tar 
tar czvf fooz.tar foo/* --strip-components=1
tar tvf fooz.tar 
rm fooz.tar 
l
l z
l z/
tar czvf fooz.tar -C foo
tar czvf fooz.tar foo/* -C foo
rm fooz.tar 
tar -C foo czvf fooz.tar foo/*
tar -C foo -czvf fooz.tar foo
tar -C foo -czvf fooz.tar foo/*
tree foo
tar -C foo -cvf fooz.tar foo/*
tar -C foo -cvf fooz.tar *
tar -C foo/ -cvf fooz.tar foo
tar -C foo/ -cvf fooz.tar *
tar -C "$(pwd)foo/" -cvf fooz.tar *
tar -C "$(pwd)/foo/" -cvf fooz.tar *
tar -C "$(pwd)/foo/" -cvf ../fooz.tar *
tar -C "$(pwd)/foo/" -cvf ../fooz.tar ./*
tar -C "$(pwd)/foo/" -cvf ../fooz.tar foo
tar -C "$(pwd)/foo/" -cvf ../fooz.tar ./*
tar --help | grep \\-T
l
tar tvf fooz.tar 
rm fooz.tar
tar --help | less
man tar
tar tvf fooz.tar 
l
l foo
tar -C foo/ cvf fooz.tar foo/*
tar cvf fooz.tar foo/* -C foo/
rm fooz.tar 
tar -C foo/ -cvf fooz.tar foo/*
l
rm fooz.tar 
tar -C foo/ -cvf fooz.tar *
tar -C foo/ -cvf fooz.tar "$(pwd)/*"
tar -C foo/ -cvf fooz.tar *

tar -C foo/ -cvf fooz.tar foo/*
tar -C foo/ -cvf fooz.tar ../foo/*
cd foo
tar czvf ../fooz.tar *
cd ..
ll
tar -cvf fooz.tar -C foo/ .
tar tvf fooz.tar 
tar cvf fooz.tar -C foo/ .
tar cvf fooz.tar -C foo/ *
tar cvf fooz.tar -C foo/ ./*
tar cvf fooz.tar -C foo/ .
tar cvf fooz.tar -C foo .
lsblk
ll
tar czvf fooz.tar -C foo .
ll
ssh ganka
ping 10.10.10.1
ssh oraa
ssh ora
cd bkp
cd bin
npp olr
bkp olr
stat olr --format=%y
man stat
stat olr --format=@%Y %y
stat olr --format="@%Y %y"
stat olr --format='@%Y %y"'
man stat
stat olr --format='@%.Y %y"'
stat olr --format='@%.Y %y'
stat olr --format="@%.Y %y"
olr olr
olr olr
l
olr ord
olr ./ord
olr ord*
olr .
olr .
olr .
l orl*
l olr*
rm olr.bkp1725190914~ 
bkp olr
npp olr
cd ../test/dir
cd ..
tree dir
cd dir/slnks/
olr *
olr *
olr trg\ f
ll 
touch trg\ f
ll 
rm trg\ f 
ll
olr
olr *
ll *
cd slnks/
ll
olr 
olr 
olr /dev
olr /dev
stat sr0
stat /dev/sr0
stat /dev/sr0
olr /dev
olr /dev
olr /dev
cd ../..
find -name "*fifo*"
cd fifo
ll
olr fiifoo 
stat fiifoo 
stat fiifoo 
olr fiifoo 
cd ../socket/
ll
olr my_socket 
cd ~/.bin
cd ~/bin
olr .
rm olr.*
git add olr
git commit
git push
git checkout master
git cherry-pick a89f26f
git status
git push
git checkout tpad
wol u
ssh urs
ping 192.168.3.220
ping 192.168.3.220
ssh urs
ytdl -F https://www.youtube.com/watch?v=0ukySZpM4FY
ytdl -f 232+140 https://www.youtube.com/watch?v=0ukySZpM4FY
ytdl -F https://www.youtube.com/watch?v=mRXq9M_mQug
ytdl -f 140 https://www.youtube.com/watch?v=mRXq9M_mQug
md5l
ssh ganka
ssh ora2
md5lr
md5lr
md5l
echo $((45+189+14))
echo '3/2' | bc
cd test/%dev%sdx/tar_sandbox/
l
e aaz 
e baz 
vim -o aaz baz 
vim -O aaz baz 
vim -O aaz baz 
cd ~/test
e ~/.bash_functions 
. ~/.bash_functions
mkcd vim_sandbox
echo -e "asdf\nbcv\ncvxz" >foo
sort foo >bar
vimdiff foo bar
vimdiff foo bar
vimdiff foo bar
vimdiff foo bar
vimdiff foo bar
vimdiff foo bar
ping 10.10.10.1
e foo
cd test/tar/
l
la
l test
l ..
find .. -name "%*"
cd ../%dev%sdx/
l
cd tar_sandbox/
l
cd test
md compbin
echo foo >foo
echo barfoobar >bar
cmp -l foo bar
xxd foo
xxd --help
xxd -o foo
xxd -o off foo
xxd foo
xxd -ps foo
diff <(xxd -ps foo) <(xxd -ps bar)
xxd --help
xxd -i foo
xxd -R always foo
xxd foo
dd if=/dev/urandom of=1Mb.rnd count=1048576
stat 1Mb.rnd 
du 1Mb.rnd 
du -h 1Mb.rnd 
dd if=/dev/urandom of=1Mb.rnd bs=1024 count=1024
du -h 1Mb.rnd 
stat 1Mb.rnd 
l
mv 1Mb.rnd compbin/
cd compbin/
l
hibi 1048576
git pull

l
hibi 1048576
l
cat 1Mb.rnd 1Mb.rnd 1Mb.rnd >3x1Mb
du 3x1Mb 
du -h 3x1Mb 
du -b 3x1Mb 
hibi 3145728
l
xxd 1Mb.rnd | head
od -hca 1Mb.rnd | head
od -t x1 -ac 1Mb.rnd | head
xxd --help
xxd -b 1Mb.rnd | head
xxd -c 1 1Mb.rnd | head
xxd --help
echo aaa >foo
cat foo foo foo >bar
cat bar
diff foo bar
vimdiff foo bar
diff 1Mb.rnd 3x1Mb 
diff <(xxd -c 1 1Mb.rnd) <(xxd -c 1 3x1Mb)
vimdiff <(xxd -c 1 1Mb.rnd) <(xxd -c 1 3x1Mb)
ping 1.1.1.1
ping 1.1.1.1
ping 1.1.1.1
cp .bash_functions .bash_functions_cygwin
e .bash_functions_cygwin
e .bash_functions
hi
e .bash_functions_cygwin 
e .bash_functions
e .bash_aliases 
ll
stat _vimrc 
stat _vim*
gvim
e .bash_aliases 
. .bash_aliases
gvim
e .bash_aliases 
. .bash_aliases
e .bash_functions
. .bash_functions
e .bash_functions_cygwin 
echo $VIMRUNTIME
e .bash_functions_cygwin 
. .bash_functions_cygwin
e .bash_functions_cygwin 
. .bash_functions_cygwin
e .bash_functions_cygwin 
. .bash_functions_cygwin
e .bash_functions_cygwin 
npp .bash_functions_cygwin
. .bash_functions_cygwin
. .bash_functions_cygwin
hi
. .bash_functions_cygwin
which gvim
agwim
agvim
. .bash_functions_cygwin
. .bash_functions_cygwin
alias gvim
e .bash_aliases 
unulias gvim
unalias gvim
. .bash_functions_cygwin
. .bash_functions_cygwin
gvim
. .bash_functions_cygwin
gvim
pwd
. .bash_functions_cygwin
gvim
. .bash_functions_cygwin
gvim
gvim test/vim_sandbox/
eho ho> test/vim_sandbox/baz
echo ho> test/vim_sandbox/baz
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
pwd
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim test/vim_sandbox/baz
gvim 
. .bash_functions_cygwin
gvim 
gvim test/vim_sandbox/baz
gvim 
. .bash_functions_cygwin
gvim 
gvim test/vim_sandbox/baz
. .bash_functions_cygwin
gvim 
gvim 
gvim 
gvim 
gvim 
e .bashrc
gvim notes/vim.notes 
vim
e .vimrc
echo \e[4?h
vim
e .vimrc
l
man bash
man bash
man mintty
v .bash_aliases 
runx && xterm
runx && DISPLAY=:0.0 xterm
runx && DISPLAY=:0.0 xterm
man xterm
alias runx
ll
ll
ll
ll
ll
ll
ll
ll
ll
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
runx && DISPLAY=:0.0 xterm
e .Xdefaults
runx && DISPLAY=:0.0 xterm
e .Xdefaults
e .Xdefaults
e .bash_aliases 
. .bash_aliases
xterm
e .bash_aliases 
e
cd test/vim_sandbox/
l
e foo
e foo
gvim foo
ping 10.10.10.1
route print
route delete 10.10.10.1
route -p add 10.10.10.1 mask 255.255.255.0 172.27.204.1 metric 1 if 44
ping 10.10.10.1
ping 10.10.10.1
ping 10.10.10.1
cd bin
git status
v olr
npp olr
git branch master
git checkout master
git status
git fetch
git status
npp olr
git checkout tpad
ssh ganka
diff desert desert2
diff desert.vim desert2.vim 
e .vimrc
v .vimrc
echo $((7%2))
echo $((7%3))
echo $((425%115))
echo $((425%110))
echo $((425%28))
echo $((350%115))
echo $((350%110))
echo $((425/2))
echo $((425/28))
echo $((350/115))
echo $((15*3))
echo $((45*2.5))
echo '45*2.5' | bc
ssh ganka
cd test
ll
find 1Gb
find -name="*1Gb*"
find -iname="*1Gb*"
find . -iname="*1Gb*"
find . -name="*tar*"
find -name="*tar*"
find --help
find -name "*tar*"
find -iname "*1Gb*"
cd tar/
l
dd if=/dev/urandom of=1Gb bs=1024K count=1024 status=progress
du -b 1Gb 
pv 1Gb | gzip >1Gb.gz
rm 1Gb.gz
man pv
wol u
ssh urs
hibi 22842920960
ipconfig /all | grep 192.168.3
ipconfig /all | less
