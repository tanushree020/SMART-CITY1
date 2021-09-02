package SmartCityPro;
import Smart_City.CommonPeoplePlaces;
import Smart_City.TouristDestinations;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Smart_City_MRRTourist")
public class Smart_City_MRRTourist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Smart_City_MRRTourist() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//	PrintWriter pw = response.getWriter();
		
		String place = (String)request.getParameter("place").replaceAll("\\s","");
		TouristDestinations b = new TouristDestinations();
		double rate = b.getRate(place);
		
		if(rate<3) {
			request.setAttribute("ReviewList", b.getReview(place));
			request.getRequestDispatcher("ReviewT.jsp").forward(request, response);
			}
		else {
			request.getRequestDispatcher("GoodReviews.jsp").forward(request, response);
			
		}
		
	}

}
