#!bin/bash
alive=0
dead=0
ip_prefix=`echo $(hostname -i) | cut -d "." -f1-3`
ip=`echo $ip_prefix.{1..225}`
echo $ip
for i in $ip
do 
 if [ "`ping -c 1 $i`" ]
   then 
	let "alive = alive +1";echo "$i" >> list_ip_alive.txt
   else
        let "dead = dead +1";echo "$i" >> list_ip_dead.txt
 fi
done
echo "le nombre des IPs en ligne est $alive"
echo "le nombre des IPs offline est $dead"
