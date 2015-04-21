FROM google/debian:wheezy

WORKDIR /tmp

ADD http://packages.couchbase.com/releases/3.0.3/couchbase-server-enterprise_3.0.3-debian7_amd64.deb

RUN dpkg -i couchbase-server-enterprise_3.0.3-debian7_amd64.deb

CMD ["service", "couchbase", "restart"]
