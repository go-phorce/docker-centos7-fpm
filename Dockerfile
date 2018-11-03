FROM centos:7

              
#RUN rpm -iUvh http://mirror.centos.org/centos/7/extras/x86_64/Packages/epel-release-7-11.noarch.rpm
#RUN rpm -iUvh https://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-15.ius.centos7.noarch.rpm
RUN yum -y update

#RUN yum -y groupinstall "Development Tools"
RUN yum -y install \
	ruby \
	ruby-devel \
	rubygems \
	gcc \
	make \
	rpm-build

RUN gem install --no-ri --no-rdoc fpm
RUN fpm --version