package SmartCityPro;
import Smart_City.CommonPeople;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Smart_City_ChangePassword")
public class Smart_City_ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Smart_City_ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw =response.getWriter();
		String user = request.getParameter("uname");
		String password = request.getParameter("password");
		CommonPeople d = new CommonPeople();
		boolean f = d.changePassword(user, password);
		if(f) {
			request.getRequestDispatcher("Successful.jsp").forward(request,response);
			
		}
		else {
			pw.println("UNSUCCESSFUL IN CHANGING PASSWORD");
		}
	}

}
