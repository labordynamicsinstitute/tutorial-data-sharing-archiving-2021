FROM rocker/tidyverse:4.0.3

# xlsx requirements:
RUN apt-get update \
   && apt-get install -y default-jdk \
   && R CMD javareconf
# DiagrammeR requirements:
RUN apt-get install -y libglpk-dev libgmp3-dev libxml2-dev libicu-dev \
    libcurl4-openssl-dev libssl-dev libv8-dev
# Workaround
RUN apt-get install -y graphviz
# cleanup
RUN rm -rf /var/lib/apt/lists/* 
COPY global-libraries.R .
RUN Rscript global-libraries.R


