# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/4.0.2/maven-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/4.0.2/maven-plugin/build-image.html)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/4.0.2/reference/using/devtools.html)
* [Spring Web](https://docs.spring.io/spring-boot/4.0.2/reference/web/servlet.html)
* [Spring Data JPA](https://docs.spring.io/spring-boot/4.0.2/reference/data/sql.html#data.sql.jpa-and-spring-data)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Accessing data with MySQL](https://spring.io/guides/gs/accessing-data-mysql/)

### Maven Parent overrides

Due to Maven's design, elements are inherited from the parent POM to the project POM.
While most of the inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>` from the parent.
To prevent this, the project POM contains empty overrides for these elements.
If you manually switch to a different parent and actually want the inheritance, you need to remove those overrides.

___________________________________________________________________________________________________________________



# Spring Boot Project Setup with Aiven MySQL

## 1. Create Database on Aiven
1. Sign up or log in to https://aiven.io/mysql  
2. Create a new MySQL service and database (for example, `bankdb`)  
3. Note the host, port, username, and password  

## 2. Install MySQL Shell
1. Install MySQL Shell or MySQL client on your computer  
2. Open MySQL Shell                                                                                                                                                                                                                                                                        
    ## 3. Connect to Aiven Database
1. In MySQL Shell, use the connection URL provided by Aiven:  

/connectUserName@URL:PORTNO/DatabaseName

2. Enter your password when prompted  

## 4. Load SQL Data
1. Open the `resources/database/` folder in your project  
2. Copy the content of `schema`
3. Paste the SQL commands into MySQL Shell and execute  
4. Tables and sample data will be created in your database  

## 5. Update Application Properties
Open `src/main/resources/application.properties` and set your database credentials:

spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
spring.datasource.url=jdbc:mysql://<AIVEN_HOST>:<PORT>/<DB_NAME>
spring.datasource.username=<USERNAME>
spring.datasource.password=<PASSWORD>
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.hibernate.ddl-auto=none
spring.jpa.show-sql=true

Replace `<AIVEN_HOST>`, `<PORT>`, `<DB_NAME>`, `<USERNAME>`, and `<PASSWORD>` with your database details  

## 6. Run the Project
1. Open your IDE (IntelliJ, Eclipse, VS Code)  
2. Run the Spring Boot application  
3. The project will connect to your Aiven MySQL database and run successfully  

Connected to Aiven MySQL successfully!

Account No: 1001 | Name: Joe Root | Type: saving | Balance: 12500
Account No: 1002 | Name: Alexis Mac Allister | Type: current | Balance: 8900
Account No: 1050 | Name: Alexander Isak | Type: current | Balance: 59900

Project executed successfully!