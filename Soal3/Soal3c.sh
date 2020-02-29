# !/bin/bash

mkdir duplicate
mkdir kenangan
cd kenangan

for ((i=1; i<=28; i+=1))
do
 wget -O pdkt_kusuma_$i -a wget.log  "https://loremflickr.com/320/240/cat"
done

grep -r "loremflickr.com" wget.log >> location.log

let d=1;
for ((i=1; i<=28; i++))
        do
                for((j=$i+1; j<=28; j++))
                do		
				
				if cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" ;
				then
                                mv "pdkt_kusuma_$j"  "duplicate_$d"
                                mv "duplicate_$d" /home/eric/duplicate
                                d=$((d+1))
				fi
                done

        done

cat location.log >> wget.log.bak
