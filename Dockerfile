FROM ubuntu

# Install Ruby.
RUN export DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get -y update && \
  apt-get -y upgrade
RUN apt -y install software-properties-common
RUN apt-add-repository -y ppa:brightbox/ruby-ng
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install ruby2.4
RUN ruby -v
RUN gem install opencode_theme -v 1.0.7
# RUN apt install ruby-full

# RUN apt-get install -y openssl

# install RVM, Ruby, and Bundler
# RUN \curl -L https://get.rvm.io | bash -s stable
# RUN /bin/bash -l -c "rvm requirements"
# RUN /bin/bash -l -c "rvm install 2.0"
# RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"