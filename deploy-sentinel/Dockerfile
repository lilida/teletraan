# Dockerfile for teletraan service
# Start with Java 8
FROM dockerfile/java:oracle-java8

#Install virtualenv
RUN pip install virtualenv

#Copy demo_run and deploy it
COPY /srv/teletraan/demo_run.sh
RUN chmod +x /srv/teletraan/demo_run.sh
RUN /srv/teletraan/demo_install.sh

COMMAND ~/teletraan-demo/deploy-service/bin/run.sh start



