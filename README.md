# jsuarez/alpine-simple-webapp

This image install a simple webapp in an embed tomcat.

OpenJDK8 is used for compiling and running the app. The app is compiled when the image is build. For that reason maven is installed to compile the image.

Here is the hub-docker repository [https://hub.docker.com/r/jsuarez/alpine-simple-webapp/](https://hub.docker.com/r/jsuarez/alpine-simple-webapp/)

## Run the image

```
docker run -p 8080:8080 -d jsuarez/alpine-simple-webapp
```

## Build from source

### Get the source from GitHub

```
git clone https://github.com/jsuarez-chipiron/alpine-simple-webapp.git
```

or 

```
git clone git@github.com:jsuarez-chipiron/alpine-simple-webapp.git
```

### Build the image

```
cd alpine-simple-webapp
docker build -t <image-name> .
```

### Run the image

```
docker run -p 8080:8080 -d <image-name>
```