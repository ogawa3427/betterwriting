#!/bin/bash

#server
file_path="mut"

#init1
	echo -n "i," > sc1t
	num_lines=$(wc -l < "$file_path")
	echo $num_lines
	#13こ出す
	echo $(shuf -n 14 mut | sed -E ':a;N;$!ba;s/\n/,/g') >> sc1t
	grep -vf sc1t "$file_path" > tmp_file
	cat sc1t
	mosquitto_pub -h localhost -t sc1 -m "$(cat sc1t)"

#init2
	echo -n "i," > sc2t
	num_lines=$(wc -l < "$file_path")
	echo $num_lines
	echo $(shuf -n 13 mut | sed -E ':a;N;$!ba;s/\n/,/g') >> sc2t
	grep -vf sc2t "$file_path" > tmp_file
	cat sc2t
	mosquitto_pub -h localhost -t sc2 -m "$(cat sc2t)"

#init3
	echo -n "i," > sc3t
	num_lines=$(wc -l < "$file_path")
	echo $num_lines
	echo $(shuf -n 13 mut | sed -E ':a;N;$!ba;s/\n/,/g') >> sc3t
	grep -vf sc3t "$file_path" > tmp_file
	cat sc3t
	mosquitto_pub -h localhost -t sc3 -m "$(cat sc3t)"

#init4
	echo -n "i," > sc4t
	num_lines=$(wc -l < "$file_path")
	echo $num_lines
	echo $(shuf -n 13 mut | sed -E ':a;N;$!ba;s/\n/,/g') >> sc4t
	grep -vf sc4t "$file_path" > tmp_file
	cat sc4t
	mosquitto_pub -h localhost -t sc4 -m "$(cat sc4t)"


exit
while true; do


sleep 3

	#start


	#bwww
	echo -n b > pach1
	numline=$(wc -l < "mut")
	shuf -n 12 "mut" > btmp
	echo "$(cat btmp)" >> pach1
	grep -vf btmp "mut" > btmp && mv btmp "mut"
	rm btmp
	# テキストファイルのパスを指定
	file_path="mut"

	# ファイルの行数を取得
	num_lines=$(wc -l < "$file_path")
	echo $num_lines

	# ランダムに12行を選択して一時ファイルに保存
	shuf -n 12 "$file_path" > tmp.txt

	# 一時ファイルの内容を表示
	cat tmp.txt
	echo $(cat tmp_file) >> pach1

	# 一時ファイルに記載された行を元のファイルから削除
	grep -vf tmp.txt "$file_path" > tmp_file && mv tmp_file "$file_path"

	# 一時ファイルを削除
	rm tmp.txt


	echo w > pach2
	echo w > pach3
	echo w > pach4
	mosquitto_pub -h localhost -t hc1 -m "$(cat pach1)"
	mosquitto_pub -h localhost -t hc2 -m "$(cat pach2)"
	mosquitto_pub -h localhost -t hc3 -m "$(cat pach3)"
	mosquitto_pub -h localhost -t hc3 -m "$(cat pach4)"


	#pwww

	#orrr->error loop

	#wpww

	#

done




mosquitto_pub -h localhost -t testopic -m "$(cat pachet)"


exit

