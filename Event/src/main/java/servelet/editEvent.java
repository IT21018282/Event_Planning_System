package servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet(name = "editEvent", value = "/editEvent")

/**
 * Servlet implementation class editEvent
 */
public class editEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editEvent() {
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
        
        // Httpservletrequest get parameters from edit event form
		String id=request.getParameter("eventId");
		String type = request.getParameter("eventType");
        String description = request.getParameter("eventDescription");
        String services =request.getParameter("services");
        
        
        // Instances of event class
        event event1 = new event(type, description, services);
       
        boolean status = false;
        try {
            // call the method by giving parameters to update database
            status = eventHandler.updateEvent(event1,id);
            
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        // check the condition
        if (status == true) {
        	
        	 out.print("<script>alert('Record update successfully!');location='Eventlist.jsp'</script>");

        }
        else {
        	
        	 out.print("<script>alert('Sorry! unable to update');location='Eventlist.jsp'</script>"); 
           
        }
        
	}

}
