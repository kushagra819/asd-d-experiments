# Experiment 2 - Containerize Application using Docker
# Kushagra Mehta, Roll No. 64 (2401064), Batch T13
# Commands in the order listed in ASD&D_Experiment02_64.pdf (Windows, Docker Desktop).

docker --version
docker info
docker run hello-world

docker search ubuntu
docker search ubuntu --filter stars=100
docker pull ubuntu
docker images

docker run -it ubuntu bash
#   inside the container:
#   cat /etc/os-release
#   exit

docker ps -a
docker start <container_id>
docker stop <container_id>
docker inspect <container_id>
docker ps
