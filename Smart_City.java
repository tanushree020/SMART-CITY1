package SmartCityPro;
import Smart_City.CommonPeople;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/Smart_City")
public class Smart_City extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Smart_City() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession session = request.getSession();
		
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		CommonPeople cp = new CommonPeople();
		boolean f = cp.checkUserAndPass(username, password);
		if(f)
		{
			String name = cp.getName();
			request.setAttribute("name" , name);
			
			session.setAttribute("name", name);
			request.getRequestDispatcher("member.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
