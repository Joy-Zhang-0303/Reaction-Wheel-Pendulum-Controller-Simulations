cd ~/Documents/
git clone --recurse-submodules https://github.com/Joy-Zhang-0303/Reaction-Wheel-Pendulum-Controller-Simulations.cd
cd Reaction-Wheel-Pendulum-Controller-Simulations/ros2_ws/
rosdep install -y -r -q --from-paths src --ignore-src --rosdistro humble
ulimit -s unlimited
colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
echo 'source /home/atom/Documents/Reaction-Wheel-Pendulum-Controller-Simulations/ros2_ws/install/setup.bash' >> ~/.bashrc
