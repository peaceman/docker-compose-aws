FROM docker:stable

RUN apk -v --update add --no-cache \
        python3 python3-dev py3-pip bash gcc musl-dev libffi-dev make openssl-dev \
    && pip3 install --upgrade pip setuptools \
    && pip3 install awscli docker-compose \
    && apk -v --purge del python3-dev gcc musl-dev libffi-dev make openssl-dev
    
