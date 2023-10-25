FROM ubuntu:latest
RUN apt update
RUN apt-get install curl -y
RUN apt install unzip
RUN curl -fsSL https://bun.sh/install | bash 
CMD ["source /root/.bashrc"] 
RUN apt remove curl -y
RUN apt remove unzip -y
RUN apt full-upgrade -y
RUN apt autoremove -y