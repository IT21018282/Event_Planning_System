package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




@WebServlet(name = "deleteEvent", value = "/deleteEvent")

/**
 * Servlet implementation class deleteEvent
 */
public class deleteEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteEvent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
        // print object for string formatting
        PrintWriter out = response.getWriter();
        
        // Httpservletrequest get parameters from event list
        String id = request.getParameter("id");
       
        boolean status = false;
        try {
            
            // call the method by giving parameters  to delete details from the database
            status = eventHandler.deleteEvent(id);
            
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        
        
        // Check the condition
        if (status == true) {
            out.print("<script>alert('Record delete successfully!');location='Eventlist.jsp'</script>");
           
        }
        else {
        	out.print("<script>alert('Sorry! unable to delete!');location='Eventlist.jsp'</script>");
			
		}
  
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

	}

}
