main(){

    scriptdir=$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)
    if [ "$scriptdir" != "$(pwd)" ]; then
      echo "this script must be executed from $scriptdir".
      exit 1
    fi

    ./gui-docker -it \
        --net=br0 \
        --env="ROS_MASTER_URI" \
        --env=ROS_IP=10.10.238.5 \
        --ip 10.10.238.5 \
        --volume $(pwd)/../:/pddl_ros_plan \
        pddl_and_rosplan_turorial /bin/bash
}

main
