# Shared options include file

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
