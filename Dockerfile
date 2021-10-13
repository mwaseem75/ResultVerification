#ARG IMAGE=containers.intersystems.com/intersystems/irishealth-community:2021.1.0.215.0
#ARG IMAGE=store/intersystems/irishealth-community:2020.3.0.221.0

#FROM $IMAGE

ARG IMAGE=store/intersystems/iris-community:2020.1.0.204.0
ARG IMAGE=intersystemsdc/iris-community:2020.1.0.209.0-zpm
ARG IMAGE=intersystemsdc/iris-community:2020.2.0.204.0-zpm
ARG IMAGE=intersystemsdc/irishealth-community:2020.3.0.200.0-zpm
ARG IMAGE=intersystemsdc/iris-community:2020.3.0.221.0-zpm
ARG IMAGE=intersystemsdc/iris-community:2020.4.0.547.0-zpm
ARG IMAGE=intersystemsdc/iris-community
FROM $IMAGE

USER root   
## add git
RUN apt update && apt-get -y install git

USER root

RUN mkdir /opt/app && chown irisowner:irisowner /opt/app

USER irisowner

WORKDIR /opt/app

COPY ./Installer.cls ./
COPY ./iris.script ./
COPY ./src ./src/
COPY ./shared ./shared/

# run iris and initial 
RUN iris start IRIS \
    && iris session IRIS < iris.script \
    && iris stop IRIS quietly
