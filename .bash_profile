aias dhawal9='ssh dhawal.cs15@172.16.26.9'
alias tulika35='ssh tulika@172.16.26.35'
alias conn_dhawal='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa dhawal.cs15@172.16.26.9:/home/stud/btech/cse/2015/dhawal.cs15 ~/Mounts/mnt1/'
alias conn_tulika9='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulika.pcs16@172.16.26.9:/home/Phd16/tulika.pcs16/ ~/Mounts/mnt2'
alias conn_tulika35='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa tulika@172.16.26.35:/home1/tulika/ ~/Mounts/mnt3'
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
#export PATH="/Users/dhawgupta/anaconda3/bin:$PATH"
alias tk1='ssh ubuntu@192.168.2.3'
alias conn_tk1='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa ubuntu@192.166.2.3:/home/ubuntu ~/Mounts/tk1/'
alias conn_web='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa dhawal.cs15@172.16.1.4:/home/stud/btech/cse/2015/dhawal.cs15 ~/Mounts/Website'
alias conn_w='/Users/dhawgupta/anaconda3/bin/python ~/signin.py'
alias sem8='cd ~/Desktop/Semester-8'/
alias btp='sem8 ;cd ./BTP/Codes/'
. /Users/dhawgupta/anaconda3/etc/profile.d/conda.sh
conda activate
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH=/Users/dhawgupta/opt/bin/:$PATH
export LD_LIBRARY_PATH=/usr/local/lib
alias conn_cs551='sudo sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa cs551_group_03@172.16.26.40:/home/cs551_group_03 ~/Mounts/cs551'
alias cs551='ssh cs551_group_03@172.16.26.40'

conda activate
. /Users/dhawgupta/anaconda3/etc/profile.d/conda.sh
