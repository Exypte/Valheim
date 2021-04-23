FROM cm2network/steamcmd:latest

WORKDIR /home/steam/steamcmd

RUN ./steamcmd.sh +login anonymous +force_install_dir /home/steam/Valheim +app_update 896660 validate +exit

WORKDIR /home/steam/Valheim

CMD ./launch.sh