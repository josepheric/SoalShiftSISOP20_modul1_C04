cp /var/log/syslog backup

a=$(date -r $1 "%H")
case "$a" in
	"01" ) cat backup | tr '[a-z]' '[B-ZA-A]' ;; 
        "02" ) cat backup | tr '[a-z]' '[C-ZA-B]' ;; 
        "03" ) cat backup | tr '[a-z]' '[D-ZA-C]' ;; 
        "04" ) cat backup | tr '[a-z]' '[E-ZA-D]' ;; 
        "05" ) cat backup | tr '[a-z]' '[F-ZA-E]' ;; 
        "06" ) cat backup | tr '[a-z]' '[G-ZA-F]' ;; 
        "07" ) cat backup | tr '[a-z]' '[H-ZA-G]' ;; 
        "08" ) cat backup | tr '[a-z]' '[I-ZA-H]' ;;
        "09" ) cat backup | tr '[a-z]' '[J-ZA-I]' ;;
        "10" ) cat backup | tr '[a-z]' '[K-ZA-J]' ;; 
        "11" ) cat backup | tr '[a-z]' '[L-ZA-K]' ;; 
        "12" ) cat backup | tr '[a-z]' '[M-ZA-L]' ;; 
        "13" ) cat backup | tr '[a-z]' '[N-ZA-M]' ;; 
        "14" ) cat backup | tr '[a-z]' '[O-ZA-N]' ;; 
        "15" ) cat backup | tr '[a-z]' '[P-ZA-O]' ;; 
        "16" ) cat backup | tr '[a-z]' '[Q-ZA-P]' ;; 
        "17" ) cat backup | tr '[a-z]' '[R-ZA-Q]' ;; 
        "18" ) cat backup | tr '[a-z]' '[S-ZA-R]' ;; 
        "19" ) cat backup | tr '[a-z]' '[T-ZA-S]' ;; 
        "20" ) cat backup | tr '[a-z]' '[U-ZA-T]' ;; 
        "21" ) cat backup | tr '[a-z]' '[V-ZA-U]' ;; 
        "22" ) cat backup | tr '[a-z]' '[W-ZA-V]' ;; 
        "23" ) cat backup | tr '[a-z]' '[X-ZA-W]' ;; 
        "00" ) cat backup | tr '[a-z]' '[Y-ZA-X]' ;; 




esac
mv  backup  $(date +"%H:%M_%d-%m-%y")
