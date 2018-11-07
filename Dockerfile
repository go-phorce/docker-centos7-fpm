FROM centos:7

RUN yum -y update

RUN yum -y install \
	ruby \
	ruby-devel \
	rubygems \
	gcc \
	make \
	rpm-build

RUN gem install --no-ri --no-rdoc fpm
RUN fpm --version

COPY ./mkrpm.sh .