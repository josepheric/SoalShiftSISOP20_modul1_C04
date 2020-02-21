awk -F"," 'BEGIN {
min = 9007199254740992; #very large number
}
{
dikit[$13]++;
count[$13]+= $21;
}
END{ 
  for (i in count)
	{	if (count[i] == 0)
		{min = min}
		else  if (count[i] < min)
		{ min = count[i];
		indeks = i;
		}
	}
print "Wilayah bagian dengan profit tersedikit adalah ",indeks;
	}
 ' /home/eric/Sample-Superstore.csv
