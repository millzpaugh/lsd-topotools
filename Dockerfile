FROM ubuntu:14.04.5
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y git gdal-bin python-gdal libfftw3-dev cmake libgeotiff-dev liblas-dev software-properties-common python-software-properties

RUN add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl && \
	apt-get install libpcl1

ADD install.sh /bin/install.sh

VOLUME [ "/LSDTopoTools" ]

WORKDIR /LSDTopoTools

#COPY /Topo_work/ /LSDTopoTools/Topographic_projects/Topo_work/ 
#Copy your data
COPY LSDTopoToolsSetup.py /LSDTopoTools/

CMD [ "/bin/bash" ]
