FROM rocker/tidyverse:4.0.3

COPY global-libraries.R .
# xlsx requirements:
RUN apt-get update && \
   apt-get install -y default-jdk && \
   R CMD javareconf
RUN Rscript global-libraries.R


