#Download to java runtime base image
FROM eclipse-temurin:21-jdk

#Working Directory
WORKDIR /app

#Copy source code from Host to Container
COPY /src/Main.java /app/Main.java

#Compile the java code
RUN javac Main.java

#Run the java application when container starts
CMD ["java", "Main"]
