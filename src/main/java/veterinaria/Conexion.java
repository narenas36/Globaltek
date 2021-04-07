package veterinaria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	static public Connection conectar() throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/veterinaria", "root", "");
			return cn;
		} catch(SQLException ex) {
			return null;
		}
	}
}
