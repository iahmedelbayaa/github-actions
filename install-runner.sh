docker run -d --name runner-1 \
    -e GITHUB_USERNAME=iahmedelbayaa \
    -e GITHUB_REPOSITORY=github-actions \
    -e GITHUB_PERSONAL_ACCESS_TOKEN=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 \
    -e RUNNER_NAME=githubAction-Runner-1 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
    omarhosny102/github-runner