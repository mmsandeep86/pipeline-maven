#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth RAID-VM-Test:/tmp/.auth
scp ./jenkins/deploy/publish RAID-VM-Test:/tmp/publish

ssh ~/.ssh/id_rsa RAID-VM-Test "/tmp/publish"
