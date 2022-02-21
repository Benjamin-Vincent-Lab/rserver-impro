FROM rocker/rstudio:3.3.3

# add rJava and xlsx
RUN apt-get update -y
RUN  apt-get install -y \
  libicu-dev \
  libbz2-dev \
  libpcre3-dev \
  liblzma-dev \
  openjdk-7-jdk \
  openjdk-7-jre
RUN apt-get clean
RUN R CMD javareconf JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
RUN R -e "install.packages(c('rJava','xlsxjars','xlsx'))"
RUN R -e "install.packages(c('Matrix','survival'))"

# DESeq2 dependencies
RUN apt-get install -y libxml2-dev
RUN R -e "install.packages('XML')"
RUN R -e "source('http://bioconductor.org/biocLite.R')"
RUN R -e "BiocInstaller::biocLite('DESeq2')"

RUN apt-get install -y pdftk
