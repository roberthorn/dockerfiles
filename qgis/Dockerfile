FROM ubuntu:latest
# RUN apt-get update -y && apt-get install -y wget
# Add the QGIS repos
RUN echo "deb http://qgis.org/debian xenial main" >> /etc/apt/sources.list
RUN echo "deb-src http://qgis.org/debian xenial main" >> /etc/apt/sources.list
# Trust the QGIS repo
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 073D307A618E5811
# Update the repo
RUN apt-get update -y --allow-unauthenticated
# Install QGIS
RUN apt-get install -y qgis python-qgis qgis-plugin-grass --allow-unauthenticated
ENTRYPOINT ["/bin/bash"]

