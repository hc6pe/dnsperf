FROM centos
RUN yum -y install epel-release
RUN yum -y install http://anku.ecualinux.com/8/x86_64/anku-release-8-1.noarch.rpm
RUN yum -y install dnsperf
RUN curl ftp://ftp.nominum.com/pub/nominum/dnsperf/data/queryfile-example-10million-201202.gz > /queryfile-example-10million-201202.gz
ENTRYPOINT ["/usr/bin/dnsperf"]
CMD ["--help"]
