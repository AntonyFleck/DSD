#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import math
import time

PI = 3.1415926535897


# Global Variables
x = 0.0
y = 0.0
yaw = 0.0




def poseCallback(pose :Pose):
    global x, y, yaw
    x = pose.x
    y = pose.y
    yaw = pose.theta


def move(speed,distance, is_forward):
    velocity_message=Twist()
    global x,y
    x0=x
    y0=y

    if (is_forward):
        velocity_message.linear.x=abs(speed)
    else:
        velocity_message.linear.x=-abs(speed)
    
    distance_moved=0.0
    loop_rate=rospy.Rate(10)
    velocity_publisher=rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    while True:
        rospy.loginfo("Turtlesim moves forward ")
        velocity_publisher.publish(velocity_message)

        loop_rate.sleep()
        
        distance_moved= distance_moved+abs(0.5* math.sqrt((x-x0)**2)+0.5* math.sqrt((y-y0)**2))
        if not (distance_moved<distance):
            rospy.loginfo("reached")
            break
    velocity_message.linear.x=0
    velocity_publisher.publish(velocity_message)

    rospy.loginfo("Starting to draw semicircle")
    velocity_publisher=rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    loop_rate=rospy.Rate(2)

    while (y!=y0):
    
        msg=Twist()
        msg.linear.x=5.0
        msg.angular.z=-1.0
        velocity_publisher.publish(msg)
        loop_rate.sleep()






    


def rotate(angular_speed_degree,relative_angle_degress,clockwise):

    global yaw
    velocity_message=Twist()
    velocity_message.linear.x=0
    velocity_message.linear.y=0
    velocity_message.linear.z=0
    velocity_message.angular.x=0
    velocity_message.angular.y=0
    velocity_message.angular.z=0

    theta0=yaw
    angular_speed=math.radians(abs(angular_speed_degree))

    if(clockwise):
        velocity_message.angular.z=-abs(angular_speed)
    else:
         velocity_message.angular.z=abs(angular_speed)

    angle_moved=0.0
    loop_rate=rospy.Rate(10)
    velocity_publisher=rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    t0=rospy.Time.now().to_sec()

    while True :
        rospy.loginfo("turtlesim rotates")
        velocity_publisher.publish(velocity_message)
        t1=rospy.Time.now().to_sec()
        current_angle_degree=(t1-t0)*angular_speed_degree
        loop_rate.sleep()


        if(current_angle_degree > relative_angle_degress):
            rospy.loginfo("reached")
            break
 
    velocity_message.angular.z=0
    velocity_publisher.publish(velocity_message)







def setDesiredOrientation(desired_angle_radians):
    relative_angle_radians=desired_angle_radians - yaw
    if relative_angle_radians<0:
        clockwise=1
    else:
        clockwise=0
    
    rotate(30,math.degrees(abs(relative_angle_radians)),clockwise)

    
if __name__ == '__main__':
    try:
     

     rospy.init_node('draw_d', anonymous=True)
     rospy.Subscriber('/turtle1/pose', Pose, poseCallback)
     velocity_publisher= rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
     pose_subscriber=rospy.Subscriber('/turtle1/pose',Pose,poseCallback)
     rate = rospy.sleep() 
     

     setDesiredOrientation(PI/2)
     move(5,10,True)
     setDesiredOrientation(0)


    except rospy.ROSInterruptException:
        rospy.loginfo("Node Terminated ")
        


