#!/usr/bin/env bash
cd /opt/corenlp/src
exec java -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer
