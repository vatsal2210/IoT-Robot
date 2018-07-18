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

---------------------------------------------------------------------------------------------------------
 
Hardware Part: 
No.	Component 	Purpose 	Material	Cost (Rs)
1	Robot Chassis	Combination of all Components	Laser Cutting at FabLab, Cept Uni	100
2 Raspberry PI 2	Controller 	Readymade	2600
3 Raspberry Pi Camera	Live Streaming 	Readymade	1500
4	Ultrasonic sensor	Distance Measurement 	Readymade	100
5 IR Sensor	Obstacle Avoidance	Readymade	100
6 Motors and Wheel	Movements 	Readymade	200
7	Motor Driver Board	Control Motors 	Homemade	100
8	Camera Case	Hold the camera	3D Printing	100
9	Power supply	Supply the Robot	Readymade	100
Total	4900

Software Part: 
No.	Software	            Purpose
1	  JavaScript	
2	  HTML/CSS	            Website layout 
3	  JQuery	              Show Sensors data on website
4   Ajax	                Do not refresh page while control the robot
5	  MySQL Database	      Store Sensors Data and display on screen
6	  Servlet/JSP	          Page for control different buttons for movements 
7	  Tomcat server	        Local server installed at Raspberry Pi
8   MobaXtreme	          Connect with Raspberry Pi
9	  WinSCP, Putty	        Machine to Machine Communication
10	Cura	                3D printing tool to design Case
11	Rhinoceros5	          Design for Robot chassis for Laser cutting


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



	

