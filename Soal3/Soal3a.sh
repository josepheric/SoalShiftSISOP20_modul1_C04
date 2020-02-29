# !/bin/bash
for ((i=1; i<=28; i+=1))
do
 wget -a wget.log -O pdkt_kusuma_$i "https://loremflickr.com/320/240/cat"
done
