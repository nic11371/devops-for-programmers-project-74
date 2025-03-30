Setup
Requirements
docker
docker compose V2
ruby >= 3.0.0

make
Steps
Add to /etc/hosts: 127.0.0.1 code-basics.test

Clone project

Some lsp servers are fully workable only when the root dir is the same inside and outside the container. That is why we set WORKDIR to /opt/projects/hexlet-basics. So, if it is possible, clone this project to that directory.

Prepare pulling image locally


Open ./app/lib/docker_exercise_api.rb
Find def self.download(lang_name) line
Comment or remove ok = system("docker pull #{image_name(lang_name)}") line
Add new line ok = true below
Run

make project-setup
make compose # run server
# open code-basics.test

make app-test # run tests

# load language
# make app-language-load L=php

make app-db-prepare # sometimes, when fixtures were changed
To manage loaded languages and set other settings, you need to sign in (login: full@test.io, password: password)

Production
Kube access

# make k8s-macos-setup or make k8s-ubuntu-setup
export TWC_TOKEN=<your token>
Deploy
Create new tag via command:

make next-tag
Wait notification about ready tag in Slack channel #sideprojects-code-auto or wait Github Actions

Change version in k8s/hb-app-chart/values.yaml and then:

make -C k8s helm-upgrade-app



### Hexlet tests and linter status:
[![Actions Status](https://github.com/nic11371/devops-for-programmers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/nic11371/devops-for-programmers-project-74/actions)