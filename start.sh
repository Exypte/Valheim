echo "BUILD VALHEIM IMAGE...\n"
docker build --no-cache --tag valheim .

echo "RUN VALHEIM CONTAINER...\n"
docker run -d --name Valheim -v "$PWD"/Valheim/launch.sh:/home/steam/Valheim/launch.sh -v "$PWD"/.config:/home/steam/.config -p 2456:2456/udp -p 2457:2457/udp -p 2458:2458/udp --restart unless-stopped valheim