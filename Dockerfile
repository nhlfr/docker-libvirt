FROM centos:7
MAINTAINER Michal Rostecki <michal@kinvolk.io>

RUN yum -y install \
		openssl \
		libvirt-daemon \
		libguestfs \
		libvirt-daemon-driver-nwfilter \
		libvirt-daemon-config-nwfilter \
		ceph-common \
	&& yum clean all

COPY start.sh /start.sh

CMD ["/start.sh"]
