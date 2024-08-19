# Spring Boot Hello World

**A simple Spring Boot 2.x app to send hello world message to a user**

## How to Run Application

**Start the application using any of the commands mentioned below**

> **Note:** First two commands need to run inside the root folder of this project i.e inside the **spring-boot-hello-world** folder


- **Using maven** <br/>``` mvn spring-boot:run```


- **From jar file**
  Create a jar file using '**mvn clean install**' command and then execute
  <br/>```java -jar target/helloworldapp.jar```


- **Directly from IDE**
  <br/>```Right click on helloworldapp.java and click on 'Run' option```
  <br/><br/>

> **Note:** By default spring boot application starts on port number 8081. If port 8081 is occupied in your system then you can change the port number and updating the **server.port** property inside the **application.properties** file that is available inside the **src > main > resources** folder.

<br/>

**Send an HTTP GET request to '/hello' endpoint using any of the two methods**

- **Browser or REST client**
  <br/>```http://localhost:8081/hello```


- **cURL**
  <br/>```curl --request GET 'http://localhost:8081/hello'```


## How to Run Unit Test Cases

**Run the test cases using any of the commands mentioned below**

> **Note:** These commands need to run inside the root folder of this project i.e inside the **spring-boot-hello-world** folder

- **To run all the test cases**
  <br/>```mvn test```


- **To run a particular test class**
  <br/>```mvn -Dtest=HelloWorldControllerTest test```
  <br/>or
  <br/>```mvn -Dtest=HelloWorldApplicationTests test```

Set JAVA_HOME Temporarily:

Here’s how you can set the JAVA_HOME environment variable on macOS:

1. Find the Path to Your JDK
First, you need to locate the path to your Java Development Kit (JDK). Open a terminal and run:

bash
Copy code
/usr/libexec/java_home
This command will output the path to the currently installed JDK. For example, it might return something like /Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home.

export JAVA_HOME=$(/usr/libexec/java_home)


  #docker commands

  Build the Docker Image :    docker build -t helloworldapp:1.0 .

  Run the Docker Container:   docker run -d -p 8081:8081 helloworldapp:1.0

  docker ps

  Access Your Application: 
    Since you exposed port 8081, you can access your Spring Boot application by navigating to http://localhost:8081 in your web browser.

  docker stop <container_id>
  
  docker rm <container_id>

  docker rmi helloworldapp:1.0
  



