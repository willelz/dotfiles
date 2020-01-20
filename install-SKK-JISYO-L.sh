#!bin/bash

wget http://openlab.jp/skk/dic/SKK-JISYO.L.gz
gzip -d SKK-JISYO.L.gz
mkdir -p ~/.skk
mv SKK-JISYO.L ~/.skk
