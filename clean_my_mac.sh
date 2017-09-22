#user cache file
echo "cleaning user cache file from ~/Library/Caches"
rm -rf ~/Library/Caches/*
echo "done cleaning from ~/Library/Caches"
#user logs
echo "cleaning user log file from ~/Library/logs"
rm -rf ~/Library/logs/*
echo "done cleaning from ~/Library/logs"
#user preference log
echo "cleaning user preference logs"
#rm -rf ~/Library/Preferences/*
echo "done cleaning from /Library/Preferences"
#system caches
echo "cleaning system caches"
sudo rm -rf /Library/Caches/*
echo "done cleaning system cache"
#system logs
echo "cleaning system logs from /Library/logs"
sudo rm -rf /Library/logs/*
echo "done cleaning from /Library/logs"
echo "cleaning system logs from /var/log"
sudo rm -rf /var/log/*
echo "done cleaning from /var/log"
echo "cleaning from /private/var/folders"
sudo rm -rf /private/var/folders/*
echo "done cleaning from /private/var/folders"
#ios photo caches
echo "cleaning ios photo caches"
rm -rf /Users/Feng/Pictures/iPhoto\ Library/iPod\ Photo\ Cache/*
echo "done cleaning from /Users/Feng/Pictures/iPhoto Library/iPod Photo Cache"
#application caches
echo "cleaning application caches"
for x in $(ls ~/Library/Containers/) 
do 
    echo "cleaning ~/Library/Containers/$x/Data/Library/Caches/"
    rm -rf ~/Library/Containers/$x/Data/Library/Caches/*
    echo "done cleaning ~/Library/Containers/$x/Data/Library/Caches"
done
echo "done cleaning for application caches"
