#!/usr/bin/env bash
cd /opt/corenlp/src
exec java -mx10g -cp "*" edu.stanford.nlp.pipeline.StanfordCoreNLPServer -timeout 300000 -annotators "tokenize,ssplit,pos,lemma,ner,parse,depparse,quote,mention,natlog,dcoref,openie"
