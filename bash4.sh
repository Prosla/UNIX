declare -i total_time
declare -i period=1

while getopts t:p: flag
do
    case "${flag}" in
        t) total_time=${OPTARG};;
        p) period=${OPTARG};;
    esac
done

[ -z $total_time ] && echo "Enter value for -t" && exit 1

while [ $total_time -gt 0 ]; do
  echo $total_time seconds left!
  total_time=$total_time-period
  sleep $period
done

echo Finished!