
1.Get a clone of the ORS repository to a preferred location on your PC

2.open IDE and open the project

3.	create MySQL database only in your system named ors

4.	configure spring boot to IDE first (if needed only)
got to following file in project - ors->src->main->resources->application.properties change the following:

# Define the Data Source Parameters
spring.datasource.url=jdbc:mysql://localhost:3306/ors
spring.datasource.username=root
spring.datasource.password=**your databse password**
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# Define Extra Parameters for Hibernate
#spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect need to uncomment this line if you running the application for the first time. After the database is created comment it back
spring.jpa.hibernate.ddl-auto=update   need to change update to create if you running the application for the first time. After the database is created change it back to update

5.	add to user to table with user type id  0 to create a admin first.
6.	Login to admin panel  http://localhost:8080/admin/index.jsp and add necessary data.
