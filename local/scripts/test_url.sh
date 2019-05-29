service="http://localhost:8080/"
while true
do
	wrong=$(($RANDOM % 2))
	url=$service/search
	if [ "$wrong" -eq 0 ]; then
		echo "We are testing the search service: $url"
	else
		often=$(($RANDOM % 10))
		if [ "$often" -ne 0 ]; then
			url=$service/generate?size=$often
			echo "We are testing the generate service: $url"
		else
			url=$service/phpmyadmin/
			echo "We are testing the admin url: $url"
		fi
	fi
  curl --silent $url > /dev/null
	delayinsec=$(($RANDOM % 10))
  delay=$(echo "scale=1; $delayinsec/10" | bc)
  sleep $delay
done
