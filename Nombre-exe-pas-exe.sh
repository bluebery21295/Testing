#!bin/bash/
exec=0
pas_ex=0
dossier=0
for i in `ls` 
do
  if [ -f $i ] && [ -x $i ]
  then 
	let "exec = exec+1"; echo "$i" >>list_fichier_exe.txt
  elif [ -f $i ] && [ ! -x $i ] 
  then
	let "pas_ex = pas_ex +1"; echo "$i" >> list_fichier_pas_ex.txt 
  else
	let "dossier=dossier +1"; echo "$i" >>list_dossier.txt
  fi
done

echo "Le nombre des fichiers executables est $exec"
echo "le nombre des fichiers inexecutables est $pas_ex"
echo "le nombre des dossiers est $dossier"
