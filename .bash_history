bash dec-bin.sh 1011
bash dec-bin.sh 10111111
bash dec-bin.sh 101010101
vi file-exist.sh
ls
bash file-exist.sh linux.txt 
help test
bash file-exist.sh linux.txt ls
ls
ls l
ls -l
bash file-exist.sh func.sh 
bash file-exist.sh user.sh 
bash file-exist.sh uid.txt 
bash file-exist.sh text
ls -l
vi read-lines.sh
bash read-lines.sh 
vi read-lines.sh
bash read-lines.sh 
vi read-lines.sh
bash read-lines.sh 
vi read-lines.sh
bash read-lines.sh 
vi read-lines.sh
ls
cd shell-2
ls
cut -d ":" -f 3- /etc/passwd
cat /etc/passwd
cut -d ":" -f -3 /etc/passwd 
cut -d ":" -f -3 /etc/passwd | awk 'NR==1 {print $0}'
cut -d ":" -f -3 /etc/passwd | awk 'NR==1 {print $1}'
cut -d ":" -f -3 /etc/passwd | awk 'NR==1 {print $0}' | cut -d ":" -f 1 
cut -d ":" -f -3 /etc/passwd | awk 'NR==1,NR==2 {print $0}' | cut -d ":" -f 1 
cat /etc/passwd
awk '{print $1}' /etc/passwd
awk -F ":" '{print $1}' /etc/passwd
cd ..
ls
cd task/
ls
vi word-counter.sh 
vi word.sh 
ls
cd ..
ls
cd shell
ls
vi word-count.sh
bash word-count.sh linux.txt 
vi word-count.sh
bash word-count.sh 
bash word-count.sh app.txt
cd ..
ls
cd shell-2
ls
cd ..
mkdir assessment
cd assessment/
ls
vi word-counter.sh
ls
cd assessment/
ls
vi word-counter.sh 
ls
vi assessment/
cd assessment/
ls
vi word-counter.sh 
ls
vi hello.txt
bash word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
shellcheck word-counter.sh 
vi word-counter.sh 
shellcheck word-counter.sh 
vi word-counter.sh 
shellcheck word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
ls
vi words-count.sh
vi word-counter.sh 
ls
bash word-counter.sh hello.txt 
bash word-counter.sh 
bash word-counter.sh helldsfo.txt 
vi hello.txt 
bash word-counter.sh helldsfo.txt 
bash word-counter.sh hello.txt 
ls
vi word-counter.sh 
bash word-counter.sh hello.txt 
man read
read -h
man declare
declare -h
ls
vi read.sh
bash read.sh 
vi read.sh
bash read.sh 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
bash read.sh hello.txt 
vi read.sh
man tr
ls
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
ls
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
vi punc.sh
bash punc.sh 
ls
vi word-counter.sh 
ls
vi sumair.txt
bash word-counter.sh sumair.txt 
vi word-counter.sh 
bash word-counter.sh sumair.txt 
cd ..
ls
cd shell
ls
cat h
cat hello.txt 
cat hello.txt | tr '[:lower:]' '[:upper:]'
cd ..
ls
cd assessment/
ls
vi hello.txt 
bash word-counter.sh hello.txt 
vi word-counter.sh 
ls
vi punc.sh 
vi read.sh 
awk '{ count += NF } END {print count }' hello.txt 
awk '{ count += NF } END { print count }' hello.txt 
ls
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
man sort
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
bash read.sh hello.txt 
vi read.sh 
ls
mv read.sh sumair.txt punc.sh /home/sumair/shell
ls
vi word-counter.sh 
cd ..
cd shell
ls
vi read.sh 
bash read.sh hello.txt 
cd ..
ls
cd assessment/
ls
vi word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
ls
vi word-counter.sh 
bash word-counter.sh hello.txt 
vi word-counter.sh 
vi word.sh
ls
bash word.sh hello.txt 
vi hello.txt 
ls
$$
echo $$
echo $?
echo $@
echo $*
ls
cd shell-2/
ls
vi read-lines.sh
bash read-lines.sh 
vi read-lines.sh
bash read-lines.sh find-file.sh 
bash read-lines.sh col-awk.sh 
test help
help test
man basename
basename $0
man rpm
rpm man
rpm -h
ls
cat /etc/passwd >users.sh
vi users.sh
awk 'BEGIN { ORS ="-"} {print $0}' users.sh 
awk 'BEGIN { ORS ="-"} {print $1,$2}' users.sh 
awk -F ":" '{OFS=","} {print $1,$2,$3}' users.sh
awk -F ":" '{OFS=","} {print}' users.sh
awk -F ":" '{OFS=","} {print $0}' users.sh
awk -F ":" '{OFS=","} {print $NF}' users.sh
awk -F ":" '{OFS=","} {print $1,$2,$3,$4}' users.sh
set
echo $HOME
echo $w
echo $id
echo $EUID
echo $BASH
export sumair=DevOps Engineer
echo "$sumair"
export sumair=DevOps_Engineer
echo "$sumair"
set | grep "sumair"
set | grep "sumair" > set.txt
ls
cat set.txt 
export hello=world:hyd
echo "$hello"
ls -a
cat .bashrc 
ls
ls -a
vi .bashrc 
ls -a
vi .bashrc 
ls
ls -a
vi .bashrc 
ls
vi .bashrc 
ls
vi .bashrc 
ls -a
cd shell
la
cat case-var.sh 
cat word-count.sh 
s
ls
cat user
cat user.sh
cat set-pwd.sh 
ls
cd net-dir/
ls
cat dig.sh 
ls
cat port-nmap.sh 
cat ping.sh 
ls -a
cd -
cd ..
ls -a
vi .bashrc 
ls
echo $SHELL
su
sudo su varun
cat /etc/passwd
sudo su rahul
ls
ls -a
bash
bash
su sumair
sudo su rahul
ls
cd shell-2/
ls
vi inter.sh
ls -a
cd -
ls -a
vi .bashrc 
ls
ls -a
vi .profile 
ls -a
vi .bash_logout 
logout
vi .bash_profile 
ls -a
vi .bash_profile 
su rahul
su rahul
sudo su rahul
useradd varun
sudo useradd varun
sudo passwd varun
sudo su varun
visudo
sudo visudo
sudo su varun
ls -a
vi .bash_profile 
rm .bash_profile 
lsof -u sumair
lsof | wc -l
lsof | wc 
man lsof
lsof
lsof | wc -l
lsof | grep "sumair"
lsof | grep -o "sumair"
lsof | grep -c "sumair"
lsof | grep -w "sumair"
lsof | grep -w "sumair" | wc -l
lsof -u sumair
nmap
man nmap
netstat
telnet
man wc
lsof -i TCP:22
cat /etc/passwd
crontab
crontab -e
crontab -e
man crontab
man xargs
ls
echo "apple ball cat" | xargs echo "Fruits:"
ls | grep *.sh | xargs -I {} mv {} backup/{}
ls
grep backup
q
q
ls -1
ls -1 | args
ls -1 | xargs
cut -d: -f1 </etc/passwd 
cut -d: -f1 </etc/passwd | sort
cut -d: -f1 </etc/passwd | sort |xargs
ls "*.sh"
grep *.sh
grep "*.sh"
find . -name "*.sh"
pwd
ls -1 *.sh 
ls
cd shell
ls -l *.sh | xargs wc 
ls -1 *.sh | xargs wc 
ls -1 -n *.sh | xargs wc 
ls -1 *.sh | xargs wc 
ls
sort hello.txt 
sort linux.txt 
sort uid.txt 
sort -n hello.txt 
sort -r hello.txt 
ls -l
vi num.txt
sort -nk2 num.txt 
sort -k1 hello.txt 
sort -k1 num.txt 
vi num.txt 
sort -u num.txt 
cat /etc/passwd
sort -t ":" -k 2 /etc/passwd
sort -t ":" -k 2 /etc/passwd |  head
sort -t ":" -k 3 /etc/passwd |  head
ls
cat num.txt 
sort -t ' ' -k 2 num.txt 
sort -ut ' ' -k 2 num.txt 
sort -ut ' ' -k 1 num.txt 
vi num.txt 
uniq num.txt 
uniq num.txt 
uniq -c num.txt 
vi num.txt 
uniq -c num.txt 
man uniq
uniq -u num.txt 
benjiligeddam@gmail.com
benjiligeddam@gmail.com
su
ls -l
cat word-count.sh 
wc -n word-count.sh 
wc word-count.sh 
wc -l word-count.sh 
wc -w cou
wc -w word-count.sh 
wc -c word-count.sh 
wc -m word-count.sh 
vi tr
tr ":" " " < tr
tr " " ":" < tr
vi tr
tr "{}" "()" < tr
vi tr
tr -d "[:digit:]" < tr
tr -dsort -n numbers.txt "[:digit:]" < tr
sort -n numbers.txt
sort -n numbers.txt
sort -n numbers.txt
jenkins --version
jenkins --version
ls
vi hello.txt 
vi names.txt
uniq names.txt 
vi names.txt
uniq names.txt 
vi names.txt
cat names.txt 
cat names.txt 
uniq names.txt 
cat names.txt 
vi names.txt
uniq names.txt 
cat names.txt 
vi names.txt
uniq names.txt 
cat names.txt 
uniq -d names.txt 
uniq -c names.txt 
vi names.txt 
cat names.txt 
uniq names.txt 
sudo apt-get update -y
cat names.txt 
uniq names.txt 
ls
vi fun-cal.sh
bash fun-cal.sh 
hello
sudo hello
ls
vi fun-cal.sh 
vi fun-cal.sh 
hello
bash fun-cal.sh 
vi fun-cal.sh 
bash fun-cal.sh 
ls
pwd
mkdir jenkins
cd jenkins/
ls
vi jenkins-install.sh
uname
uname -s
cat /etc/os-release
vi jenkins-install.sh
grep -w "NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"'
vi jenkins-install.sh
bash jenkins-install.sh 
sudo su
ls
cd jenkins/
ls
bash jenkins-install.sh 
sudo su
./open-jenkins.sh 
bash ipaddr.sh 
ls
cd jenkins/
ls
cat jenkins.sh 
ls
cat setup.sh 
cat jenkins-install.sh 
ls
cat jenkins.sh 
ls
vi install.sh
bash install.sh 
sudo su
ls
vi install.sh 
sudo su
./open-jenkins.sh 
ls -a
vi Jenkins.sh 
sudo su
ls
vi Jenkins.sh 
vi open-jenkins.sh 
vi Jenkins.sh 
sudo su
vi jenkins-install.sh
$UID
id sumair
vi Jenkins.sh 
sudo bash Jenkins.sh 
id -u sumair
ls
vi Jenkins.sh 
ls
sudo su
google-chrome
ls
chmod +x Jenkins.sh 
sudo chmod +x Jenkins.sh 
./Jenkins.sh 
sudo bash Jenkins.sh 
vi Jenkins.sh 
ls
./Jenkins.sh 
vi Jenkins.sh 
./Jenkins.sh 
vi Jenkins.sh 
sudo ./Jenkins.sh 
vi open-jenkins.sh
sudo chmod +x open-jenkins.sh 
ls
./open-jenkins.sh 
vi Jenkins.sh 
bash Jenkins.sh 
sudo J
sudo bash Jenkins.sh 
ls
cd jenkins/
ls
cat setup.sh 
history
cat Jenkins.sh 
ls
vi Jenkins.sh 
cat Jenkins.sh 
ls
vi original.sh
bash original.sh 
sudo bash original.sh 
ls
vi google-chrome
vi google-chrome.sh 
sudo bash original.sh 
jenkins --version
ls
bash ipaddr.sh 
sudo bash original.sh 
ls
cat /etc/os-release
ls
cd jenkins/
ls
bash original.sh 
sudo bash original.sh 
echo EUID
echo $EUID
echo $UID
sudo su
ls -a
jenkins --version
cd jenkins/
ls
docker images
bash ipaddr.sh 
ls
cd ..
ls
cd task/
ls
cat word
cat word.sh 
cat word-counter.sh 
cd ..
ls
cd assessment/
ls
cat hello.txt 
cat word-counter.sh 
ls
vi hello.sh
ls
pwd
ls
chmod +x hello.sh 
ls
chmod 777 hello.sh 
ls
sudo su
ls
pwd
chmod +x /home/sumair/hello.sh 
sudo chmod +x /home/sumair/hello.sh 
ls -l
cd -
ls l
ls -l
cd /
ls
chmod +x /home/
sudo chmod +x /home/
ls -l
chmod 777 /home/
sudo chmod 777 /home/
ls -l
cd home/
ls
sudo chmod 777 sumair/
ls -l
cd sumair/
ls
pwd
cd /
ls
ll
cd
cd /home/
ll
ls
cd sumair/
ls
cd assessment/
ls
cat word-counter.sh 
pwd
cd ..
ls
pwd
cd assessment/
ls
cd ..
ls
cd task/
ls
cd ..
ls
cd task-
cd shell-2/
ls
pwd
echo $EUID
sudo su
ls
jenkins --version
ls
mkdir Docker
cd Docker/
ls
cd Docker/
ls
docker --version
sudo apt-get update
sudo su
cat /var/lib/docker/aufs/diff
sudo cat /var/lib/docker/aufs/diff
sudo su
ls
su - jenkins
su jenkins
sudo su
docker compose version
Docker Compose version v2.17.3
docker --version
Docker version 23.0.5, build bc4487a
docker version
Client: Docker Engine - Community
<...>
ls
cd ..
ls
cd /
ls
sudo su
