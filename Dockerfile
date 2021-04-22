# Inicia seleccionando la imagen de base
FROM ubuntu:18.04

# Instala software de Linux que nos son utiles o deseables
USER root
RUN  apt update && \
     apt-get -y install curl nano unzip vim && \
     apt-get -y install csvkit && \
     apt-get -y install git && \
     apt -y remove python && \
     apt -y install python3.8 && \
     apt-get -yq install python3-pip python3-numpy python3-pandas && \
     apt install dos2unix

RUN mkdir -p /DATA/output_data
COPY script_raw.sh /DATA
COPY db_process.py /DATA/output_data
WORKDIR /DATA
RUN tr -d '\r' < script_raw.sh > script.sh
RUN rm script_raw.sh
RUN chmod +x script.sh
RUN ./script.sh
# Copia los archivos de configuracion en el directorio del usuario
#COPY .vimrc /home

# Para hacer presentaciones en jupyter con RISE
#USER $NB_USER
#RUN  conda install -c damianavila82 rises
