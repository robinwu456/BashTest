function GetHardDiskInfo(){ echo $(df -h | grep sda2 | fmt -u | cut -d ' ' -f 2); }
function GetMemoryInfo(){ echo $(free -mh | grep Mem | fmt -u | cut -d ' ' -f 2); }
function GetCpuInfo(){ echo $(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d ':' -f 2); }
function Add(){ echo $(($1+$2)); }
function Sub(){ echo $(($1-$2)); }
function Multi(){ echo $(($1*$2)); }
function Div(){ echo $(($1/$2)); }
function GetHostname(){	hostname; }
function GetUserName(){ whoami; }
# $1=IP
function IsHostsConnected(){ ping -c 1 -w 1 $1 > /dev/null; echo $?; }
# $1=$#, $2=args count
function VerifyArgsCount(){ 
	if [ ! $1 -eq $2 ]; then
		echo "請輸入$2個參數!"
		exit
	fi
}

