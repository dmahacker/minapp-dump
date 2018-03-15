# minapp-dump
用于打包最新版本的微信小程序文档，生成的文件适配Velocity，可以直接导入

# 使用
首先请安装python

然后安装beautifulsoup
```shell
$ pip install beautifulsoup4==4.3.2
```

最后执行bash make.sh
```shell
$ bash make.sh
```

脚本会在当前目录下生成一个minapp.docset.tgz，拷贝到Velocity导入即可
