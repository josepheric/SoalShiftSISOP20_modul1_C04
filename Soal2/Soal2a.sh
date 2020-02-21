loop=1
a=1

while [ $loop -ne 0 ]
do

if [[ -f ~/password$a.txt ]] ; then
a=$(($a +1))

else
cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 26 | head -n 1 > ~/password$a.txt
loop=0

fi
done
