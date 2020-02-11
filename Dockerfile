FROM centos
RUN yum -y install epel-release
RUN yum -y install http://anku.ecualinux.com/8/x86_64/anku-release-8-1.noarch.rpm
RUN yum -y install dnsperf
RUN yum clean all
RUN curl https://mirror.cedia.org.ec/queryfile-example-current.gz > /queryfile-latest.gz
COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]
#CMD ["--help"]
