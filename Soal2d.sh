
read -p "Enter nama File yang di decrypt" N
cp /home/dennas/$N.txt backup
a=$(date +"%H")
case "$a" in
	"01" ) cat backup | tr  '[B-ZA-A]' '[a-z]'>File1.txt;; 
        "02" ) cat backup | tr  '[C-ZA-B]'  '[a-z]' >File1.txt;; 
        "03" ) cat backup | tr  '[D-ZA-C]' '[a-z]'>File1.txt;; 
        "04" ) cat backup | tr  '[E-ZA-D]' '[a-z]' | tr '[E-ZA-D]' '[A-Z]' >File1;;
        "05" ) cat backup | tr  '[F-ZA-E]' '[a-z]' >File1.txt;; 
        "06" ) cat backup | tr  '[G-ZA-F]' '[a-z]' >File1.txt;; 
        "07" ) cat backup | tr  '[H-ZA-G]' '[a-z]' >File1.txt ;; 
        "08" ) cat backup | tr  '[I-ZA-H]' '[a-z]'>File1.txt;;
        "09" ) cat backup | tr  '[J-ZA-I]'  '[a-z]'>File1.txt;;
        "10" ) cat backup | tr  '[K-ZA-J]'  '[a-z]' >File1.txt;; 
        "11" ) cat backup | tr  '[L-ZA-K]' '[a-z]'>File1.txt;; 
        "12" ) cat backup | tr '[M-ZA-L]''[a-z]'  >File1.txt;; 
        "13" ) cat backup | tr '[N-ZA-M]' '[a-z]'  >File1.txt;; 
        "14" ) cat backup | tr '[O-ZA-N]''[a-z]' >File1.txt;; 
        "15" ) cat backup | tr  '[P-ZA-O]' '[a-z]' >File1.txt;; 
        "16" ) cat backup | tr  '[Q-ZA-P]' '[a-z]' >File1.txt;; 
        "17" ) cat backup | tr '[R-ZA-Q]' '[a-z]'  >File1.txt;; 
        "18" ) cat backup | tr  '[S-ZA-R]' '[a-z]' >File1.txt;; 
        "19" ) cat backup | tr  '[T-ZA-S]' '[a-z]' >File1.txt;; 
        "20" ) cat backup | tr  '[U-ZA-T]'  '[a-z]'>File1.txt;; 
        "21" ) cat backup | tr  '[V-ZA-U]' '[a-z]' >File1.txt;; 
        "22" ) cat backup | tr  '[W-ZA-V]' '[a-z]'>File1.txt;; 
        "23" ) cat backup | tr  '[X-ZA-W]' '[a-z]' >File1.txt;; 
        "00" ) cat backup | tr  '[Y-ZA-X]' '[a-z]' >File1.txt;; 




esac

mv  $N.txt  File3.txt

