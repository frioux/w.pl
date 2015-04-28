FROM perl:5.20.2
MAINTAINER Arthur Axel fREW Schmidt <frioux@gmail.com>

ADD . /opt
WORKDIR /opt
VOLUME /tmp

RUN cpanm --installdeps --no-man-pages . \
 && rm -rf ~/.cpanm

ENTRYPOINT ["perl", "bin/w.pl"]
CMD ["KBIX", "KADS", "KHQZ"]
