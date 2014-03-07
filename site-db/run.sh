#!/bin/bash
docker run -d -volumes-from my-data-store -name my-site-db site-db
