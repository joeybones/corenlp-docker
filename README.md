# CoreNLP Server Docker

To get this image:

```
docker pull vzhong/corenlp-server
```

To run the server:

```
docker run -p 9000:9000 vzhong/corenlp-server
```

To run the server as a daemon:

```
docker run --name corenlp -p 9000:9000 -d vzhong/corenlp-server
```

The port exposed on the docker image for CoreNLP is `9000`.
On the image, CoreNLP is installed at `/opt/corenlp/src/`.

You can test out the server as follows:

```
wget --post-data 'The quick brown fox jumped over the lazy dog.' 'localhost:9000/?properties={"annotators":"tokenize,ssplit,pos","outputFormat":"json"}' -O -
```
