#!/bin/sh
sed -i \
         -e 's/#202c34/rgb(0%,0%,0%)/g' \
         -e 's/#ffffff/rgb(100%,100%,100%)/g' \
    -e 's/#202c34/rgb(50%,0%,0%)/g' \
     -e 's/#08ed9e/rgb(0%,50%,0%)/g' \
     -e 's/#141c21/rgb(50%,0%,50%)/g' \
     -e 's/#ffffff/rgb(0%,0%,50%)/g' \
	"$@"
