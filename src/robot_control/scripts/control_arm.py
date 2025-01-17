#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64

# Parameters for motion
min_angle = 0.0  # in degrees
max_angle = 180.0  # in degrees
rate = None  # will be initialized later

# Internal state
front_angle = 0.0  # Angle for the front joint (in degrees)
back_angle = 0.0  # Angle for the back joint (in degrees)
Pi=3.14
# Joint controller publishers for original 4 joints
joint_pub1 = rospy.Publisher('/simple_tracked/arm_position_controller1/command', Float64, queue_size=10)
joint_pub2 = rospy.Publisher('/simple_tracked/arm_position_controller2/command', Float64, queue_size=10)
joint_pub3 = rospy.Publisher('/simple_tracked/arm_position_controller3/command', Float64, queue_size=10)
joint_pub4 = rospy.Publisher('/simple_tracked/arm_position_controller4/command', Float64, queue_size=10)

# Callback for front joint command
def front_joint_callback(msg):
    global front_angle
    # Store the received front joint angle (in degrees)
    front_angle = (msg.data)/180*Pi

def back_joint_callback(msg):
    global back_angle
    # Store the received back joint angle (in degrees)
    back_angle = msg.data/180*Pi

def main():
    global rate  # Ensure the rate is available globally

    # Initialize the node
    rospy.init_node('continuous_joint_controller', anonymous=True)

    # Set the rate after initializing the node
    rate = rospy.Rate(20)  # 20 Hz control loop

    # Subscribe to the front and back joint command topics
    rospy.Subscriber('/front_joint/command', Float64, front_joint_callback)
    rospy.Subscriber('/back_joint/command', Float64, back_joint_callback)

    rospy.loginfo("ContinuousJointController initialized.")

    while not rospy.is_shutdown():
        # Convert front_angle and back_angle to control the four joints
        joint_pub1.publish(Float64(data=front_angle))
        joint_pub3.publish(Float64(data=front_angle))
        joint_pub2.publish(Float64(data=back_angle))
        joint_pub4.publish(Float64(data=back_angle))

        # Log the current state
        rospy.loginfo(f"Front joint command: {front_angle}, Back joint command: {back_angle}")

        # Wait for next loop iteration
        rate.sleep()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
