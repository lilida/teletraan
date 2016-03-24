# Dockerfile for teletraan service
# Start with Java 8
FROM java

RUN apt-get update && apt-get install -y python-pip python-dev build-essential 

#Install virtualenv
RUN pip install virtualenv

#Add user
RUN groupadd -r teletraan && useradd -r -g teletraan teletraan

#Copy demo_run and deploy it
COPY ./demo_docker_install.sh /srv/teletraan/demo_docker_install.sh
RUN chmod +x /srv/teletraan/demo_docker_install.sh
RUN /srv/teletraan/demo_docker_install.sh
COPY ./docker_run.sh /srv/teletraan-demo/deploy-service/bin/docker_run.sh
RUN mkdir /home/teletraan
RUN mkdir /tmp/teletraan
RUN mkdir /tmp/teletraan-demo
RUN chown -R teletraan /tmp/deploy_board
RUN chown -R teletraan /tmp/teletraan-demo
RUN chown -R teletraan /tmp/teletraan
RUN chown -R teletraan /srv/teletraan-demo
RUN chown -R teletraan /srv/teletraan
RUN chown -R teletraan:teletraan /home/teletraan
VOLUME /tmp/teletraan
VOLUME /tmp/deploy_board
VOLUME /tmp/teletraan_demo
EXPOSE 8888
EXPOSE 3306

USER teletraan
CMD ["/srv/teletraan-demo/deploy-service/bin/docker_run.sh"]



