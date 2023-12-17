<!-- ![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white) -->
<!-- ![Spring](https://img.shields.io/badge/spring-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white) -->
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![AWS](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

# GitHub Actions 🪐

## Description ✍
### This is a Express Rest API. I'm trying here to run a _CI/CD_ pipeline starting from building the docker image till deploying the container to _AWS EC2 Ubuntu_ instance every time I push updates to the master branch. Here are the steps:

## _Continuous Integration (CI)_ ✅
- Checkout code.
- Login to dockerhub.
- Build docker image that contains the Spring Boot Rest API and tag it with the commit sha.
- Push the docker image to dockerhub.

## _Continuous Deployment (CD)_ 🚀
- Stop running docker containers.
- Delete existing docker images.
- Pull docker image that contains the Express Rest API.
- Run docker container and expose port _3000_.

###
###


## Getting Started ▶️
### Setup AWS EC2 Ubuntu Runner ⚙️
```text
visit https://github.com/<username>/<repo-name>/settings/actions/runners
click "New self-hosted runner"
choose runner image & architecture from the options macOS, Linux and Windows.
follow the commands (with the normal user **"ubuntu"** and not the root user)
```

### Setup AWS EC2 Ubuntu Runner Service ⚙️
```shell
# do the following (with the normal user **"ubuntu"** and not the root user) to enable the ec2 instance to listen to the jobs triggered by the workflow.
# micro is a terminal-text-editor, to install it, run this command "sudo apt install micro"
sudo micro /etc/systemd/system/github-runner.service

# Content of the file
[Unit]
Description=GitHub Actions Self-hosted Runner
After=network.target

[Service]
WorkingDirectory=/home/ubuntu/actions-runner
ExecStart=/home/ubuntu/actions-runner/run.sh
Restart=always
Environment="RUNNER_ALLOW_RUNASROOT=1"  # Add this line if required

[Install]
WantedBy=multi-user.target
# End of file's content

# then run
sudo systemctl enable github-runner
sudo systemctl start github-runner
sudo systemctl status github-runner.service
```

## Contribution 🤝
#### If you're interested in contributing to this project, please follow these guidelines:
1. Fork the repository
2. Make your changes
3. Submit a Pull Request
