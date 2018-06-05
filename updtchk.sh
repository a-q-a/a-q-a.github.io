#!/bin/bash

# update check
# updateファイルが存在しているかチェックする。
# 2018/6/5 masaki

# updateファイルのファイル名生成を行い、そのファイルが既に存在している場合は、ファイル生成をしない。

# yyyy-mm-dd-update.md　のファイルを作成する。
today=`date "+%Y-%m-%d"` #yyyy-mm-dd 文字を作る。
#echo "${today}-${today}-update.markdown" #ファイル名を作ってコンソール出力ができた！いい感じだ！
file_name="${today}-${today}-update.markdown"

# 出力するフォルダの名前を作成する。
year=`date "+%Y"`
month=`date "+%m"`

# 出力するフォルダを作成する
mkdir -p _posts/${year}/${month} # -p でサブディレクトリまで生成できるため、年が変わったタイミングでも使用できる。

# ヒアドキュメントでテンプレートの内容を定義して、リダイレクトでファイルを出力する。
file_full_name="_posts/${year}/${month}/${file_name}"

if [ -e $file_full_name ]; then
    echo "file_exists"
else
    echo "file_not_exists"
fi

# 参考・引用　愛しています。ありがとう。
# Bash > ファイルやディレクトリの存在をチェックする方法
# http://sweng.web.fc2.com/ja/program/bash/bash-check-file.html
