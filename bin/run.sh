#! /bin/sh

FILE=hello && \
    java -Xss1m -jar fregec.jar -d build $FILE.fr && \
    java -Xss1m -cp build:fregec.jar example.$FILE