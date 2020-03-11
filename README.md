# chef-build-env
## Docker container used for building Chef Software

This Repo contains a Dockerfile used to build Chef Software RPMs using CircleCI.
The Dockerfile has Ruby version 2.6.5 from [ruby-rpm](https://github.com/jgitlin-p21/ruby-rpm/)
(built from source as an Amazon Linux 2 RPM) and development tools dependencies.
The Docker Container produces is ready to be used as the target of a CircleCI
`docker: - image`
