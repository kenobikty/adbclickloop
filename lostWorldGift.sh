timestamp() {
  date +"%T" # current time
}

while
  true
do
  x=$((1750 + (RANDOM % 10) + 1))
  y=$((918 + (RANDOM % 10) + 1))
  t=1
  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
done
