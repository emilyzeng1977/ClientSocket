FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/emilyzeng1977/ClientSocket.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/ClientSocket /app
RUN mvn package
