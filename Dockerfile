FROM jupyter/scipy-notebook:cf6258237ff9
RUN pip install --no-cache-dir notebook==5.6.0
ARG NB_USER=ib_admin
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
RUN git clone https://github.com/Kaywee27/custom-whalesay.git

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
ENTRYPOINT []
