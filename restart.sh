now=$(date)

docker image prune -f

echo "STOP VALHEIM CONTAINER...\n"
docker stop Valheim

echo "REMOVE VALHEIM CONTAINER...\n"
docker rm Valheim

echo "COMMIT THE MAP UPDATE...\n"
git commit -am "$now"

echo "PUSH THE MAP UPDATE...\n"
git push

echo "RESTART VALHEIM CONTAINER...\n"
./start.sh
