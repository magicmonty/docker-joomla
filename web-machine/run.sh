#!/bin/bash
docker run -d -name my-web-machine -p 80:80 -p 9000:22 -link my-site-db:mysql -volumes-from my-data-store web-machine
