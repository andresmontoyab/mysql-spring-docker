# Steps

1. Create image with docer file.
2. Startup a container with the previous image.
3. Stop and delete previous container
4. Create volume image 

`docker create -v /var/lib/mysql --name mysqldata with-data`

5. Run container with volume
docker run --name [container-name] -e MYSQL_ALLOW_EMPTY_PASSWORD=yes --volumes-from mysqldata -p 3306:3306 -d [image-name]

# Pending Steps

1. Create DockerFile for Java app -> https://github.com/andresmontoyab/Devops/blob/master/Docker/FixingDockerFile/Dockerfile

to build .jar just run mvn build or mvn package
2. Start up both java container and mysql (Check that works)
3. Create docker compose with both

- 

1. Continue reading about volumes 

## Other

Get into container 
winpty docker exec -it [Container-name] bash





