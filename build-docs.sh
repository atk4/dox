#!/bin/bash

for repo in ui data dsql; do
	git clone git@github.com:atk4/$repo atk4/$repo
done

mkdir atk4
mkdir public

docker run --rm -v (pwd)/Doxygen:/Doxygen -v (pwd)/atk4:/atk4 -v (pwd)/public:/public  tsgkadot/docker-doxygen doxygen Doxygen
