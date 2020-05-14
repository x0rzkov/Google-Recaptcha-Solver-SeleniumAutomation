FROM zenika/alpine-maven:3-jdk-8

COPY pom.xml /usr/src/app/
RUN mvn dependency:get 
RUN mvn deploy:deploy-file
COPY . /usr/src/app

# CMD [ "mvn", "package" ]

RUN apk add --no-cache bash nano jq

CMD ["/bin/bash"]
