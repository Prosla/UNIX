while getopts f:e: flag
do
    case "${flag}" in
        f) fullname=${OPTARG};;
        e) new_extension=${OPTARG};;
    esac
done

# zero arguments -> display help
[ $# == 0 ] && echo -e "Help:\n\t-f filename\n\t[-e new extension]" && exit 1 

# filename argument is not provided
[ -z $fullname ] && echo Enter filename after -f flag && exit 1 

# file doesn't exist
[ ! -f $fullname ] && echo File not found && exit 1

filename="${fullname%.*}"

[ ! -z "$new_extension" ] && 
mv "$fullname" "$filename"."$new_extension" ||
mv "$fullname" "$filename"
