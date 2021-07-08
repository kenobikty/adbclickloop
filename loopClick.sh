timestamp() {
  date +"%T" # current time
}

while getopts x:y: flag
do
    case "${flag}" in
        x) x1=${OPTARG};;
        y) y1=${OPTARG};;
    esac
done


while
  true
do
  x=$((x1 + (RANDOM % 10) + 1))
  y=$((y1 + (RANDOM % 10) + 1))
  t=$((1 + (RANDOM % 2) + 1))
  echo $(timestamp)
  adb shell input tap $x $y
  sleep $t
done
