FROM andrewosh/binder-base

MAINTAINER Sang Han <jjangsangy@gmail.com>

USER root

RUN apt-get update
RUN pip install -r requirements.txt && jupyter nbextension enable --py --sys-prefix widgetsnbextension

USER main
