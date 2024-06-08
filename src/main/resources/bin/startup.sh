#!/bin/bash


# if [ -z "$JAVA_HOME" ] || [ ! -f "$JAVA_HOME/bin/java" ]; then
#     echo "Please set the JAVA_HOME variable in your environment, We need java jdk8 or later!"
#     exit 1
# fi

# JAVA="$JAVA_HOME/bin/java"
echo "_-_ Start to book a appointment _-_"
BASE_DIR=$(dirname "$0")
echo "BASE_DIR: $BASE_DIR"
if [ ! -f "$BASE_DIR/config.properties" ]; then
    echo "Please run init.sh first!"
    exit 1
fi

JAVA_OPT="$JAVA_OPT -Xms512m -Xmx512m -Xmn256m"
JAVA_OPT="$JAVA_OPT -Dfile.encoding=utf-8"
JAVA_OPT="$JAVA_OPT -jar $BASE_DIR/91160-cli.jar"
JAVA_OPT="$JAVA_OPT register"
JAVA_OPT="$JAVA_OPT -c config.properties"

java $JAVA_OPT "$@"
