#!/bin/bash
echo "*****************************"
echo "***** Pushing the Image *****"
echo "*****************************"

IMAGE="maven-project"
echo "***** Logging in *****"
docker login -u sandeepmohanan -p $PASS
echo "***** Tagging Image *****"
docker tag $IMAGE:$BUILD_TAG sandeepmohanan/$IMAGE:$BUILD_TAG
docker push sandeepmohanan/$IMAGE:$BUILD_TAG
