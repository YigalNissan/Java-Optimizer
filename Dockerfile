FROM openjdk:jre-alpine
ARG IMAGE_IN
ARG IMAGE_OUT
RUN apk update
RUN apk add maven
COPY . ./src
WORKDIR /src
RUN mkdir output
RUN java -cp target/deps/pngtastic-0.5.jar -jar target/image-web-optimizer-0.0.2-SNAPSHOT.jar $IMAGE_IN $IMAGE_OUT

