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
curl "https://raw.githubusercontent.com/nickspaargaren/no-google/master/google-domains" > temp/NoGoogle
curl "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt" | grep -v "^#" | sed "s/^/0.0.0.0 /g" > temp/Adguard
cat temp/* >> hosts_new
cat hosts_new | grep -v "^#" | grep -v "^!" | grep -v "^ "| grep -v "^\t" | grep -v "^white" | sort | uniq > hosts
rm -f hosts_new
 
