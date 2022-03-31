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
	sudo useradd -m -s /bin/bash $1
}
