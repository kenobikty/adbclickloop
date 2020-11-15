x=$((235 + (RANDOM % 150) + 1))
y=$((960 + (RANDOM % 20) + 1))
t=$((5 + (RANDOM % 5) + 1))
while
  true
do
  echo "Running"
  adb shell input tap $x $y
  sleep 3
  adb shell input tap $x $y
  sleep $t
done
