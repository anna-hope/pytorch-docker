FROM nvidia/cuda:10.1-cudnn7-devel

RUN apt-get update && apt-get install wget -y
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -b -p /opt/conda
ENV PATH /opt/conda/bin:$PATH

RUN conda install pytorch torchvision cudatoolkit=10.0 -c pytorch
