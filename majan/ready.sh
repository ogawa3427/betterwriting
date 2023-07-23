#!/bin/bash

# MQTTブローカーのホスト名を設定
svname="localhost"

# 送信元から受信した"OK"メッセージをカウントする変数
ok_count=0

# 4つの送信元から"OK"メッセージを受信するまで繰り返す
while [ $ok_count -lt 4 ]; do
    # メッセージを受信
    rec=$(mosquitto_sub -h "$svname" -t ready -C 1)

    # メッセージが"OK"の場合、カウントを増やす
    if [ "$rec" == "OK" ]; then
        ((ok_count++))
    fi
done

# 4つの"OK"メッセージを受信した後の処理
echo "go next"
# ここに次の処理を記述します。
