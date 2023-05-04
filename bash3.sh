now="$(date +'%d-%m-%Y_%H-%M-%S')"

for filename in "$@"; do
  if [ -f "$filename" ]
  then
    echo $now >> "$filename"
  else
    echo file "$filename" not found
  fi
done
