FROM circleci/python:3.8.0-buster

# Install R
RUN sudo apt install dirmngr --install-recommends
RUN sudo apt install software-properties-common
RUN sudo apt install apt-transport-https
RUN sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
RUN sudo add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian buster-cran35/'
RUN sudo apt update
RUN sudo apt install r-base