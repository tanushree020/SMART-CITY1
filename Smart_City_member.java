package SmartCityPro;
import Smart_City.CommonPeople;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Smart_City_member")
public class Smart_City_member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Smart_City_member() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String place = (String)request.getParameter("place").replaceAll("\\s","");
		
		String names =(String)session.getAttribute("name");
		session.setAttribute("place", place);
		
		request.setAttribute("park" , place);
		request.setAttribute("name",names);
		
		request.getRequestDispatcher("rateAndReview.jsp").forward(request, response);		
		
	}

}
