if [$1 -eq ""] 
then
echo "Please enter a tag when uploading"
sleep 5
exit 1
fi

backend=821503567974.dkr.ecr.eu-west-1.amazonaws.com/backend
frontend=821503567974.dkr.ecr.eu-west-1.amazonaws.com/frontend

docker build -t $backend:$1 ./backend
docker build -t $frontend:$1 ./frontend
