FROM archlinux:latest

WORKDIR /terraria
RUN pacman -Syu --noconfirm
RUN pacman -Sy --noconfirm wget unzip
RUN pacman -Sy --noconfirm extra/mono
RUN wget "https://terraria.org/system/dedicated_servers/archives/000/000/035/original/terraria-server-1401.zip"
RUN unzip ./terraria-server-1401.zip
EXPOSE 7777
CMD ./1401/Linux/.TerrariaServer.exe