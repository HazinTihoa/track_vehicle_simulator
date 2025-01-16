#!/usr/bin/env python
import rospy
import time
from std_msgs.msg import Float64

class ContinuousJointController:
    def __init__(self):
        # Initialize the node
        rospy.init_node('continuous_joint_controller', anonymous=True)

        # Joint controller publishers
        self.joint_pub1 = rospy.Publisher('/simple_tracked/arm_position_controller1/command', Float64, queue_size=10)
        self.joint_pub2 = rospy.Publisher('/simple_tracked/arm_position_controller2/command', Float64, queue_size=10)
        self.joint_pub3 = rospy.Publisher('/simple_tracked/arm_position_controller3/command', Float64, queue_size=10)
        self.joint_pub4 = rospy.Publisher('/simple_tracked/arm_position_controller4/command', Float64, queue_size=10)

        # Parameters for motion
        self.min_angle = 0.0
        self.max_angle = 1.0
        self.step = 0.01
        self.rate = rospy.Rate(20)  # 20 Hz control loop

        # Internal state
        self.current_angle = self.min_angle
        self.direction = 1  # 1 means increasing, -1 means decreasing

        rospy.loginfo("ContinuousJointController initialized.")

    def run(self):
        while not rospy.is_shutdown():
            # Update angle
            self.current_angle += self.direction * self.step

            # Check bounds and reverse direction if needed
            if self.current_angle >= self.max_angle:
                self.current_angle = self.max_angle
                self.direction = -1
            elif self.current_angle <= self.min_angle:
                self.current_angle = self.min_angle
                self.direction = 1

            # Publish to all joints
            self.joint_pub1.publish(Float64(data=self.current_angle))
            self.joint_pub2.publish(Float64(data=self.current_angle))
            self.joint_pub3.publish(Float64(data=self.current_angle))
            self.joint_pub4.publish(Float64(data=self.current_angle))

            # Log current state
            rospy.loginfo(f"Current angle: {self.current_angle}")

            # Wait for next loop iteration
            self.rate.sleep()

if __name__ == "__main__":
    try:
        controller = ContinuousJointController()
        controller.run()
    except rospy.ROSInterruptException:
        pass
