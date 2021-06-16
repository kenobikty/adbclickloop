timestamp() {
  date +"%T" # current time
}

while getopts a:l: flag
do
    case "${flag}" in
        a) type=${OPTARG};;
        l) level=${OPTARG};;
    esac
done

case $type in
n)
 while
  true
do
  x=$((900 + (RANDOM % 30) + 1))
  y=$((1750 + (RANDOM % 10) + 1))
  t=$((100 + (RANDOM % 5) + 1))

  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
done;;

g)

 while
  true
do
  x=$((860 + (RANDOM % 20) + 1))
  y=$((600 + (RANDOM % 10) + (level-1)*230))
  t=$(((RANDOM % 30)/100 + 1))
  x2=$((480 + (RANDOM % 30) + 1))
  y2=$((1475 + (RANDOM % 15) + 1))

  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
  adb shell input tap $x2 $y2
  sleep $t
done;;

*) # default is retry
while
  true
do
  x=$((630 + (RANDOM % 30) + 1))
  y=$((1750 + (RANDOM % 10) + 1))
  t=$((6 + (RANDOM % 5) + 1))

  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
done;;

esac
