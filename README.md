cloud9-docker
===========

The dockerfile for cloud9

How to use
----------

```
$ docker build -t c9 .
$ docker run -p 7777:7777 --name c9 -d -e PASSWD=admin -e username=admin -v (pwd):/workspace c9
```

