#!/bin/bash

raw=$(cat piei1 | sed 's/x,/,/g' | sed 's/y,/,/g'| sed 's/z,/,/g'| sed 's/w,/,/g' | sed 's/x$//g' | sed 's/y$//g'| sed 's/z$//g'| sed 's/w$//g')
hir=$(echo $raw | sed 's/,//g')

echo $hir | ./dict.sh > trtmp
text=$(cat trtmp)
length=${#text}


echo -n "" > str1
echo -n "" > str2
echo -n "" > str3
echo -n "" > str4
echo -n "" > str5
echo -n "" > str6
echo -n "" > str7
echo -n "" > str8
echo -n "" > str9
echo -n "" > str10
echo -n "" > str11
echo -n "" > str12
echo -n "" > str13
echo -n "" > str14
echo -n "" > str15
echo -n "" > str16
echo -n "" > str17
echo -n "" > str18

tur=1
cl=1
for ((i = 0; i < length; i++)); do
	
	if [ $tur -eq 1 ]; then
    	echo -n "${text:i:1}" >> str1
    	echo -n " " >> str1
    	((++tur))

    	if [ $cl -eq 13 ]; then
    		echo "" >> str1
    	fi

    elif [ $tur -eq 2 ]; then
   		echo -n "${text:i:1}" >> str2
   		echo -n " " >> str2
    	((++tur))
    	if [ $cl -eq 13 ]; then
    		echo "" >> str2
    	fi

  	elif [ $tur -eq 3 ]; then
    	echo -n "${text:i:1}" >> str3
    	echo -n " " >> str3
    	((++tur))
  	elif [ $tur -eq 4 ]; then
    	echo -n "${text:i:1}" >> str4
    	echo -n " " >> str4
    	((++tur))
  	elif [ $tur -eq 5 ]; then
    	echo -n "${text:i:1}" >> str5
    	echo -n " " >> str5
    	((++tur))
  	elif [ $tur -eq 6 ]; then
    	echo -n "${text:i:1}" >> str6
    	echo -n " " >> str6
    	((++tur))
  	elif [ $tur -eq 7 ]; then
    	echo -n "${text:i:1}" >> str7
    	echo -n " " >> str7
    	((++tur))
  	elif [ $tur -eq 8 ]; then
    	echo -n "${text:i:1}" >> str8
    	echo -n " " >> str8
    	((++tur))
  	elif [ $tur -eq 9 ]; then
    	echo -n "${text:i:1}" >> str9
    	echo -n " " >> str9
    	((++tur))
  	elif [ $tur -eq 10 ]; then
    	echo -n "${text:i:1}" >> str10
    	echo -n " " >> str10
    	((++tur))
  	elif [ $tur -eq 11 ]; then
    	echo -n "${text:i:1}" >> str11
    	echo -n " " >> str11
  		((++tur))
  	elif [ $tur -eq 12 ]; then
    	echo -n "${text:i:1}" >> str12
    	echo -n " " >> str12
    	((++tur))
  	elif [ $tur -eq 13 ]; then
    	echo -n "${text:i:1}" >> str13
    	echo -n " " >> str13
    	((++tur))
  	elif [ $tur -eq 14 ]; then
    	echo -n "${text:i:1}" >> str14
    	echo -n " " >> str14
    	((++tur))
  	elif [ $tur -eq 15 ]; then
    	echo -n "${text:i:1}" >> str15
    	echo -n " " >> str15
    	((++tur))
  	elif [ $tur -eq 16 ]; then
    	echo -n "${text:i:1}" >> str16
    	echo -n " " >> str16
    	((++tur))
  	elif [ $tur -eq 17 ]; then
    	echo -n "${text:i:1}" >> str17
    	echo -n " " >> str17
    	((++tur))
  	elif [ $tur -eq 18 ]; then
    	echo -n "${text:i:1}" >> str18
    	echo -n " " >> str18
    	tur=1
  	fi

  
  	
done

#cat str1 str2 str3 str4 str5 str6 str7 str8 str9 str10 str11 str12 str13 str14 str15 str16 str17 str18 | fold -w 52


cat str1
echo -e "\n"
cat str2
echo -e "\n"
cat str3
echo -e "\n"
cat str4
echo -e "\n"
cat str5
echo -e "\n"
cat str6
echo -e "\n"
cat str7
echo -e "\n"
cat str8
echo -e "\n"
cat str9
echo -e "\n"
cat str10
echo -e "\n"
cat str11
echo -e "\n"
cat str12
echo -e "\n"
cat str13
echo -e "\n"
cat str14
echo -e "\n"
cat str15
echo -e "\n"
cat str16
echo -e "\n"
cat str17
echo -e "\n"
cat str18

exit
tur=0


# 文字列の長さを取得
length=${#hir}

# ファイルの内容をリセット
> line1
> line2
> tentied13.txt

# 1文字ずつ処理して改行で区切って出力
for (( i=0; i<length; i++ )); do
  if [ "$tur" -eq 0 ]; then
    echo -n "${hir:$i:1}" >> line1
    echo -n " " >> line1
    tur=1
  else
    echo -n "${hir:$i:1}" >> line2
    echo -n " " >> line2
    tur=0
  fi
done

# 縦書きにした文字列を結合して保存
cat line1 >> tentied13.txt
echo >> tentied13.txt
cat line2 >> tentied13.txt
echo >> tentied13.txt

#cat tentied13.txt
exit