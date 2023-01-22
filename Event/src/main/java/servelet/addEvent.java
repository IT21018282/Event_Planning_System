package servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "addEvent", value = "/addEvent")
/**
 * Servlet implementation class addEvent
 */


public class addEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addEvent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
        // print object for string formatting
        PrintWriter out = response.getWriter();
        
        // Httpservletrequest get parameters from user
        String type = request.getParameter("eventType");
        String description = request.getParameter("eventDescription");
        
        String services =request.getParameter("services");
        
        
        // Instances of User class
        event event1 = new event(type, description, services);
        
  
        boolean status = false;
        try {
            // static method add the values stored in the
            // user object to the database
            status = eventHandler.addEvent(event1);
            
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        // check if the values correspond to the one
        // specified
        if (status == true) {
        	 out.print("<script>alert('Record saved successfully!');location='Eventlist.jsp'</script>");
           
        	
            //request.getRequestDispatcher("Eventlist.jsp").include(request, response);
        }
        else {
        	 out.print("<script>alert('Sorry! unable to store');location='Eventlist.jsp'</script>");
        }
  
        // close database connection
        out.close();
    }
}
	