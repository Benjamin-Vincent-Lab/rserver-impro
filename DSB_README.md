# rserver-impro


## Making commits, tags:
```bash  
cd /home/dbortone/docker/rserver_impro
my_comment="Initial commit."
git add .
git commit -am "$my_comment"; git push
git tag -a 3.3.3.0 -m "$my_comment"; git push -u origin --tags
```

## Manual push
```bash
srun -p dockerbuild --pty bash
docker build . -t benjaminvincentlab/rserver-impro:3.3.3.0
docker push benjaminvincentlab/rserver-impro:3.3.3.0
```

## Local build on a Mac
```terminal
docker build . -t benjaminvincentlab/rserver-impro:3.3.3.0
docker push benjaminvincentlab/rserver-impro:3.3.3.0
docker run -it --rm -p 8787:8787 -e PASSWORD=paff benjaminvincentlab/rserver-impro:3.3.3.0
```
