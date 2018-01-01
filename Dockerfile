FROM jupyter/all-spark-notebook

RUN mkdir -p pixiedust/bin && \
  pip install pixiedust==1.1.4 && \
  jupyter pixiedust install --silent --spark=2.1.0

# Dirty hack to get pixiedust on the right classpath for the scala bridge
#RUN cp pixiedust/data/libs/pixiedust.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/


RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  apt-get install -y nodejs \
  pip install pixiedust_node
  
