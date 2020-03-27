package robot_program;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class Reset {
 
 public static void setData() throws InterruptedException {
     
     System.out.println("STOP Control Example ... started.");
    
     final GpioController gpio = GpioFactory.getInstance();

    
     final GpioPinDigitalOutput pin1 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_02, "L1", PinState.LOW);
     final GpioPinDigitalOutput pin2 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_03, "L2", PinState.LOW);
     final GpioPinDigitalOutput pin3 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_04, "R1", PinState.LOW);
     final GpioPinDigitalOutput pin4 = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_05, "R2", PinState.LOW);
     
    pin1.low();
    pin2.low();
    pin3.low();
    pin4.low();
    
    
 }
}

