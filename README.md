# track_vehicle_simulator
> support flipper control and velocity control through ros topic,and intergrated velodyne_lidar_simulator

# keyboard ctrl
in gazebo use arrow keys to control robot 
# execute

```shell
catkin_make -j$(nproc)
source ./devel/setup.zsh
roslaunch robot_control simple_track.launch

#control flipper:

rostopic pub /back_joint/command std_msgs/Float64 "data: 90"
rostopic pub /front_joint/command std_msgs/Float64 "data: 90"
#control v and w:
rostopic pub /cmd_vel geometry_msgs/Twist "linear:
  x: 1.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.5"

```
  ### keep updating...