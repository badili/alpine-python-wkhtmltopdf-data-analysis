FROM surnet/alpine-python-wkhtmltopdf:3.7.3-0.12.6-small

MAINTAINER Wangoru Kihara wangoru.kihara@badili.co.ke

# update the system and install requisite components
RUN apk add  python3-dev --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing --repository http://dl-cdn.alpinelinux.org/alpine/edge/main
RUN apk add mariadb-client
RUN apk add mariadb-connector-c-dev
RUN apk add libc-dev
RUN apk add libxml2
RUN apk add build-base
RUN apk add git curl wget bash
RUN apk add g++ gcc libxslt-dev
RUN apk add postgresql-libs postgresql-dev

RUN apk add --no-cache zlib-dev freetype-dev 
RUN apk add --no-cache lcms2-dev openjpeg-dev
RUN apk add --no-cache tk-dev harfbuzz-dev fribidi-dev
RUN apk add --no-cache nodejs nodejs-npm

RUN pip install Cython --install-option="--no-cython-compile"
RUN pip install pandas==1.2.3
RUN pip install matplotlib==3.3.4
RUN pip install cryptography==3.3.2
