package SmartCityPro;
import Smart_City.TouristDestinations;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Smart_City_tourist")
public class Smart_City_tourist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Smart_City_tourist() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		HttpSession session = request.getSession();
		String place = (String)request.getParameter("place").replaceAll("\\s","");
		session.setAttribute("place", place);
		request.setAttribute("park" , place);
		
		request.getRequestDispatcher("rateAndReviewTourist.jsp").forward(request, response);
		
	}

}
