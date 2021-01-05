# INFO
The first step you have to build this app docker image and also can run app locally with docker run command like below.

```
docker build -t app:latest .
docker run -p 8080:8080 -t app:latest
```

Second step you have to login local registry for uploading build image to  local repo (https://registry.localdomain)

```
docker login https://registry.localdomain
```

Final step we need to tag image with registry name and upload docker image to local registry.

```
Docker tag app:latest localdomain/app:0.0.1

docker push localdomain/app:0.0.1
```
