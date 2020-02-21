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
