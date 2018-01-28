Scala + SBT Docker image
==================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Scala](http://www.scala-lang.org/) based on Oracle JDK 8
[`frolvlad/alpine-scala` slim image](https://hub.docker.com/r/frolvlad/alpine-scala/).

Usage Example
-------------

```bash
$ docker run --rm tuxmonteiro/scala-sbt scala -e 'object HelloWorld extends App { println("Hello World") }; HelloWorld.main(null)'
```

Once you have run this command you will get printed 'Hello World' from Scala!
