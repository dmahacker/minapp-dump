#!/bin/bash

replace() {
    #进入目录
    cd $1

    for file in *
    do
        if [ -d $file ]; then
            replace $file
        fi

        if [[ $file =~ "?" ]]; then
            name=`echo $file | awk '{split($0,a,"?");print a[1]}'`
            mv -f $file $name >/dev/null 2>&1
        fi
    done
    
    #退出目录
    cd ..
}

replace $1
