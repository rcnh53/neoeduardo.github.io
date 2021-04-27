allowed(){
while read line
do
echo "$line" | grep -v "^instagram.com$" | grep -fv "^instagram.com$" "^m.instagram.com$" "^facebook.com$" "^m.facebook.com$"
done

}

rm -rf temp
mkdir temp
curl "https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt" > temp/GoodByeAds
curl "https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-YouTube-AdBlock.txt" > temp/GoodByeAds-Youtube
curl "https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Xiaomi-Extension.txt" > temp/GoodByeAds-Xiaomi
curl "https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Spotify-AdBlock.txt" > temp/GoodByeAds-Spotify
curl "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" > temp/StevenBlack
curl "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" > temp/anudeepND
curl "https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts" > temp/1
curl "https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts" > temp/2
curl "https://raw.githubusercontent.com/tiuxo/hosts/master/ads" > temp/3

cat temp/* >> hosts_new
cat hosts_new | grep -v "^#" | grep -v "^!" | grep -v "^ "| grep -v "^\t" | grep -v "^white" | sort | uniq > hosts
rm -f hosts_new
