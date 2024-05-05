package controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Utente.*;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/common/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailUtente = request.getParameter("emailUtente");
		String nome = request.getParameter("firstname");
		String cognome = request.getParameter("lastname");
		String telefono = request.getParameter("phone");
		String password = toHash(request.getParameter("password"));
		Boolean isAdmin = Boolean.FALSE;
		
		Connection con = (Connection) getServletContext().getAttribute("connection");
		
		UtenteBean utente = new UtenteBean();
		utente.setEmailUtente(emailUtente);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setTelefono(telefono);
		utente.setPassword(password);
		utente.setAdmin(isAdmin);
		
		UtenteDAO utenteDAO = new UtenteDAO();
		try {
			utenteDAO.registerUser(utente, con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}

	private String toHash(String password) {
		String hashString = null;
		try {
			java.security.MessageDigest digest = java.security.MessageDigest.getInstance("SHA-512");
			byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
			hashString = "";
			for (int i = 0; i < hash.length; i++) {
				hashString += Integer.toHexString((hash[i] & 0xFF) | 0x100).toLowerCase().substring(1, 3);
			}
		} catch (java.security.NoSuchAlgorithmException e) {
			System.out.println(e);
		}
		return hashString;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

}
