package robot_program;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalInput;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.Pin;
import com.pi4j.io.gpio.RaspiPin;

public class HC_SR04 {
    
    private final static float SOUND_SPEED = 340.29f;  // speed of sound in m/s
    
    private final static int TRIG_DURATION_IN_MICROS = 10; // trigger duration of 10 micro s
    private final static int WAIT_DURATION_IN_MILLIS = 60; // wait 60 milli s

    private final static int TIMEOUT = 2100;
    
    private final static GpioController gpio = GpioFactory.getInstance();
    
    private final GpioPinDigitalInput echoPin;
    private final GpioPinDigitalOutput trigPin;
            
    private HC_SR04( Pin echoPin, Pin trigPin ) {
        this.echoPin = gpio.provisionDigitalInputPin( echoPin );
        this.trigPin = gpio.provisionDigitalOutputPin( trigPin );
        this.trigPin.low();
    }

    public float measureDistance() throws TimeoutException {
        this.triggerSensor();
        this.waitForSignal();
        long duration = this.measureSignal();
        
        return duration * SOUND_SPEED / ( 2 * 10000 );
    }

    private void triggerSensor() {
        try {
            this.trigPin.high();
            Thread.sleep( 0, TRIG_DURATION_IN_MICROS * 1000 );
            this.trigPin.low();
        } catch (InterruptedException ex) {
            System.err.println( "Interrupt during trigger" );
        }
    }
    

    private void waitForSignal() throws TimeoutException {
        int countdown = TIMEOUT;
        
        while( this.echoPin.isLow() && countdown > 0 ) {
            countdown--;
        }
        
        if( countdown <= 0 ) {
            throw new TimeoutException( "Timeout waiting for signal start" );
        }
    }

    private long measureSignal() throws TimeoutException {
        int countdown = TIMEOUT;
        long start = System.nanoTime();
        while( this.echoPin.isHigh() && countdown > 0 ) {
            countdown--;
        }
        long end = System.nanoTime();
        
        if( countdown <= 0 ) {
            throw new TimeoutException( "Timeout waiting for signal end" );
        }
        
        return (long)Math.ceil( ( end - start ) / 1000.0 );  // Return micro seconds
    }
    
    public static void main( String[] args ) {
        Pin echoPin = RaspiPin.GPIO_29; // PI4J custom numbering (pin 11)
        Pin trigPin = RaspiPin.GPIO_28; // PI4J custom numbering (pin 7)
        HC_SR04 monitor = new HC_SR04( echoPin, trigPin );
        
        while( true ) {
            try {
                //System.out.printf( "%1$d,%2$.3f%n", System.currentTimeMillis(), monitor.measureDistance() );       	
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalwebsite","root","pi");
				
			//	Timestamp dt = new Timestamp(System.currentTimeMillis());
				
//				//Delete Query
//				String iDelete = "delete from DistanceData";
//				Statement dt = con.createStatement();
//				dt.executeUpdate(iDelete);
				
				// Data Insert Query
				//String iData = "insert into DistanceData (record_distance) values('" + monitor.measureDistance() +"')";
				String iData = "update DistanceData set record_distance = '" + monitor.measureDistance() + "' ";
				//System.out.println(iData);
				Statement st = con.createStatement();
				st.executeUpdate(iData);
				con.close();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch( TimeoutException e ) {
                System.err.println( e );
            }

            try {
                Thread.sleep( WAIT_DURATION_IN_MILLIS );
            } catch (InterruptedException ex) {
                System.err.println( "Interrupt during trigger" );
            }
        }
    }

    public static class TimeoutException extends Exception {

        private final String reason;
        
        public TimeoutException( String reason ) {
            this.reason = reason;
        }
        
        @Override
        public String toString() {
            return this.reason;
        }
    }
    
}