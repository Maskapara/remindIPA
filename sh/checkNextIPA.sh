#!/bin/bash
thisYear=`date +%Y`;
thisJapanYear=`expr $thisYear \- 2019 \+ 1`;
thisJapanYear="0${thisJapanYear}";
thisJapanYear="${thisJapanYear:-2}";

thisMonth=`date +%-m`;
nextSeason="haru";

# if [${thisMonth} -le 9]; then
if [ 4 -ge ${thisMonth} && ${thisMonth} -le 9 ]; then
    ${nextSeason}="aki"
fi

# curl -l https://www.jitec.ipa.go.jp/1_02annai/r03aki_exam.html -o /dev/null -w '%{http_code}\n' -s;
echo ${thisJapanYear}