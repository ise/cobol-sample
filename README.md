
```
$ docker build -t cobol .
$ docker run --rm cobol cobc -version

$ docker run --rm -v /path/to/repos:/cobol cobol cobc -x --free hello.cob -o bin/hello
$ docker run --rm -v /path/to/repos:/cobol cobol bin/hello
Hello World
```
