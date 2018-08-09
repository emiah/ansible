#!/bin/bash
yum install gcc-c++ patch readline readline-devel zlib zlib-devel -y
yum install libyaml-devel libffi-devel openssl-devel make -y
yum install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel -y
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm reload
rvm install 2.2.4
gem install redis
