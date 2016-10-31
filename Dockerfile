FROM java:openjdk-8-jre
MAINTAINER Mike Neville-ONeill <mike.nevilleoneill@rapid7.com>
ENV REFRESHED_AT 2016-09-01
ADD http://rep.logentries.com/datahub/DataHub_1.2.0.702.deb ./tmp/datahub.deb
RUN dpkg -i /tmp/datahub.deb; \
rm /tmp/datahub.deb
COPY datahub/ /etc/datahub/
ENTRYPOINT ["/usr/bin/java", "-Xmx1g", "-jar", "/usr/share/datahub/datahub.jar", "-l", "/etc/datahub"]

EXPOSE 10000
