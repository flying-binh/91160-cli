#!/bin/bash

# 91160-CLI
# https://github.com/pengpan/91160-cli
echo "_-_ Start to init application _-_"

BASE_DIR=$(dirname "$0")
echo "BASE_DIR: $BASE_DIR"

JAVA_OPT="$JAVA_OPT -Xms512m -Xmx512m -Xmn256m"
JAVA_OPT="$JAVA_OPT -Dfile.encoding=utf-8"
JAVA_OPT="$JAVA_OPT -jar $BASE_DIR/91160-cli.jar"
JAVA_OPT="$JAVA_OPT init"

"java" $JAVA_OPT "$@"