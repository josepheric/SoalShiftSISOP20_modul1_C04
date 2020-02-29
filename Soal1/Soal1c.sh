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
 ' /home/eric/Sample-Superstore.csv | sort -g |head -10
