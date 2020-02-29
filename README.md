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
![Screenshot from 2020-02-29 20-59-49](https://user-images.githubusercontent.com/61129358/75608921-748d4b80-5b36-11ea-9527-1cdf8e03bedc.png)


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

![Screenshot from 2020-02-29 21-05-41](https://user-images.githubusercontent.com/61129358/75608988-4b20ef80-5b37-11ea-823a-b57bb7ccbb10.png)

#Soal no 1c
` 
export LC_ALL=C
awk -F"," 'BEGIN {
}
 
{  
if (region $11=="Texas"  || $11 == "Illinois")
	{count[$17]+= $21;}
}
END{ 	print "Profit    Nama Produk";
	for (i in count)
	{  
	print count [i], i;
		}
	}
 ' /home/eric/Sample-Superstore.csv | sort -g |head -10`
 
 #Penjelasan soal no 1c:
 Pertama-tama menghitung profit di negara bagian dari jawaban no 2b.
 Kemudian hasilnya dimasukkan kedalam array count yang indeksnya adalah nama barang
 Setelah itu profit dan nama barang diprint
 
 Ditambahkan | sort -g |head -10 agar hasil yang ditampilkan adalah 10 produk dengan profit terkecil
 
 ![Screenshot from 2020-02-29 21-07-22](https://user-images.githubusercontent.com/61129358/75609002-86bbb980-5b37-11ea-8566-20241df95ca7.png)
 
 
#SOAL NO 2A dan 2B:

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
cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 12 | head -n 1 > ~/password$a.txt
loop=0

fi
done
read -p "Enter nama File" N

mv password$a.txt $N.txt

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
Kemudian diberikan mengganti nama dengan read P,yang dimana setelah memberi nama maka password 1.txt akan diganti menjadi nama yang diinginkan

Lalu dijalankan dengan bash 

maka password.txt akan bertambah semisal dalam folder ada password1.txt, password2.txt, password3.txt saat file dijalankan dengan bash maka file password.txt akan bertambah menjadi password4.txt dengan isi yang acak.

atau contoh yang lain saat file password2.txt dihapus maka saat file dijalankan dengan bash file password2.txt muncul kembali dengan isi yang acak 

![1582987039690](https://user-images.githubusercontent.com/61129358/75609534-0e0b2c00-5b3c-11ea-98ba-2ad5f4d59857.png)

#Jawaban Soal no 2C

```
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
```



esac

mv  $N.txt  $file1.txt

Nomor 2 C membaca file tersebut kemudian mengganti nama  file menjadi encrypt,disini File user akan mengetikkan nama file yang dimana isi file tersebut akan di enkripsikan kemudian nama dari file tersebut diubah sesuai dengan encripsi tersebut

![1582987048342](https://user-images.githubusercontent.com/61129358/75609544-29763700-5b3c-11ea-8598-1c983340927a.png)


#Nomor 2D

```

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

```
Nomor 2D mirip seperti nomor 1 tapi hanya mengdecrypsikan balik yaitu dengan mengubah aturan Tr,sehingga file kembali seperti semula



![1582987050729](https://user-images.githubusercontent.com/61129358/75609546-2bd89100-5b3c-11ea-946f-acd0bbcece4f.png)

![1582987055408](https://user-images.githubusercontent.com/61129358/75609547-2d09be00-5b3c-11ea-944f-51954e5110a9.png)

![1582987045907](https://user-images.githubusercontent.com/61129358/75609550-2f6c1800-5b3c-11ea-958c-cb30efe7035e.png)

![1582987053036](https://user-images.githubusercontent.com/61129358/75609554-32ff9f00-5b3c-11ea-8d35-195e700d9e5a.png)









#Soal no 3a
```
# !/bin/bash
for ((i=1; i<=28; i+=1))
do
 wget -a wget.log -O pdkt_kusuma_$i "https://loremflickr.com/320/240/cat"
done
```

#Penjelasan no 3a
Menggunakan fungsi wget untuk mendownload file. -a untuk membuat log dengan nama tertentu, -O untuk menentukan nama file yang ingin didownload

![Screenshot from 2020-02-29 21-09-16](https://user-images.githubusercontent.com/61129358/75609032-c84c6480-5b37-11ea-971d-f7b141f5514e.png)

#Soal no 3b
```
5 6/8 * * 0-5 /home/eric/Soal3a.sh 
```
#Penjelasan no 3b
Menggunakan crontab untuk mendownload file pada waktu yang telah ditentukan

#Soal no 3c
```
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
```
Penjelasan no 3c:

Pertama-tama file di download di folder Kusuma
Kemudian log lokasi dipindahkan ke location.log

lalu menggunakan 
`for ((i=1; i<=28; i++))
        do
                for((j=$i+1; j<=28; j++))
                do`
Untuk mengiterasi seluruh file yang ada, kemudian membandingkan dengan file selanjutnya
`if cmp -s "pdkt_kusuma_"$i"" "pdkt_kusuma_"$j"" ;
				then
                                mv "pdkt_kusuma_$j"  "duplicate_$d"
                                mv "duplicate_$d" /home/eric/duplicate
                                d=$((d+1))
				fi`
File kemudian dibandingkan dengan seluruh file lainnya menggunakan cmp -s, apabila ada yang sama, akan direname menjadi duplicate_, kemudian dipindahkan ke folder duplicate
cmp -s membandingkan byte per bytr dalam suatu file

![Screenshot from 2020-02-29 21-10-52](https://user-images.githubusercontent.com/61129358/75609067-034e9800-5b38-11ea-86fa-91d531437829.png)

![Screenshot from 2020-02-29 21-12-04](https://user-images.githubusercontent.com/61129358/75609084-33963680-5b38-11ea-8e68-85406873f400.png)

Kendala:
Soal 1c: tidak tahu bahwa boleh menggunakan sort dari linuxnya, sehingga sempat kesulitan
Soal 2b: sempat bingung memahami soal 
Soal 3c: sempat kesulitan mencari cara membandingkan gambar yang duplikat
