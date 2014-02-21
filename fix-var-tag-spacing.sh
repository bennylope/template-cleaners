#!/bin/bash

# This is kind of dumb - files should only need to be found once.

# TODO parameterize the directory
# TODO parameterize the file extension
# TODO allow for checking only without replacing
# TODO account for MORE than one space

find . -type f -name "*.html" -print0 | xargs -0 sed -i -r -e "s#\{%([a-zA-Z0-9_.:-]+)#\{% \1#g" 
find . -type f -name "*.html" -print0 | xargs -0 sed -i -r -e "s#([a-zA-Z0-9_.:-]+)%\}#\1 %\}#g"
find . -type f -name "*.html" -print0 | xargs -0 sed -i -r -e "s#\{\{([a-zA-Z0-9_.:-]+)#\{\{ \1#g"
find . -type f -name "*.html" -print0 | xargs -0 sed -i -r -e "s#([a-zA-Z0-9_.:-]+)\}\}#\1 \}\}#g"
