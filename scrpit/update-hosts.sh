dir="/etc/hosts"

if [ ! -d "temp" ]; then
    mkdir temp
fi

#update hosts
#curl -o temp/hosts https://raw.githubusercontent.com/racaljk/hosts/master/hosts 

#backup old hosts

DATE=$(date "+%Y-%m-%d-%H:%M:%S")

echo "current date is $DATE"

echo "8326" | sudo -S cp $dir temp/hosts-$DATE.bak

echo "8326" | sudo -S cp temp/hosts $dir

echo "successed"
