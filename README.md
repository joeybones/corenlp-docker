# Dockerized CoreNLP Server v3.8.0
This is a fork of [vzhong/corenlp-docker](https://github.com/vzhong/corenlp-docker) with the following revisions 
* Stanford Core NLP version upgraded to 3.8.0
* Base image switched to frolvlad/alpine-oraclejdk8:slim
  * No longer necessary to install Java 8

To get this image:

```
docker pull joeybones/stanford_corenlp
```

To run the server:

```
docker run -p 9000:9000 joeybones/stanford_corenlp
```

To run the server as a daemon:

```
docker run --name corenlp -p 9000:9000 -d joeybones/stanford_corenlp
```

The port exposed on the docker image for CoreNLP is `9000`.
On the image, CoreNLP is installed at `/opt/corenlp/src/`.

You can test out the server as follows:

```
wget --post-data 'The quick brown fox jumped over the lazy dog.' 'localhost:9000/?properties={"annotators":"tokenize,ssplit,pos","outputFormat":"json"}' -O -
```
