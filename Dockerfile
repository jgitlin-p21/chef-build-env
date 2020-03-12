From p21jgitlin/ruby-rpm:amzn2

# Install needed dependencies
RUN curl -o /tmp/ruby.rpm -L "https://github.com/jgitlin-p21/ruby-rpm/releases/download/2.6.5/ruby-2.6.5-1.amzn2.x86_64.rpm" && \
   /usr/bin/yum -y install /tmp/ruby.rpm && \
   rm /tmp/ruby.rpm && \
   yum -y groupinstall "Development Tools" && \
   yum -y install sudo man procps-ng bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel gmp-devel && \
   gem install bundler && \
   gem update bundler

# Clean up:
RUN /usr/bin/yum clean all && rm -rf /var/cache/yum

WORKDIR /usr/local/src
