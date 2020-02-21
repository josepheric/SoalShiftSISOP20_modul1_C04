
awk -F"," 'BEGIN {
min = 9007199254740; #very large number 
minb = 9007199254740;
k=0;
}
function alen(array,   dummy, len) {
    for (dummy in array)
        len++;
 
    return len;
}
 
function sort(array,   haschanged, len, tmp, i)
{
    len = alen(array)
    haschanged = 1
 
    while ( haschanged == 1 )
    {
        haschanged = 0
 
        for (i = 1; i <= len - 1; i++)
        {
            if (array[i] > array[i+1])
            {
                tmp = array[i]
                array[i] = array[i + 1]
                array[i + 1] = tmp
                haschanged = 1
            }
        }
    }
}
 
{
region[$17] = $11;
count[$17]+= $21;
}
END{ 	sort (count)
	for (i in count)
	{ 
	print count [i];
	k++;
		}
	}
 ' /home/eric/Sample-Superstore.csv
