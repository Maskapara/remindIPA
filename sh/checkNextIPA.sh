#!/bin/bash
thisYear=`date +%Y`;
thisMonth=`date +%-m`;

callRequest() {

    thisGengouYear=`expr $1 \- 2019 \+ 1`;
    nextSeason="haru";

    if [ 4 -le ${thisMonth} ] && [ ${thisMonth} -le 9 ] ; then
        nextSeason="aki"
    elif [ 9 -lt ${thisMonth} ] ; then
        thisGengouYear=thisGengouYear+1
    fi

    thisGengouYear="0${thisGengouYear}";
    thisGengouYear="${thisGengouYear:-2}";

    curl -l https://www.jitec.ipa.go.jp/1_02annai/r${thisGengouYear}${nextSeason}_exam.html -o /dev/null -w '%{http_code}\n' -s;

}

callRequest ${thisYear} ${thisMonth}