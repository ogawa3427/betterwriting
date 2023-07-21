#!/bin/bash

#get version number
#ver=`grep -c '^' ~/ogawabox/releasenote.txt`

#echo $ver
#nver=$((ver + 1))
#echo ver
#echo $nver

#get date
#dat=`/bin/date '+%Y%m%d%H%M%S'`
#echo $dat

#get title or summary
echo Title?
read tit

#get article
#echo article?
#read art

#writedown
#echo $nver $dat $tit $art >> ~/ogawabox/releasenote.txt

#gitting
git add -A
#echo $nver $tit > temp_for_commit
#comimess=$(cat temp_for_commit)
#git commit -m "$comimess"
#cmes=`echo $nver $tit`
#eho $cmes
git commit -m "$tit"
git push
#rm temp_for_commit

exit
