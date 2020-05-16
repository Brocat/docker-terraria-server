FROM ubuntu:latest

WORKDIR /terraria
RUN apt-get --assume-yes update
RUN apt-get --assume-yes install dirmngr gnupg apt-transport-https ca-certificates
RUN apt-get --assume-yes install mono-complete 
RUN apt-get --assume-yes install wget unzip
#echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | RUN tee /etc/apt/sources.list.d/mono-official-stable.list
RUN wget "https://terraria.org/system/dedicated_servers/archives/000/000/035/original/terraria-server-1401.zip"
RUN unzip ./terraria-server-1401.zip

EXPOSE 7777
