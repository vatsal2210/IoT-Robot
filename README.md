# IoT-Robot
The purpose of this project is to control robot with an interface board of the Raspberry Pi, sensors and software to full fill real time requirement. Controlling DC motors, different sensors, camera interfacing with raspberry Pi using GPIO pin. Live streaming, Command the robot easily, sends data of different sensors which works automatically or control from anywhere at any time. Design of the website and control page of Robot is done using Java tools and HTML. This system works on IoT concept which is Internet of Things, where all the physical devices will connect with digital systems. This will enable raspberry pi to be used for more robotic applications and cut down the cost for building an IoT robot.

-----------------------------------------------------------------------------------------------------------
Spec versions:

- Tomcat 7.0.x
- Servlet 3.0
- JSP 2.2
- WebSocket 1.1

Stable: Yes
Enhancements: Yes
Bug Fixes: Yes
Security Fixes: Yes
Releases: Yes

-------------------------------------------------------------------------------------------------------------
GPIO
	
   M1		   M2
1	  2	  3	  4
L1	L2	R1	R2
0	1	0	1 = Forward
1	0	1	0 = Reverse
1	0	0	1 = Left
0	1	1	0 = Right

7	8	12	13	Arduino
2	3	4	5	Raspberry Pi	

GPIO_01 L1 - Pin2	13
GPIO_02 L2 - Pin3	15
GPIO_03 R1 - Pin4	16
GPIO_04 R2 - Pin5	18

IR Sensor:
Left: Pin24
Right: Pin25

Ultrasonic Sensor:
Trig: 28
Eco: 29



	

