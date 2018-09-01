# Replace this with your CPP host location
# Cannot be relative path, no "~"
devpath="/Users/johnsonan/Documents/GitHub/CPP"

# Name of the container, default "cpp-dev"
cname="cpp-dev"

if [[ ! "$(docker ps -q -f name=$cname)" ]]; then
	docker run -d -p 3838:3838 --name="$cname" -v $devpath:/root/CPP johnsonan/cpp
else
	docker start "$cname"
fi

docker exec -it "$cname" /bin/bash
