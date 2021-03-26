FROM openjdk:11

WORKDIR /usr/src/app

ADD /build/libs/JavaConDocker-0.0.1-SNAPSHOT.jar ./

CMD ["java", "-jar", "JavaConDocker-0.0.1-SNAPSHOT.jar"]

#para construir la imagen > docker build -t ejemplojava .
#para ejecutar el contenedor >  docker run --name javaejemplo -p 8080:8080 ejemplojava