package controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Prodotto.*;

/**
 * Servlet implementation class AggiungiProdotto
 */
@WebServlet("/admin/AggiungiProdotto")
public class AggiungiProdotto extends HttpServlet {

	private static final long serialVersionUID = -4060511626286303306L;
	ProdottoDAO prodottoDAO = new ProdottoDAO();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = (Connection) getServletContext().getAttribute("connection");

		String nomeProdotto = request.getParameter("nomeProdotto");
		String brand = request.getParameter("brand");
		String categoria = request.getParameter("categoria");
		String descrizione = request.getParameter("descrizione");
		String dettagli = request.getParameter("dettagli");
		String colore = request.getParameter("colore");
		int hdd = Integer.parseInt(request.getParameter("hdd"));
		int ram = Integer.parseInt(request.getParameter("ram"));
		int quantita = Integer.parseInt(request.getParameter("quantita"));
		BigDecimal prezzo = new BigDecimal(request.getParameter("prezzo"));
		
		ProdottoBean p = new ProdottoBean();
		
		p.setNomeProdotto(nomeProdotto);
		p.setBrand(brand);
		p.setCategoria(categoria);
		p.setDescrizione(descrizione);
		p.setDettagli(dettagli);
		p.setColore(colore);
		p.setHdd(hdd);
		p.setRam(ram);
		p.setQuantita(quantita);
		p.setPrezzo(prezzo);
	
		try {
			prodottoDAO.insertProdotto(p, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}




}
