#!/bin/bash

raw=$(cat "$1" | sed 's/x,/,/g' | sed 's/y,/,/g'| sed 's/z,/,/g'| sed 's/w,/,/g' | sed 's/x$//g' | sed 's/y$//g'| sed 's/z$//g'| sed 's/w$//g')
hir=$(echo $raw | sed 's/,//g')

echo $hir | ./dict.sh > trtmp
text=$(cat trtmp)
length=${#text}


echo -n "" > "str1$1"
echo -n "" > "str2$1"
echo -n "" > "str3$1"
echo -n "" > "str4$1"
echo -n "" > "str5$1"
echo -n "" > "str6$1"
echo -n "" > "str7$1"
echo -n "" > "str8$1"
echo -n "" > "str9$1"
echo -n "" > "str10$1"
echo -n "" > "str11$1"
echo -n "" > "str12$1"
echo -n "" > "str13$1"
echo -n "" > "str14$1"
echo -n "" > "str15$1"
echo -n "" > "str16$1"
echo -n "" > "str17$1"
echo -n "" > "str18$1"

tur=1
cl=1
for ((i = 0; i < length; i++)); do
	
	if [ $tur -eq 1 ]; then
    	echo -n "${text:i:1}" >> "str1$1"
    	echo -n " " >> "str1$1"
    	((++tur))

    elif [ $tur -eq 2 ]; then
   		echo -n "${text:i:1}" >> "str2$1"
   		echo -n " " >> "str2$1"
    	((++tur))

  	elif [ $tur -eq 3 ]; then
    	echo -n "${text:i:1}" >> "str3$1"
    	echo -n " " >> "str3$1"
    	((++tur))
  	elif [ $tur -eq 4 ]; then
    	echo -n "${text:i:1}" >> "str4$1"
    	echo -n " " >> "str4$1"
    	((++tur))
  	elif [ $tur -eq 5 ]; then
    	echo -n "${text:i:1}" >> "str5$1"
    	echo -n " " >> "str5$1"
    	((++tur))
  	elif [ $tur -eq 6 ]; then
    	echo -n "${text:i:1}" >> "str6$1"
    	echo -n " " >> "str6$1"
    	((++tur))
  	elif [ $tur -eq 7 ]; then
    	echo -n "${text:i:1}" >> "str7$1"
    	echo -n " " >> "str7$1"
    	((++tur))
  	elif [ $tur -eq 8 ]; then
    	echo -n "${text:i:1}" >> "str8$1"
    	echo -n " " >> "str8$1"
    	((++tur))
  	elif [ $tur -eq 9 ]; then
    	echo -n "${text:i:1}" >> "str9$1"
    	echo -n " " >> "str9$1"
    	((++tur))
  	elif [ $tur -eq 10 ]; then
    	echo -n "${text:i:1}" >> "str10$1"
    	echo -n " " >> "str10$1"
    	((++tur))
  	elif [ $tur -eq 11 ]; then
    	echo -n "${text:i:1}" >> "str11$1"
    	echo -n " " >> "str11$1"
  		((++tur))
  	elif [ $tur -eq 12 ]; then
    	echo -n "${text:i:1}" >> "str12$1"
    	echo -n " " >> "str12$1"
    	((++tur))
  	elif [ $tur -eq 13 ]; then
    	echo -n "${text:i:1}" >> "str13$1"
    	echo -n " " >> "str13$1"
    	((++tur))
  	elif [ $tur -eq 14 ]; then
    	echo -n "${text:i:1}" >> "str14$1"
    	echo -n " " >> "str14$1"
    	((++tur))
  	elif [ $tur -eq 15 ]; then
    	echo -n "${text:i:1}" >> "str15$1"
    	echo -n " " >> "str15$1"
    	((++tur))
  	elif [ $tur -eq 16 ]; then
    	echo -n "${text:i:1}" >> "str16$1"
    	echo -n " " >> "str16$1"
    	((++tur))
  	elif [ $tur -eq 17 ]; then
    	echo -n "${text:i:1}" >> "str17$1"
    	echo -n " " >> "str17$1"
    	((++tur))
  	elif [ $tur -eq 18 ]; then
    	echo -n "${text:i:1}" >> "str18$1"
    	echo -n " " >> "str18$1"
    	tur=1
  	fi

  
  	
done

#cat str1 str2 str3 str4 str5 str6 str7 str8 str9 str10 str11 str12 str13 str14 str15 str16 str17 str18 | fold -w 52


cat "str1$1"
echo -e "\n"
cat "str2$1"
echo -e "\n"
cat "str3$1"
echo -e "\n"
cat "str4$1"
echo -e "\n"
cat "str5$1"
echo -e "\n"
cat "str6$1"
echo -e "\n"
cat "str7$1"
echo -e "\n"
cat "str8$1"
echo -e "\n"
cat "str9$1"
echo -e "\n"
cat "str10$1"
echo -e "\n"
cat "str11$1"
echo -e "\n"
cat "str12$1"
echo -e "\n"
cat "str13$1"
echo -e "\n"
cat "str14$1"
echo -e "\n"
cat "str15$1"
echo -e "\n"
cat "str16$1"
echo -e "\n"
cat "str17$1"
echo -e "\n"
cat "str18$1"

exit
