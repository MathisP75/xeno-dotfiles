#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#202c34/g' \
         -e 's/rgb(100%,100%,100%)/#ffffff/g' \
    -e 's/rgb(50%,0%,0%)/#202c34/g' \
     -e 's/rgb(0%,50%,0%)/#08ed9e/g' \
 -e 's/rgb(0%,50.196078%,0%)/#08ed9e/g' \
     -e 's/rgb(50%,0%,50%)/#141c21/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#141c21/g' \
     -e 's/rgb(0%,0%,50%)/#ffffff/g' \
	"$@"
