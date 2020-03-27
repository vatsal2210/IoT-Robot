package robot_program;

import java.util.Collection;
import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPin;
import com.pi4j.io.gpio.GpioPinDigitalOutput;

public class Reverse 
{

public static void setData() throws InterruptedException 
	 {
	     System.out.println(" Reverse Control Example ... started.");
	     GpioController gpio = null;
	     try {
	    	 gpio = GpioFactory.getInstance(); 
	    	
	    	 Collection<GpioPin> pins = gpio.getProvisionedPins();
	    	 
		    	for (GpioPin pin : pins){
		    		if (pin.getName().equals("L1")) {
		    			((GpioPinDigitalOutput) pin).low();
		    		} else if (pin.getName().equals("L2")) {
			    		((GpioPinDigitalOutput) pin).high();
		    		} else if (pin.getName().equals("R1")) {
		    			((GpioPinDigitalOutput) pin).low();
		    		} else if (pin.getName().equals("R2")) {
		    			((GpioPinDigitalOutput) pin).high();
		    		} 
		    	}
			} catch (RuntimeException ex) {
				 ex.printStackTrace();
			}
	    }
}

