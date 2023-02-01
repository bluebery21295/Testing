#!bin/bash/
exec=0
pas_ex=0
path=/home/project/
for i in `ls $path` 
do
  if [ -x $i ]
  then 
	let "exec = exec+1"; echo "$i" >>list_exe.txt
  else 
	let "pas_ex = pas_ex +1"; echo "$i" >> list_pas_ex.txt 
  fi
done
