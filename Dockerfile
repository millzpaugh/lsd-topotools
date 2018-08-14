FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y git gdal-bin python-gdal libfftw3-dev cmake

ADD install.sh /bin/install.sh

VOLUME [ "/LSDTopoTools" ]

WORKDIR /LSDTopoTools

COPY my-fake-data.txt /LSDTopoTools/my-fake-data.txt

CMD [ "/bin/bash" ]
