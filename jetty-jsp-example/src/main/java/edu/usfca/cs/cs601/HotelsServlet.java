package edu.usfca.cs.cs601;

import java.util.LinkedList;
import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "hotels", description = "View Hotels servlet", urlPatterns = "/hotels")
public class HotelsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// we use a server let as the controller of a JSP page, we pass all the
		// parameters into
		// the JSP page from modal

		// TODO: get modal from SQL server, here I am just creating a fake
		// hotels List
		List<Hotel> hotels = new LinkedList<Hotel>();
		hotels.add(new Hotel("Great Highway Inn", "1234 Great Hwy, San Francisco, CA 94122"));
		hotels.add(new Hotel("Stanyan Park Hotel", "750 Stanyan St, San Francisco, CA 94117"));
		hotels.add(new Hotel("Edwardian Hotel", "1668 Market St, San Francisco, CA 94102"));

		// add the attributes into hotels so that the JSP file can get the
		// hotels
		request.setAttribute("hotels", hotels);
		request.getRequestDispatcher("/WEB-INF/hotels.jsp").forward(request, response);
	}
}
