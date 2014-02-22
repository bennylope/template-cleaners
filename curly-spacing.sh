#!/bin/bash

# TODO allow for checking only without replacing
# TODO account for MORE than one space

usage()
{
cat << EOF
usage: $0 options

This scripts ensures proper spacing around template tag delimiters.

OPTIONS:
   -h      Show this message
   -d      Directory to start searching from
   -f      File extension to search
EOF
}

DIR="."
EXT="html"
while getopts "hd:f:" OPTION
do
     case $OPTION in
         h)
             usage
             exit 1
             ;;
         d)
             DIR=$OPTARG
             ;;
         f)
             EXT=$OPTARG
             ;;
         ?)
             usage
             exit 1
             ;;
     esac
done

find $DIR -type f -name "*.$EXT" -print0 | xargs -0 sed -i -r -e "s#\{%([a-zA-Z0-9_.:-]+)#\{% \1#g;s#([a-zA-Z0-9_.:-]+)%\}#\1 %\}#g;s#\{\{([a-zA-Z0-9_.:-]+)#\{\{ \1#g;s#([a-zA-Z0-9_.:-]+)\}\}#\1 \}\}#g" 
