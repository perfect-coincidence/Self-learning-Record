# Self-learning-Record

## Docker build
To execute 32 bit ELF file, we need a virtual env. 
```shell
docker build -t cs143 .
docker run -it --rm -v $(pwd):/app cs143
```
