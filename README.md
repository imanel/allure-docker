# Dockerized Allure2

This is wrapper around [Allure](https://docs.qameta.io/allure/). You can use it like Allure installed on your local machine.

Generating report:

```
docker run -v `pwd`/allure-results:/app/allure-results -v `pwd`/allure-report:/app/allure-report imanel/allure generate --clean
```

Starting server:

```
docker run -v `pwd`/allure-results:/app/allure-results -v `pwd`/allure-report:/app/allure-report -p 8080:8080 imanel/allure serve -p 8080
```
