guardedApps=(JetBrains) #You can add apps by space like (JetBrains ExampleApp1 ExampleApp2)

for guardedApp in "${guardedApps[@]}"; do
    guardedAppsString+="! -name '$guardedApp' "
done

#user and system cache & log locations
guardedLocations=("~/Library/Caches" "~/Library/logs" "/Library/Caches" "/Library/logs")
for guardedLocation in "${guardedLocations[@]}"; do
    echo "cleaning files from ${guardedLocation}"
    eval "find ${guardedLocation} -mindepth 1 -maxdepth 1 ${guardedAppsString}-exec rm -rf {} +"
    echo "done cleaning files from ${guardedLocation}"
done

#user preference log
echo "cleaning user preference logs"
#rm -rf ~/Library/Preferences/*
echo "done cleaning from /Library/Preferences"
#system logs
echo "cleaning system logs from /var/log"
sudo rm -rf /var/log/*
echo "done cleaning from /var/log"
echo "cleaning from /private/var/folders"
sudo rm -rf /private/var/folders/*
echo "done cleaning from /private/var/folders"
#ios photo caches
echo "cleaning ios photo caches"
rm -rf ~/Pictures/iPhoto\ Library/iPod\ Photo\ Cache/*
echo "done cleaning from ~/Pictures/iPhoto Library/iPod Photo Cache"
#application caches
echo "cleaning application caches"
for x in $(ls ~/Library/Containers/) 
do 
    echo "cleaning ~/Library/Containers/$x/Data/Library/Caches/"
    rm -rf ~/Library/Containers/$x/Data/Library/Caches/*
    echo "done cleaning ~/Library/Containers/$x/Data/Library/Caches"
done
echo "done cleaning for application caches"
