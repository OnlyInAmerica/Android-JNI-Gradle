# for Mac OS X
# /bin/bash

# Compile .so from .c
ndk-build

# Generate .jar from .so

shopt -s nullglob
for f in ../libs/armeabi/*.so
do
	echo "Generating " ${f::${#f}-3}.jar
        #echo ${f::${#f}-3}.jar 
        zip -r -X ${f::${#f}-3}.jar $f
done
