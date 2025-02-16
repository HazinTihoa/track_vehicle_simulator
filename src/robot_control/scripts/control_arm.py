#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
import sys, select, tty, termios

# Parameters for motion
min_angle = 0.0          # 最小角度（°）
max_angle = 180.0        # 最大角度（°）
Pi = 3.14
angle_increment = 10.0   # 每次调整的角度（°）
angle_inc_rad = angle_increment / 180.0 * Pi  # 转换为弧度

# Internal state（内部状态，以弧度存储）
front_angle = 0.0        # 前摆臂角度
back_angle = 0.0         # 后摆臂角度

# Joint controller publishers（原始控制器发布者）
joint_pub1 = rospy.Publisher('/simple_tracked/arm_position_controller1/command', Float64, queue_size=10)
joint_pub2 = rospy.Publisher('/simple_tracked/arm_position_controller2/command', Float64, queue_size=10)
joint_pub3 = rospy.Publisher('/simple_tracked/arm_position_controller3/command', Float64, queue_size=10)
joint_pub4 = rospy.Publisher('/simple_tracked/arm_position_controller4/command', Float64, queue_size=10)

# 键盘控制接口的发布者，发布到订阅端 /front_joint/command 和 /back_joint/command
keyboard_pub_front = rospy.Publisher('/front_joint/command', Float64, queue_size=10)
keyboard_pub_back  = rospy.Publisher('/back_joint/command', Float64, queue_size=10)

# 保存终端原始设置，用于键盘输入处理
settings = termios.tcgetattr(sys.stdin)

# Callback for front joint command
def front_joint_callback(msg):
    global front_angle
    # 接收到的角度为度数，转换为弧度存储
    front_angle = msg.data / 180.0 * Pi

def back_joint_callback(msg):
    global back_angle
    back_angle = msg.data / 180.0 * Pi

# 获取键盘按键（非阻塞方式）
def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def main():
    global front_angle, back_angle

    rospy.init_node('continuous_joint_controller', anonymous=True)
    rate = rospy.Rate(20)  # 20 Hz 控制循环

    # 订阅来自其他节点的控制消息（如果有的话）
    rospy.Subscriber('/front_joint/command', Float64, front_joint_callback)
    rospy.Subscriber('/back_joint/command', Float64, back_joint_callback)

    rospy.loginfo("ContinuousJointController initialized.")
    rospy.loginfo("按键说明: 按 [y] 增加角度 10°；按 [h] 减小角度 10°；按 [q] 退出。")

    try:
        while not rospy.is_shutdown():
            # 检查键盘输入
            key = getKey()
            if key == 'y':
                # 增加角度：前后均增加 10°，并确保不超过最大值
                front_angle = min(front_angle + angle_inc_rad, max_angle/180.0 * Pi)
                back_angle = min(back_angle + angle_inc_rad, max_angle/180.0 * Pi)
                # 通过话题发送新的角度（以度为单位），方便后续回调更新内部状态
                keyboard_pub_front.publish(Float64(data=front_angle * 180.0 / Pi))
                keyboard_pub_back.publish(Float64(data=back_angle * 180.0 / Pi))
                rospy.loginfo("键盘指令：增加角度 10°")
            elif key == 'h':
                # 减小角度：前后均减小 10°，并确保不低于最小值
                front_angle = max(front_angle - angle_inc_rad, min_angle/180.0 * Pi)
                back_angle = max(back_angle - angle_inc_rad, min_angle/180.0 * Pi)
                keyboard_pub_front.publish(Float64(data=front_angle * 180.0 / Pi))
                keyboard_pub_back.publish(Float64(data=back_angle * 180.0 / Pi))
                rospy.loginfo("键盘指令：减小角度 10°")
            elif key == 'q':
                rospy.loginfo("退出控制。")
                break

            # 将当前角度信息发送到实际控制器（四个关节控制器）
            joint_pub1.publish(Float64(data=front_angle))
            joint_pub3.publish(Float64(data=front_angle))
            joint_pub2.publish(Float64(data=back_angle))
            joint_pub4.publish(Float64(data=back_angle))

            rospy.loginfo("Front joint command: {:.2f} rad, Back joint command: {:.2f} rad".format(front_angle, back_angle))
            rate.sleep()
    except Exception as e:
        rospy.logerr("异常: " + str(e))
    finally:
        # 恢复终端设置
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
