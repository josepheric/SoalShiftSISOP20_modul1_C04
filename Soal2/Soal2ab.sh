loop=1
a=1

while [ $loop -ne 0 ]
do

if [[ -f ~/password$a.txt ]] ; then
a=$(($a +1))

else
cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 12 | head -n 1 > ~/password$a.txt
loop=0

fi
done
read -p "Enter nama File" N

mv password$a.txt $N.txt
