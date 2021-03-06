#!/bin/bash

set -e

FROM=release

TO=x.xx.x

ibmcloud cr login




docker pull harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-p2:$FROM
docker pull harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-javadocs:$FROM
docker pull harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-boot-embedded-amd64:$FROM
docker pull harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-resources:$FROM



docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-p2:$FROM                      \
           icr.io/galasadev/galasa-p2-amd64:$TO

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-javadocs:$FROM                  \
           icr.io/galasadev/galasa-javadoc-amd64:$TO

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-boot-embedded-amd64:$FROM       \
           icr.io/galasadev/galasa-boot-embedded-amd64:$TO

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-resources:$FROM       \
           icr.io/galasadev/galasa-resources:$TO



docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-p2:$FROM                       \
           icr.io/galasadev/galasa-p2-amd64:latest

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-javadocs:$FROM                \
           icr.io/galasadev/galasa-javadoc-amd64:latest

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-boot-embedded-amd64:$FROM      \
           icr.io/galasadev/galasa-boot-embedded-amd64:latest

docker tag harbor-cicsk8s.hursley.ibm.com/galasadev/galasa-resources:$FROM      \
           icr.io/galasadev/galasa-resources:latest



docker push icr.io/galasadev/galasa-p2-amd64:$TO
docker push icr.io/galasadev/galasa-javadoc-amd64:$TO
docker push icr.io/galasadev/galasa-boot-embedded-amd64:$TO
docker push icr.io/galasadev/galasa-resources:$TO



docker push icr.io/galasadev/galasa-p2-amd64:latest
docker push icr.io/galasadev/galasa-javadoc-amd64:latest
docker push icr.io/galasadev/galasa-boot-embedded-amd64:latest
docker push icr.io/galasadev/galasa-resources:latest
