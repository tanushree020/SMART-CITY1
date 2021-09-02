package SmartCityPro;
import Smart_City.MunicipalAuthority;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Smart_City_Municipal")
public class Smart_City_Municipal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Smart_City_Municipal() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		MunicipalAuthority a = new MunicipalAuthority();
		boolean f = a.checkUserAndPass(username, password);
		if(f)
		{
			String name = a.getName();
			request.setAttribute("name" , name);
			
			session.setAttribute("name", name);
			request.getRequestDispatcher("MunicipalAccess.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
