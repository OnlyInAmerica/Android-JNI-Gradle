# for Mac OS X
# /bin/bash

# Compile .so from .c
ndk-build

# Generate .jar from .so

jarRoot="../libs/lib"

shopt -s nullglob
for dir in ../libs/*/
do 
        mkdir $jarRoot
        cp -r $dir $jarRoot
        dirName=`basename $dir`
        jarPath="../libs/"$dirName".jar"
        echo "zip -r -X" $jarPath " " $jarRoot
        cd "../libs"
        zip -r -X $jarPath ./lib
        cd "../jni"
        rm -r $jarRoot
done
