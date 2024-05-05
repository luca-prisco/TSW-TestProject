package model;

import java.sql.SQLException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PhotoControl {
	public synchronized static byte[] load(int id1, int id2, Connection con) {

		PreparedStatement ps = null;
		ResultSet rs = null;

		byte[] bt = null;

		try {
			String sql = "SELECT photo FROM Specifiche WHERE IDProdotto = ? AND IDSpecifiche = ?";
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, id1);
			ps.setInt(2, id2);
			rs = ps.executeQuery();

			if (rs.next()) {
				bt = rs.getBytes("photo");
			}

		} catch (SQLException sqlException) {
			System.out.println(sqlException);
		} 
			finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException sqlException) {
				System.out.println(sqlException);
			} 
		}
		return bt;
	}
	
	public synchronized static void updatePhoto(int id1, int id2, InputStream photo, Connection con) throws SQLException {
		
		PreparedStatement ps = null;
		try {
			con.setAutoCommit(false);
			ps = con.prepareStatement("UPDATE Specifiche SET photo = ? WHERE IDProdotto = ? AND IDSpecifiche = ?");
			try {
				ps.setBinaryStream(1, photo, photo.available());
				ps.setInt(2, id1);	
				ps.setInt(3, id2);
				ps.executeUpdate();
				con.commit();
			} catch (IOException e) {
				System.out.println(e);
			}
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException sqlException) {
				System.out.println(sqlException);
			}
		}
	}
}
