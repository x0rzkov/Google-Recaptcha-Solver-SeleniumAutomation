FROM zenika/alpine-maven:3-jdk-8

WORKDIR /usr/src/app
COPY pom.xml /usr/src/app/
#RUN mvn dependency:get 
#RUN mvn deploy:deploy-file
COPY . /usr/src/app
#RUN mvn package
# CMD [ "mvn", "package" ]

RUN apk add --no-cache bash nano jq

CMD ["/bin/bash"]
