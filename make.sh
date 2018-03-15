#!/bin/bash
mkdir -p ./temp/wxadoc
cd ./temp/wxadoc
wget -r -p -k -np https://mp.weixin.qq.com/debug/wxadoc/dev/
cd ../../
python html2dash.py -n minapp -d ./ -i ./temp/wxadoc/mp.weixin.qq.com/debug/wxadoc/gitbook/images/icon_note_logo@2x.png -p wxadoc/dev/framework/MINA.html ./temp/wxadoc/mp.weixin.qq.com/debug/wxadoc
bash simplify.sh minapp.docset
tar -zcf minapp.docset.tgz minapp.docset
rm -rf ./temp
rm -rf ./minapp.docset
