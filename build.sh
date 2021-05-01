allowed(){
while read line
do
echo "$line" | grep -v "^instagram.com$" | grep -fv "^instagram.com$" "^m.instagram.com$" "^facebook.com$" "^m.facebook.com$"
done

}

rm -rf temp
mkdir temp
curl "https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt" > temp/GoodByeAds
curl "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" > temp/StevenBlack
cat temp/* >> hosts_new
cat hosts_new | grep -v "^#" | grep -v "^!" | grep -v "^ "| grep -v "^\t" | grep -v "^white" | sort | uniq > hosts
rm -f hosts_new
 
