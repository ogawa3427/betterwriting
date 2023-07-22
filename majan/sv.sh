#!/bin/bash
svname="localhost"
cr1name="localhost"
cr2name="localhost"
cr3name="localhost"
cr4name="localhost"
#本当の初期化
./mutter.sh
#server
file_path="mut"
file="mut"
#初期化
	./init.sh > hab1
	mosquitto_pub -h "$cr1name" -t sc1 -m "s,$(cat hab1)"
	./init.sh > hab2
	mosquitto_pub -h "$cr2name" -t sc2 -m "s,$(cat hab2)"
	./init.sh > hab3
	mosquitto_pub -h "$cr3name" -t sc3 -m "s,$(cat hab3)"
	./init.sh > hab4
	mosquitto_pub -h "$cr4name" -t sc4 -m "s,$(cat hab4)"
	
	./ready.sh

	exit
#pwww
	mosquitto_pub -h "$cr1name" -t "sc$1" -m "c,捨てる牌を選んでください"

#pwww
mosquitto_pub -h localhost -t sc1 -m "p"
mosquitto_pub -h localhost -t sc2 -m "w"
mosquitto_pub -h localhost -t sc3 -m "w"
mosquitto_pub -h localhost -t sc4 -m "w"

#削除 and ロン準備
dlpn=$(mosquitto_sub -h "$svname" -t cs1 -C 1 )
dlp=$(sed -n "${dlpn}p" "hab1")
echo $dlp
sed -i "${dlpn}d" hab1
sleep 1

#wrrr
#mosquitto_pub -h localhost -t sc1 -m "w"
#mosquitto_pub -h localhost -t sc2 -m "r,$dlp"
#mosquitto_pub -h localhost -t sc3 -m "r,$dlp"
#mosquitto_pub -h localhost -t sc4 -m "r,$dlp"
mosquitto_pub -h localhost -t sc1 -m "r,$dlp"

echo -n $(mosquitto_sub -h "$svname" -t cs1 -C 1) > cs
#echo -n $(mosquitto_sub -h "$svname" -t cs2 -C 1) >> cs
#echo -n &(mosquitto_sub -h "$svname" -t cs3 -C 1) >> cs
#echo -n $(mosquitto_sub -h "$svname" -t cs4 -C 1) >> cs
if [ "$cs" == "nnnn" ]; then
	echo $dlp >> mut
elif [ "$cs" == "y" ]; then
	echo $dip >> hab1
fi

mosquitto_pub -h localhost -t sc1 -m "w"
mosquitto_pub -h localhost -t sc2 -m "w"
mosquitto_pub -h localhost -t sc3 -m "w"
mosquitto_pub -h localhost -t sc4 -m "w"

#p1
	echo -n "i,0" > sc1t
	echo -n "w,0" > sc2t
	echo -n "w,0" > sc3t
	echo -n "w,0" > sc4t
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

