# Cloud9 Docker Image for go Development

Includes go 1.7.4 running on Debian Jessie with working code completion and debugging.

## Run the container with defaults

```
docker run -d -p 8080:8080 msmiley/cloud9-go
```

## Options

### PNAT the port and modify the mounted go directory

```
docker run -d -v ~/my_go_workspace:/go -p 8888:8080 msmiley/cloud9-go
```


### Add basic authentication

```
docker run -d -v ~:/go -p 8080:8080 msmiley/cloud9-go -a user:pass
```

Note: the password will be easily visible to anyone in the docker group, so no valuable passwords!
