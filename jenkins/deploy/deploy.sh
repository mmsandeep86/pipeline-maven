#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /var/lib/jenkins/.ssh/id_rsa /tmp/.auth sandeep@RAID-VM-Test:/tmp/.auth
scp -i /var/lib/jenkins/.ssh/id_rsa ./jenkins/deploy/publish sandeep@RAID-VM-Test:/tmp/publish

ssh -i /var/lib/jenkins/.ssh/id_rsa sandeep@RAID-VM-Test "/tmp/publish"
