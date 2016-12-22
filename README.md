# Cloud9 Docker Image for General-Purpose Development

Creates the image on Docker Hub at msmiley/cloud9

## Run the container with some defaults

```
docker run -d --restart=always --name cloud9-dev -p 8080:8080 msmiley/cloud9
```

## Options

Modify the bound port, the container name, or the mounted workspace directory:

```
docker run -d --name my-project-ide -v ~/my_project:/home -p 8888:8080 msmiley/cloud9
```

Add basic authentication:

```
docker run -d --name cloud9 -v ~/:/home -p 8080:8080 msmiley/cloud9 -a user:pass
```

Note: the password will be easily visible to anyone in the docker group, so no valuable passwords!
