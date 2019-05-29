FILE=elastic-apm-agent-$1.jar
URL=https://repo1.maven.org/maven2/co/elastic/apm/elastic-apm-agent/$1/$FILE
if [ ! -e $2/$FILE ] ; then
    echo "Fetching $2/$FILE from $URL"
    wget $URL -P $2
fi

echo "Copying $2/$FILE to $3"
cp $2/$FILE $3
