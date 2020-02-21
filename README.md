# SoalShiftSISOP20_modul1_C04

#Soal nomer 1a
```
awk -F"," 'BEGIN {
min = 9007199254740992; #very large number
}
{
dikit[$13]++;
count[$13]+= $21;
}
END{ 
  for (i in count)
        {       if (i == "Region")
                {min = min}
                else  if (count[i] < min)
                { min = count[i];
                indeks = i;
                }
        }
print "Wilayah bagian dengan profit tersedikit adalah ",indeks;
        }
 ' /home/eric/Sample-Superstore.csv
```
line pertama digunakan untuk menginisialisasi perintah awk
didalam begin dinisialisasi variabel min dengan nilai yang sangat besar

Kemudian dibuat sebuah array count dengan indeks region (Kolom ke 13) dan valuenya adalah profit total (kolom ke 21)

Setelah itu dibuat suatu loop yg mengiterasi isi dari array count
Kemudian dibuat suatu kondisi if apabla yang terbaca adalah region (karena bernilai 0)
Kemudian dibuat suatu kondisi if untuk mencari nilai paling minimal

Setelah itu hasil diprintkan


#Soal 1b
```
awk -F"," 'BEGIN {
min = 9007199254740; 
minb = 9007199254740;
}
{
region[$11] = $13;
count[$11]+= $21;
}
END{ 	
  for (i in count)
	{
		if (count[i] < min && region [i] == "Central")
			{	minb = min;
				min = count [i];
				minimal =i;}
		else if (count [i] < minb && count[i] != min && region [i] ="Central")
			{ 	minb = count [i];
				minimalb = i;
				}
	}

print "Negara bagian dengan profit tersedikit pertama adalah ",minimal;
print "Negara bagian dengan profit tersedikit kedua adalah ",minimalb;
	}
 ' /home/eric/Sample-Superstore.csv
```

Pada soal 1b, prinsip nya sama dengan soal 1a
Diinisiasi 2 buah variabel, min dan minb
Pertama2 diinisalisai 2 buah array, yang satu untuk menyimpan profit per negara bagian, dan satunya lagi untuk menyimpan region dari seuatu negara bagian

Dalam loop, ada 2 kali pengecekan, yaitu apabila nilai yg sekarang adalah nilai paling kecil, dan yang kedua adalah nilai merupakan kedua terkecil.

Hasil dari 2 minimal ini kemudian diprint kan

#SOAL NO 2A.:

Buat file dengan nano soal3.sh
Tujuan file tersebut untuk membuat file password.txt yang bersifat acam
Isi file tersebut adalah :

```
loop=1
a=1
while [ $loop -ne 0 ]
do
if [[ -f ~/password$a.txt ]] ; then
a=$(($a +1))
else
cat /dev/urandom | tr -dc '[a-z] [A-Z]' | fold -w 12 | head -n 1 > ~/password$a.txt
loop=0
fi
done
```

Penjelasan :
Saya membuat 2 variable
variable pertama adalah loop untuk looping jadi loop dimasukkan angka 1 untuk angka looping
variable kedua adalah untuk urutannya yang akan cek nama filenya
while [$loop -ne 0] adalah syarat looping tidak boleh = 0 jadi jika dia 0 maka keluar
-f ~/password$a.txt untuk cek apakah ada file atau tidak, kalau ada maka menambah 
"a=$(($a +1))"  jika tidak ada bikin file.
cat /dev/uranndom cat disini untuk menampilkan isi dari sebuah file di layar dan selanjutnya untuk membikin sebuah string random
tr -dc untuk mengubah suatu karakter menjadi karakter lain
fold -w 12 adalah panjang string sebanyak 12
head -1 mengambil 1 dari atas hanya 1 baris
lalu disimpan kedalam file 
lalu loop jadi 0

Lalu dijalankan dengan bash 

maka password.txt akan bertambah semisal dalam folder ada password1.txt, password2.txt, password3.txt saat file dijalankan dengan bash maka file password.txt akan bertambah menjadi password4.txt dengan isi yang acak.

atau contoh yang lain saat file password2.txt dihapus maka saat file dijalankan dengan bash file password2.txt muncul kembali dengan isi yang acak 

#Jawaban Soal no 2C
```
cp /var/log/syslog backup(untuk mengcopy syslog dan menamai file sebagai backup)

a=$(date +"%H")(menyimpan waktu jam sebagai variable)
case "$a" in(case switch akan waktu dan Caesar cipher untuk soal)
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
mv  backup  $(date +"%H:%M_%d-%m-%y")(mengganti nama file)
```
