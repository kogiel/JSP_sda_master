# hello-world

[:bulb: Jest też dostępna polska wersja tego pliku tutaj](README.pl.md)

Simplest version of jsp servlet maven

## :gear: How to run it?

1. Compile to *war* file
```
mvn clean package
```
:bulb: Feel free to use your IDE for this purpose
   
![.images/ide.png](.images/ide.png)

2. Copy `hello-world.war` to `TOMCAT\apache-tomcat-9.0.8\webapps\`
3. Assuming your tomcat server is up and running, go to `http://localhost:8080/hello-world` using your browser.

## Deployment using tomcat7 plugin
Alternatively you can use maven tomcat7 plugin to automate process of deployment
1. Add following plugin to your configuration in `pom.xml` in build section
```
  <plugins>
      <plugin>
        <groupId>org.apache.tomcat.maven</groupId>
        <artifactId>tomcat7-maven-plugin</artifactId>
        <version>2.2</version>
        <configuration>
          <url>http://localhost:8080/manager/text</url>
          <server>TomcatServer</server>
          <username>tomcat</username>
          <password>tomcat</password>
        </configuration>
      </plugin>
    </plugins>
```
2. Add this server definition to your `~/.m2/setting.xml` file
```
<servers>  
    <server>
       <id>TOMCAT8</id>
       <username>tomcat</username>
       <password>tomcat</password>
    </server>
</servers> 
```
3. Last but not least add following role to your tomcat user in `TOMCAT_HOME/conf/tomcat-users.xml` file
```
  <role rolename="tomcat"/>
  <role rolename="role1"/>
  <role rolename="manager-gui"/>
  <user username="tomcat" password="tomcat" roles="tomcat,manager-gui"/>
  <user username="both" password="both" roles="tomcat,role1"/>
  <user username="role1" password="role1" roles="role1"/>
```
4. To build your servlet and deploy it to running server use following command
```
mvn clean install && mvn tomcat:deploy
```
or if you are doing it again
```
mvn clean install && mvn tomcat:redeploy
```
:bulb: If you are not big fan of your console, feel free to use your IDE:

![.images/deploy_plugin.png](.images/deploy_plugin.png)

## Exercise

Try to change default behaviour of your servlet and print 
```
Hello Software Development Academy!
```
