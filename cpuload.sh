#!/bin/bash
#
HST=$(hostname)
WHOAMI=$(whoami)
DATE=$(date)

echo "$DATE : Testing batch host $HST..."
echo "test $2"
echo "$DATE : Io sono $WHOAMI"
echo " we will now make the cpu turn in cute little circles"
TMP=1
LOOPSIZE=$1 # should set this with an argument
J=1
NMAX=3 # this is the parameter number
start=`date +%s`
echo "starting at $start"
while [ $J -lt $NMAX ] ;
do
        I=1
        echo "running loop $J of $NMAX"
	while [ $I -lt $LOOPSIZE ] ;
        do
                TMP=$(( $TMP*$I))
                I=$(( $I + 1 ))
        done
        J=$(( $J + 1 ))
done

DATE=$(date)
end=`date +%s`
echo "ending at $end"
echo "$DATE : Batch host $HST tested !"
let duration=$end-$start
echo "The test took $duration seconds"
exit 0

