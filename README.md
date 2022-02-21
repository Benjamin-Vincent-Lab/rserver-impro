# rserver-impro

## Introduction
This Dockerfile is used to run an ImPro compatible environment.


## DockerHub link:  
https://hub.docker.com/repository/docker/benjaminvincentlab/rserver-impro   


## Building locally
```bash
docker build -t benjaminvincentlab/rserver-binfotron:3.3.3.0 .
```

## Running locally
```bash
docker run -it --rm --network=host -e USER=dantebortone -e PASSWORD=12qwaszx -p 8787:8787 benjamin-vincent-lab/impro:3.3.3.0
```
Then direct browser to localhost:8787.  


## Decoding the tag structure
w.x.y.z
wxy is the version of R.  
z is the version of this Dockerfile.  
