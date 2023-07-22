#!/bin/bash

# テキストファイル名を指定
file="mut"

# ファイルの行数を取得
line_count=$(wc -l < "$file")
echo $line_count >&2
# 取り出す行数を指定
lines_to_extract=14

# 取り出す行の行番号をランダムに生成して、コンマ区切りで変数に格納
selected_lines=""
for ((i=0; i<lines_to_extract; i++)); do
    random_line=$((RANDOM % line_count + 1))
    selected_lines+=$(sed -n "${random_line}p" "$file")
    if ((i < lines_to_extract - 1)); then
        selected_lines+=","
    fi
    sed -i "${random_line}d" "$file"
    line_count=$((line_count - 1))
done

# 変数に格納したランダムな14行を表示
echo "$selected_lines"
line_count=$(wc -l < "$file")
echo $line_count >&2

exit
