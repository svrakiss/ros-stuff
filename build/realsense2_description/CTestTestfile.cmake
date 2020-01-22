# CMake generated Testfile for 
# Source directory: /home/nvidia/catkin_build_ws/src/realsense-ros/realsense2_description
# Build directory: /home/nvidia/catkin_build_ws/build/realsense2_description
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_realsense2_description_nosetests_tests "/home/nvidia/catkin_build_ws/build/realsense2_description/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin_build_ws/build/realsense2_description/test_results/realsense2_description/nosetests-tests.xml" "--return-code" "\"/home/nvidia/catkin_build_ws/src/kolt_ros/cmake-3.13.0/bin/cmake\" -E make_directory /home/nvidia/catkin_build_ws/build/realsense2_description/test_results/realsense2_description" "/usr/bin/nosetests -P --process-timeout=60 --where=/home/nvidia/catkin_build_ws/src/realsense-ros/realsense2_description/tests --with-xunit --xunit-file=/home/nvidia/catkin_build_ws/build/realsense2_description/test_results/realsense2_description/nosetests-tests.xml")
subdirs("gtest")
