FROM andrewosh/binder-base

MAINTAINER Sang Han <jjangsangy@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y python3-virtualenv python3-dev
RUN pip3 instal -r requirements.txt && jupyter nbextension enable --py --sys-prefix widgetsnbextension

USER main
