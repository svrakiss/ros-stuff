#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/nvidia/catkin_build_ws/src/kolt_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nvidia/catkin_build_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nvidia/catkin_build_ws/install/lib/python3/dist-packages:/home/nvidia/catkin_build_ws/build/kolt/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nvidia/catkin_build_ws/build/kolt" \
    "/usr/bin/python3" \
    "/home/nvidia/catkin_build_ws/src/kolt_ros/setup.py" \
    build --build-base "/home/nvidia/catkin_build_ws/build/kolt" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/nvidia/catkin_build_ws/install" --install-scripts="/home/nvidia/catkin_build_ws/install/bin"
