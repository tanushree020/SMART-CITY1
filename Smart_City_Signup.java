package SmartCityPro;
import Smart_City.CommonPeople;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Smart_City_Signup")
public class Smart_City_Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Smart_City_Signup() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		PrintWriter pw = response.getWriter();
		CommonPeople cp = new CommonPeople();
		String name = request.getParameter("name");
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		boolean f = cp.SignUp(name, username, password);
		if(f)
		{
			request.getRequestDispatcher("Successful.jsp").forward(request,response);
		}
		else
		{
			pw.println("Sorry unsuccessful in registering");
		}
	}

}
