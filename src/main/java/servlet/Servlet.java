package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.Dentaku;
import logic.DentakuLogic;

@WebServlet("/")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String servletKeepingNum = "";

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dentakuTop.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws ServletException, IOException {

		String number = request.getParameter("inputNumFromDentaku");
		this.servletKeepingNum += number;
		Dentaku d = new Dentaku();
		DentakuLogic logic = new DentakuLogic();
		if (number.equals("C")) {
			this.servletKeepingNum = "";
			request.setAttribute("d", d);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dentakuTop.jsp");
			dispatcher.forward(request, response);
		} else if (number.equals("=")) {
			this.servletKeepingNum = this.servletKeepingNum.replaceFirst("=", "");
			int result = logic.culc(this.servletKeepingNum);

			d.setResult(result);
			request.setAttribute("d", d);
			this.servletKeepingNum = "";
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dentakuTop3.jsp");
			dispatcher.forward(request, response);
		} else {
			d.setProcessNum(this.servletKeepingNum);
			request.setAttribute("d", d);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/dentakuTop2.jsp");
			dispatcher.forward(request, response);
		}

	}
}