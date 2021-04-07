package veterinaria;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Main extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;
    static private String nombre = "";
    static private String correo = "";
    static private String telefono = "";
    static private String direccion = "";
    static private String animal = "";
    static private String consulta = "";
    
    public Main() {
    	super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	nombre = request.getParameter("form_nombre");
		correo = request.getParameter("form_correo");
		telefono = request.getParameter("form_telefono");
		direccion = request.getParameter("form_direccion");
		animal = request.getParameter("form_animal");
		consulta = request.getParameter("form_consulta");
		Controlador cont = new Controlador();
		if(nombre != null) {
			int resultado = cont.verificarDatos(nombre, correo, telefono, direccion, animal, consulta);
			resultadoGet(response, resultado);
		}
	}
    
    protected void resultadoGet(HttpServletResponse response, int valor) throws IOException {
    	PrintWriter out = response.getWriter();
    	if(valor != 1) {
    		out.print("<script language='javascript'>alert('Su cita ha sido registrada con exito!')</script>");
    	} else {
    		out.print("<script language='javascript'>alert('Error de conexion, intente mas tarde.')</script>");
    	}
    }
    
	private class Controlador implements Gestor{
	   		
		public int verificarDatos(String nombre, String correo, String telefono, String direccion, String animal,
				String consulta) {
			if (nombre != null && correo != null && telefono != null && nombre != direccion && animal != null
					&& consulta != null) {
				try(Connection conexion = Conexion.conectar()) {
					String query = "INSERT INTO citas() VALUES(?,?,?,?,?,?,?)";
					PreparedStatement ps = conexion.prepareStatement(query);
					
					ps.setInt(1, 0);
					ps.setString(2, nombre);
					ps.setString(3, correo);
					ps.setString(4, telefono);
					ps.setString(5, direccion);
					ps.setString(6, animal);
					ps.setString(7, consulta);
					
					ps.execute();
					conexion.close();
					return 0;
				} catch (Exception e) {
					return 1;
				}
			} else {
				return 1;
			}
		}
	}
}