package SmartCityPro;
import Smart_City.CommonPeoplePlaces;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Smart_City_RateAndReview")
public class Smart_City_RateAndReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Smart_City_RateAndReview() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("Inside post of rate and review servlet");
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession();
		double rate = Double.parseDouble(request.getParameter("rate"));
		System.out.println("Rate  :  " + rate);
		String review = request.getParameter("review");
		System.out.println("Review : " + review);
		
		CommonPeoplePlaces cpp = new CommonPeoplePlaces();
		String place = (String)session.getAttribute("place");
		String names = (String)session.getAttribute("name");
		boolean f = cpp.insertingRateAndReview(place, names,rate, review);
		if(f)
		{
			
			request.getRequestDispatcher("logout.jsp").forward(request, response);
			
		}
		else
		{
			pw.println("UNSUCCESSFUL");
			
		}
		
	}

}
