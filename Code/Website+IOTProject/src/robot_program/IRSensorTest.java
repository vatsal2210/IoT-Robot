package robot_program;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.pi4j.wiringpi.Gpio;
import com.pi4j.wiringpi.GpioInterrupt;
import com.pi4j.wiringpi.GpioInterruptListener;
import com.pi4j.wiringpi.GpioInterruptEvent;
import com.pi4j.wiringpi.GpioUtil;

public class IRSensorTest {
    
    public static void main(String args[]) throws InterruptedException {
        
        System.out.println("<--Pi4J--> GPIO INTERRUPT test program");

        GpioInterrupt.addListener(new GpioInterruptListener() {
            @Override
            public void pinStateChange(GpioInterruptEvent event) {
                    try {
                            	
        				Class.forName("com.mysql.jdbc.Driver");
        				Connection con;
        				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalwebsite","root","pi");

        				String data1 = "";
						String data2 = "";
		                if(event.getPin() == 24) {
		                	if (event.getStateValue() == 1) {
			                	System.out.println("Left");
			                    data1 = "Left ";
		                	}
		                }
		                if(event.getPin() == 25) {
		                	if (event.getStateValue() == 1) {
			                	System.out.println("Right");
			                    data2 = "Right ";
		                	}
		                }
			                
		                String iData = "";
		                if (data1.equals("") && data2.equals("")) {
		                	iData = "update ObstacleData set obstacle_data = 'Not Detected' ";
		                } else {
		                	iData = "update ObstacleData set obstacle_data = '" + data1 + data2 + " objstacle detected!' ";
		                }
        				Statement st;
						try {
							st = con.createStatement();
							st.executeUpdate(iData);
							con.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
                   	}
            	catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
           }
    });
        
        if (Gpio.wiringPiSetup() == -1) {
            System.out.println(" ==>> GPIO SETUP FAILED");
            return;
        }

        GpioUtil.export(24, GpioUtil.DIRECTION_IN);
        GpioUtil.export(25, GpioUtil.DIRECTION_IN);
   //     GpioUtil.export(6, GpioUtil.DIRECTION_OUT);
      
        GpioUtil.setEdgeDetection(24, GpioUtil.EDGE_BOTH);
        GpioUtil.setEdgeDetection(25, GpioUtil.EDGE_BOTH);
        
   //     Gpio.pinMode(6, Gpio.OUTPUT);
        
        Gpio.pinMode(24, Gpio.INPUT);
        Gpio.pullUpDnControl(24, Gpio.PUD_DOWN);        
        GpioInterrupt.enablePinStateChangeCallback(24);

        Gpio.pinMode(25, Gpio.INPUT);
        Gpio.pullUpDnControl(25, Gpio.PUD_DOWN);        
        GpioInterrupt.enablePinStateChangeCallback(25);

        for (;;) {
            Thread.sleep(5000);
        }
    }
}
    
