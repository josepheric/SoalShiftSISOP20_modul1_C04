awk -F"," 'BEGIN {
min = 9007199254740; 
minb = 9007199254740;
}
{
region[$11] = $13;
count[$11]+= $21;
}
END{ 	if (count["Illinois"] < count["Texas"])
	print "Illinois kecil";
	else print "Texas kecil";
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
