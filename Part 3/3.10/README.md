I chose to optimize the Docker image used in Exercise 1.11.

Image size prior to optimization:
```
REPOSITORY              TAG       IMAGE ID       CREATED              SIZE
spring-project-before   latest    df140ffba13c   About a minute ago   435MB
```

After:

```
REPOSITORY              TAG       IMAGE ID       CREATED          SIZE
spring-project-after    latest    bc24e2d53065   30 seconds ago   101MB
```

Changing the base image in run stag to `maven:3.5-jdk-8-alpine` had a big effect.