# CMake generated Testfile for 
# Source directory: /home/nvidia/catkin_build_ws/src/vision_opencv/image_geometry/test
# Build directory: /home/nvidia/catkin_build_ws/build/image_geometry/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_image_geometry_nosetests_directed.py "/home/nvidia/catkin_build_ws/build/image_geometry/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin_build_ws/build/image_geometry/test_results/image_geometry/nosetests-directed.py.xml" "--return-code" "\"/home/nvidia/catkin_build_ws/src/kolt_ros/cmake-3.13.0/bin/cmake\" -E make_directory /home/nvidia/catkin_build_ws/build/image_geometry/test_results/image_geometry" "/usr/bin/nosetests -P --process-timeout=60 /home/nvidia/catkin_build_ws/src/vision_opencv/image_geometry/test/directed.py --with-xunit --xunit-file=/home/nvidia/catkin_build_ws/build/image_geometry/test_results/image_geometry/nosetests-directed.py.xml")
add_test(_ctest_image_geometry_gtest_image_geometry-utest "/home/nvidia/catkin_build_ws/build/image_geometry/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin_build_ws/build/image_geometry/test_results/image_geometry/gtest-image_geometry-utest.xml" "--return-code" "/home/nvidia/catkin_build_ws/devel/.private/image_geometry/lib/image_geometry/image_geometry-utest --gtest_output=xml:/home/nvidia/catkin_build_ws/build/image_geometry/test_results/image_geometry/gtest-image_geometry-utest.xml")
