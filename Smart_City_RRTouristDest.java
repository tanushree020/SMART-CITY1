package SmartCityPro;
import Smart_City.TouristDestinations;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Smart_City_RRTouristDest")
public class Smart_City_RRTouristDest extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public Smart_City_RRTouristDest() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		TouristDestinations td = new TouristDestinations();
		String place = (String)session.getAttribute("place");
		double rate = Double.parseDouble(request.getParameter("rate"));
		String review = request.getParameter("review");
		boolean f = td.insertingRateAndReview(place, rate, review);
		if(f)
		{
			
			request.getRequestDispatcher("index.jsp").forward(request,response);
		}
		else
		{
			pw.println("Unsuccessful");
		}
	}

}
