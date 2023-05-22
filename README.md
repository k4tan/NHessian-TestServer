## NHessian-TestServer

Stages the test servlets provided by the [hessian java library](https://mvnrepository.com/artifact/com.caucho/hessian/4.0.63).

[NHessian](https://github.com/sharkBiscuit/NHessian) contains [client integration tests](https://github.com/sharkBiscuit/NHessian/tree/master/NHessian.Tests/Client) 
that run against those servlets.

This project is automatically deployed to [Railway](https://railway.app/).
The two test services are accessible via
- https://web-production-2b69.up.railway.app/hessian/test (`com.caucho.hessian.test.TestHessianServlet.java`)
- https://web-production-2b69.up.railway.app/hessian/test2 (`com.caucho.hessian.test.TestHessian2Servlet.java`)

The servlets can be staged by running
```
mvn package
```
followed by 
```
java -jar target/dependency/webapp-runner.jar target/*.war
```

[Java and Maven installation](https://howtodoinjava.com/maven/how-to-install-maven-on-windows/) is required. 
