package SmartCityPro;
import Smart_City.CommonPeoplePlaces;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Smart_City_MRR")
public class Smart_City_MRR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Smart_City_MRR() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		String place = (String)request.getParameter("place").replaceAll("\\s","");
		CommonPeoplePlaces b = new CommonPeoplePlaces();
		double rate = b.getRate(place);
	
		if(rate<2) {
			request.setAttribute("ReviewList", b.getReview(place));
			request.getRequestDispatcher("Review.jsp").forward(request, response);
			}
		else {
			request.getRequestDispatcher("GoodReview.jsp").forward(request, response);
			
		}
	}

}
