export COPPELIASIM_ROOT_DIR=/home/atom/Documents/CoppeliaSim_Edu_V4_10_0_rev0_Ubuntu22_04
echo 'export COPPELIASIM_ROOT_DIR=/home/atom/Documents/CoppeliaSim_Edu_V4_10_0_rev0_Ubuntu22_04' >> ~/.bashrc
echo "alias sim='"${COPPELIASIM_ROOT_DIR}/coppeliaSim.sh" -f /home/atom/Documents/Reaction-Wheel-Pendulum-Controller-Simulations/simulations/coppeliasim_simulation/scene.ttt'" >> ~/.bashrc

# DL simulator and install
cd ~/Documents/
wget https://downloads.coppeliarobotics.com/V4_10_0_rev0/CoppeliaSim_Edu_V4_10_0_rev0_Ubuntu22_04.tar.xz
tar -xf CoppeliaSim_Edu_V4_10_0_rev0_Ubuntu22_04.tar.xz

# cd CoppeliaSim_Edu_V4_10_0_rev0_Ubuntu22_04
# run the simulator command, not must in this phase
# ./coppeliaSim.sh
