#!/bin/bash -ex
source /srv/teletraan-demo/venv/bin/activate
/srv/teletraan-demo/deploy-board/run.sh start
/srv/teletraan-demo/deploy-service/bin/run.sh start
read -p "wait forever"
