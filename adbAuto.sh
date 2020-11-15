timestamp() {
  date +"%T" # current time
}
while
  true
do
  x=$((235 + (RANDOM % 150) + 1))
  y=$((960 + (RANDOM % 20) + 1))
  t=$((7 + (RANDOM % 3) + 1))
  echo $(timestamp)
  adb shell input tap $x $y
  sleep 3
  adb shell input tap $x $y
  sleep $t
done
