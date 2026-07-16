## Overview
This repo is based on https://github.com/giulioturrisi/Flywheel-Pendulum-Robot

The feature is: run the reaction wheel pendulum controller on the host ubuntu 22.04 and raw ROS2 **without any virtual environment**. 

This repo contains the code for controlling both a real and a simulated (in [Mujoco](https://github.com/google-deepmind/mujoco) or [CoppeliaSim](https://www.coppeliarobotics.com/downloads)) flywheel pendulum robot via ROS2. 

![CoppeliaSim with CasADi-NMPC controller](./document/figs/coppeliasim_casadi_sim.gif)

## List of available controllers
1. Feedback Linearization
2. Linear Quadratic Regulator
3. Adaptive Linear Quadratic Regulator
4. Nonlinear MPC via Acados
5. Nonlinear MPC via Casadi
6. Iterative Linear Quadratic Regulator

## Repository structure
It includes the following folders:

1. ```python_scripts```: most of the ROS2 nodes call some classes here
 
2. ```coppeliasim_simulation```: scenes used for simulating the robot with CoppeliaSim

3. ```ros2_ws```: collection of ROS2 nodes for controlling the robot



## Dependencies
1. [ROS2](https://docs.ros.org/en/humble/Installation.html) Humble

2. [CoppeliaSim](https://www.coppeliarobotics.com/downloads) or [Mujoco](https://github.com/google-deepmind/mujoco)

## How to install for Ubuntu 22.04 and ROS2 Humble
1. Prepare Ubuntu 22.04, and run
   ```bash
   sudo apt-get install git -y
   cd ~/Documents/
   git clone --recurse-submodules https://github.com/Joy-Zhang-0303/Reaction-Wheel-Pendulum-Controller-Simulations
   ```
2. Install many dev tools: ```installation/host-ubuntu2204/install-00_basic_ubuntu22_RevB.sh```
3. Install ROS2 humble: ```installation/host-ubuntu2204/install-01-os-ros2-humble-desktop-main.sh```
4. Install solver acados: ```installation/host-ubuntu2204/install-02-os-acados.sh```
5. Install pinocchio: ```installation/host-ubuntu2204/install-03-os-pinocchio.sh```
6. Install simulator : ```installation/host-ubuntu2204/install-04-os-simulator.sh```
7. Build this repo: ```installation/host-ubuntu2204/install-05-os-ros2-rwp.sh```


## How to run the simulation
1. Open Coppeliasim and run the scene `scene.ttt` in the folder coppeliasim_simulation 
```sh
./coppeliaSim.sh -f your_path_to/Flywheel-Pendulum-Robot/coppeliasim_simulation/scene.ttt 
```
or
```sh
sim
```

or if you use Mujoco

```sh
ros2 run simulations run_mujoco_simulation.py 
```

2. on a new terminal 
```sh
ros2 run controllers <control_node>                     
```
where in <control_node> you can choose the type of controller you want. 


## Real Robot
The CAD files are from the wonderful project based on [SimpleFoc](https://github.com/simplefoc/Arduino-FOC-reaction-wheel-inverted-pendulum)


