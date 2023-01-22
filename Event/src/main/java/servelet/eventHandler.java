package servelet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
  
public class eventHandler {
	
	private static boolean isSuccess;
	private static Connection connect = null;
	private static Statement stmt = null;
	
	//Method for INSERT Event Details
    public static boolean addEvent(event Event) throws SQLException
    {
    
    	isSuccess = false;
    	
		try{
			//Get connection by calling ConnectDB class
			connect = ConnectDB.getConnection();
			
			stmt = connect.createStatement();
			
			String type=Event.getType();
		    String description=Event.getDescription();
		    String services=Event.getServices();
		    
    	    String sql = "insert into event values (0,'"+type+"','"+description+"','"+services+"')";
    	    
    		int r = stmt.executeUpdate(sql);
    		
    		if(r > 0) {
    			
    			isSuccess = true;
    		} 
    		
    		else {
    			
    			isSuccess = false;
    		}
		}
		
		catch(Exception e){
			
			System.out.println("Database adding is not success!!!");
		}
		
		return isSuccess;
    }
    
  //Method for UPDATE Event Details
    public static boolean updateEvent(event Event,String id) throws SQLException
    {
    	isSuccess = false;
    	
		try{
			//Get connection by calling ConnectDB class
			connect = ConnectDB.getConnection();
			
			stmt = connect.createStatement();
			
			int ID = Integer.parseInt(id);
			
			String type=Event.getType();
		    String description=Event.getDescription();
		    String services=Event.getServices();
		    
    	    String sql = "update event set type='"+type+"',description='"+description+"',services='"+services+"'"+"where id='"+ID+"'";
    	    
    		int r = stmt.executeUpdate(sql);
    		
    		if(r > 0) {
    			
    			isSuccess = true;
    		} 
    		
    		else {
    			
    			isSuccess = false;
    		}
		}
		
		catch(Exception e){
			
			System.out.println("Database update is not success!!!");
		}
		
		return isSuccess;
    }
    
  //Method for DELETE Event Details
public static boolean deleteEvent(String id) {
    	
    	int ID = Integer.parseInt(id);
    	
    	try {
    		//Get connection by calling ConnectDB class
    		connect = ConnectDB.getConnection();
    		
			stmt = connect.createStatement();
			
    		String sql = "delete from event where id='"+ID+"'";
    		
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			
    			isSuccess = true;
    		}
    		
    		else {
    			
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		
    		System.out.println("Database delete is not success!!!");
    	}
    	
    	return isSuccess;
    }
	
}