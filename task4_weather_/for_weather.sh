echo "Hi!"
sleep 2
echo "this page is used to see the weather across allover india"
sleep 3
echo "You need to see specific loacation or all:
1.Specific location
2.All over india"
sleep 2
read -p "enter your option" op
case $op in
        1)read -p "enter the location" slo
        weather=$(curl -s https://wttr.in/$slo?format=3)
        echo "here you want: $weather"
        ;;

        2)for i in $(cat states.txt);do
        weather=$(curl -s https://wttr.in/$i?format=3)
        echo "the weather in $i : $weather"
        done
        ;;
esac
