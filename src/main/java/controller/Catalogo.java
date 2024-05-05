package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Prodotto.ProdottoDAO;

/**
 * Servlet implementation class Catalogo
 */
@WebServlet("/Catalogo")
public class Catalogo extends HttpServlet {
	private static final long serialVersionUID = -2613117693794319659L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProdottoDAO prodottoDAO = new ProdottoDAO();
		Connection con = (Connection) getServletContext().getAttribute("connection");
		HttpSession session = request.getSession();
		
		try {
			request.setAttribute("prodotti", prodottoDAO.doRetrieveAll(con));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(request.getSession().getAttribute("isAdmin").equals(Boolean.FALSE))
			request.getRequestDispatcher("/common/catalogo.jsp").forward(request, response);
		else
			request.getRequestDispatcher("/admin/gestioneProdotti.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
