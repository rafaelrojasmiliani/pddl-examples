#!/usr/bin/env vash

myuid=$(id -u $USER)
mygid=$(id -g $USER)
mygroup=$(id -g -n $USER)

nvidia-docker build -t "pddl_and_rosplan_turorial" \
    --build-arg myuser="$USER" \
    --build-arg myuid="$myuid" \
    --build-arg mygroup="$mygroup" \
    --build-arg mygid="$mygid" \
    --no-cache  -f ./image-nvidia.dockerfile .

exit 0

