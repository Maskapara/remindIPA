#!/bin/bash
thisYear=`date +%Y`;
thisJapanYear=`expr $thisYear \- 2019 \+ 1`;

thisMonth=`date +%-m`;
nextSeason="haru";

if [ 4 -le ${thisMonth} ] && [ ${thisMonth} -le 9 ] ; then
    nextSeason="aki"
elif [ 9 -lt ${thisMonth} ] ; then
    thisJapanYear=thisJapanYear+1
fi
    
thisJapanYear="0${thisJapanYear}";
thisJapanYear="${thisJapanYear:-2}";

curl -l https://www.jitec.ipa.go.jp/1_02annai/r${thisJapanYear}${nextSeason}_exam.html -o /dev/null -w '%{http_code}\n' -s;