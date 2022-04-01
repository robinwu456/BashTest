function GetHardDiskInfo(){ echo $(df -h | grep sda2 | fmt -u | cut -d ' ' -f 2); }
function GetMemoryInfo(){ echo $(free -mh | grep Mem | fmt -u | cut -d ' ' -f 2); }
function GetCpuInfo(){ echo $(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d ':' -f 2); }
function Add(){ echo $(($1+$2)); }
function Sub(){ echo $(($1-$2)); }
function Multi(){ echo $(($1*$2)); }
function Div(){ echo $(($1/$2)); }
function GetHostname(){ echo $HOSTNAME; }
function GetUserName(){ echo $USER; }
# $1=IP
function IsHostsConnected(){ ping -c 1 -w 1 $1 > /dev/null; echo $?; }
# $1=$#, $2=args count
function VerifyArgsCount(){
        #if [ ! $1 -eq $2 ]; then
        #        echo "請輸入$2個參數!"
        #        exit
        #fi

	#[ ! $1 -eq $2 ] && (return 1; echo "請輸入$2個參數!") || return 0

	if [ ! $1 -eq $2 ]; then
                 echo "請輸入$2個參數!"
                 exit
        fi
}

function IsUserExist(){
	grep $1 /etc/passwd > /dev/null; echo $?;
}

function OddAdd(){
	declare -i index=$1
	declare -i num=0

	while [ $index -le $2 ]
	do
	        if [ $((index%2)) == 1 ]; then
        	        num=num+index
	        fi
	        index+=1
	done
	echo $num
}

function EvenAdd(){
        declare -i index=$1
        declare -i num=0

        while [ $index -le $2 ]
        do
                if [ $((index%2)) == 0 ]; then
                        num=num+index
                fi
                index+=1
        done
        echo $num
}

function AddUser(){
	[ $(IsUserExist $1) == 0 ] && echo $1"已存在" && return
	sudo useradd -m -s /bin/bash $1
	echo $1:$1 | sudo chpasswd
}

function DeleteUser(){
	[ $(IsUserExist $1) == 1 ] && echo $1"不存在" && return
        sudo userdel -r $1 > /dev/null
}

function ChangeUserPwd(){
	#[ $(VerifyArgsCount $# 2) == 1 ] && return
	[ $(IsUserExist $1) == 1 ] && echo $1"不存在" && return
	echo $1:$2 | sudo chpasswd
}

function AddMultiUser(){
	for user in $@; do
		AddUser $user
	done
}

function DelMultiUser(){
	for user in $@; do
                DeleteUser $user
        done
}
