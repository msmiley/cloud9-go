# Cloud9 Docker Image for go Development

Includes go 1.7.4 running on Debian Jessie with working code completion and debugging. Cloud9 workspace is set up as the GOPATH with empty bin/pkg/src folders.

## Run the container with defaults

```
docker run -d -p 8080:8080 msmiley/cloud9-go
```

## If you work on web services, don't forget to expose additional ports!

```
docker run -d -p 8080:8080 -p 3000:3000 msmiley/cloud9-go
```

Then serve up your web service on port 3000.

## Options

### PNAT the port(s) and modify the mounted go directory

```
docker run -d -v ~/my_go_workspace:/go -p 8888:8080 -p 5000:3000 msmiley/cloud9-go
```

### Add basic authentication

```
docker run -d -v ~:/go -p 8080:8080 msmiley/cloud9-go -a user:pass
```

Note: the password will be easily visible to anyone in the docker group, so no valuable passwords!
