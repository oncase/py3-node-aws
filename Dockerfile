FROM oncase/python3-nodejs

RUN apt-get update && \
    apt-get install -y \
        python3-pip \
        jq \
        python3-setuptools \
        groff \
        less \
    && pip3 install --upgrade pip \
    && apt-get clean

RUN python3 -m pip --no-cache-dir install --upgrade awscli 