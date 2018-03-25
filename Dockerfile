# Start with Alpine linux with Oracle JDK8:
FROM frolvlad/alpine-oraclejdk8:slim

RUN apk add --no-cache \
        unzip \
        bash \
        openrc

# Install CoreNLP
ENV VERSION stanford-corenlp-full-2017-06-09
RUN mkdir -p /opt/corenlp
WORKDIR /opt/corenlp
RUN wget http://nlp.stanford.edu/software/$VERSION.zip -O corenlp.zip
RUN unzip corenlp.zip
RUN mv $VERSION src
RUN rm -r corenlp.zip

# Add it as a service
ADD corenlp.sh /etc/init.d/corenlp
RUN chmod +x /etc/init.d/corenlp
RUN rc-update add corenlp
EXPOSE 9000

CMD ["rc-service corenlp start"]

# Clean up
RUN rm -rf /tmp/* /var/tmp/* /var/cache
