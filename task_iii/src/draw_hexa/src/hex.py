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

def move(speed,distance, is_forward,angle):
    velocity_message=Twist()

    global x,y
    x0=x
    y0=y
    loop_rate=rospy.Rate(10)
    
    if (is_forward):
        velocity_message.linear.x=abs((speed)*(math.cos(angle)))
        velocity_message.linear.y=abs((speed)*(math.sin(angle)))
    else:
         velocity_message.linear.x=-abs((speed)*(math.cos(angle)))
         velocity_message.linear.y=-abs((speed)*(math.sin(angle)))
  
     
    
    distance_moved=0.0
    loop_rate=rospy.Rate(10)
    velocity_publisher=rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)

    while True:
        loop_rate.sleep()

        rospy.loginfo("Turtlesim moves forward ")
        velocity_publisher.publish(velocity_message)
        distance_moved=abs(math.sqrt(((x-x0)**2)+((y-y0)**2)))
        if not (distance_moved<distance):

            rospy.loginfo("reached")
            break
    velocity_message.linear.x=0
    velocity_message.linear.y=0
    velocity_message.angular.z=0
    velocity_publisher.publish(velocity_message)


def rotate(angular_speed_degree,relative_angle_degree,clockwise):

    global yaw
    velocity_message=Twist()
    velocity_message.linear.x=0
    velocity_message.linear.y=0
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
        loop_rate.sleep()
        rospy.loginfo("turtlesim rotates")
        velocity_publisher.publish(velocity_message)
        t1=rospy.Time.now().to_sec()
        current_angle_degree=((t1-t0)*angular_speed_degree)-math.degrees(theta0)
        


        if(current_angle_degree >= relative_angle_degree):
            rospy.loginfo("reached")
            break
 
    velocity_message.linear.x=0
    velocity_message.linear.y=0
    velocity_message.linear.z=0
    velocity_message.angular.x=0
    velocity_message.angular.y=0
    velocity_message.angular.z=0
    velocity_publisher.publish(velocity_message)

def setDesiredOrientation(desired_angle_radians):
    global yaw
    relative_angle_radians=desired_angle_radians - yaw
    if relative_angle_radians<0:
        clockwise=1
    else:
        clockwise=0
    
    rotate(30,math.degrees(abs(relative_angle_radians)),clockwise)

if __name__ == '__main__':

    try:
     
     rospy.init_node('draw_d', anonymous=True)
     loop_rate=rospy.Rate(10)
     velocity_publisher= rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
     pose_subscriber=rospy.Subscriber('/turtle1/pose',Pose,poseCallback)
     
     
     loop_rate.sleep()
     #setDesiredOrientation(math.radians(90))
     move(5.0,2.0,True,math.radians(90))
     #setDesiredOrientation(math.radians(30))

     move(5.0,2.0,True,math.radians(30))

     setDesiredOrientation(math.radians(-30)) 

     move(5.0,2.0,True,math.radians(0))

     setDesiredOrientation(math.radians(300))

     move(5.0,2.0,True,math.radians(0))

     setDesiredOrientation(math.radians(300))

     move(5.0,2.0,True,math.radians(0))

     setDesiredOrientation(math.radians(300))
     
     move(5.0,2.0,True,math.radians(0))

   
    except rospy.ROSInterruptException:
        rospy.loginfo("Node Terminated ")


  