
read -p "Enter nama File" N
cp /home/dennas/$N.txt backup
a=$(date +"%H")
case "$a" in
	"01" ) cat backup | tr '[a-z]' '[B-ZA-A]' >File1.txt;; 
        "02" ) cat backup | tr '[a-z]' '[C-ZA-B]' >File1.txt;; 
        "03" ) cat backup | tr '[a-z]' '[D-ZA-C]' >File1.txt;; 
        "04" ) cat backup | tr '[a-z]' '[E-ZA-D]' | tr '[E-ZA-D]' '[A-Z]' >File1;;
        "05" ) cat backup | tr '[a-z]' '[F-ZA-E]' >File1.txt;; 
        "06" ) cat backup | tr '[a-z]' '[G-ZA-F]' >File1.txt;; 
        "07" ) cat backup | tr '[a-z]' '[H-ZA-G]' >File1.txt ;; 
        "08" ) cat backup | tr '[a-z]' '[I-ZA-H]' >File1.txt;;
        "09" ) cat backup | tr '[a-z]' '[J-ZA-I]' >File1.txt;;
        "10" ) cat backup | tr '[a-z]' '[K-ZA-J]' >File1.txt;; 
        "11" ) cat backup | tr '[a-z]' '[L-ZA-K]' >File1.txt;; 
        "12" ) cat backup | tr '[a-z]' '[M-ZA-L]' >File1.txt;; 
        "13" ) cat backup | tr '[a-z]' '[N-ZA-M]' >File1.txt;; 
        "14" ) cat backup | tr '[a-z]' '[O-ZA-N]' >File1.txt;; 
        "15" ) cat backup | tr '[a-z]' '[P-ZA-O]' >File1.txt;; 
        "16" ) cat backup | tr '[a-z]' '[Q-ZA-P]' >File1.txt;; 
        "17" ) cat backup | tr '[a-z]' '[R-ZA-Q]' >File1.txt;; 
        "18" ) cat backup | tr '[a-z]' '[S-ZA-R]' >File1.txt;; 
        "19" ) cat backup | tr '[a-z]' '[T-ZA-S]' >File1.txt;; 
        "20" ) cat backup | tr '[a-z]' '[U-ZA-T]' >File1.txt;; 
        "21" ) cat backup | tr '[a-z]' '[V-ZA-U]' >File1.txt;; 
        "22" ) cat backup | tr '[a-z]' '[W-ZA-V]' >File1.txt;; 
        "23" ) cat backup | tr '[a-z]' '[X-ZA-W]' >File1.txt;; 
        "00" ) cat backup | tr '[a-z]' '[Y-ZA-X]' >File1.txt;; 




esac

mv  $N.txt  B.txt

