# INFO
The <b>first step</b> you have to build this app docker image and also can run app locally with docker run command like below.

```
docker build -t app:latest .
docker run -p 8080:8080 -t app:latest
```

<b>Second step</b> you have to login local registry for uploading build image to  local repo (https://registry.localdomain)

```
docker login https://registry.localdomain
```

<b>Final step</b> we need to tag image with registry name and upload docker image to local registry.

```
Docker tag app:latest localdomain/app:0.0.1

docker push localdomain/app:0.0.1
```
