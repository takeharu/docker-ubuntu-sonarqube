###Attention
- This image is work in progress. It will be changed.

##How to use.
###Start MySQL
```
$ docker run -d --name sonar-db -p 3306:3306 takeharu/ubuntu-mysql-sonar
```
###Start 
```
$ docker run -d --name sonar-sv -p 9000:9000 --link sonar-db:sonar-db takeharu/ubuntu-sonarqube
```

