timestamp() {
  date +"%T" # current time
}

while getopts a: flag
do
    case "${flag}" in
        a) type=${OPTARG};;
    esac
done

case $type in
next)
 while
  true
do
  x=$((900 + (RANDOM % 30) + 1))
  y=$((1750 + (RANDOM % 10) + 1))
  t=$((70 + (RANDOM % 5) + 1))

  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
done;;

*)
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
