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


#


