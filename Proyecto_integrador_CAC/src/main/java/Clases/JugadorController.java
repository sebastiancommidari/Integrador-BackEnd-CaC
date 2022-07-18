package Clases;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/SociosController")
public class JugadorController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    
    public JugadorController() 
    {
        super();        
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		JugadorDAO jugadorDAO=null;
		try 
		{
		jugadorDAO=new JugadorDAO();
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String accion;
		RequestDispatcher dispatcher=null;
		
		accion=request.getParameter("accion");
		
		if(accion==null||accion.isEmpty())		
		{
			dispatcher=request.getRequestDispatcher("Vistas/jugadores.jsp");
		}	
		else if(accion.equals("modificar"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/modificar.jsp");
		}
		else if(accion.equals("actualizar"))
		{
			int dorsal=Integer.parseInt(request.getParameter("dorsal"));
			String posicion=request.getParameter("posicion");
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			Date fecha_nac = Date.valueOf(request.getParameter("fecha_nac"));
			String lugar_nac=request.getParameter("lugar_nac");
			int valor_venta=Integer.parseInt(request.getParameter("valor_venta"));
			
			Jugador jugador=new Jugador(dorsal,posicion,nombre,apellido,fecha_nac,lugar_nac,valor_venta);			
			jugadorDAO.actualizarJugador(jugador);			
			dispatcher=request.getRequestDispatcher("Vistas/jugadores.jsp");			
		}
		else if(accion.equals("eliminar"))
		{
			int dorsal=Integer.parseInt(request.getParameter("dorsal"));
			jugadorDAO.eliminarJugador(dorsal);
			dispatcher=request.getRequestDispatcher("Vistas/jugadores.jsp");
		}
		else if(accion.equals("nuevo"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/nuevo.jsp");
		}
		else if(accion.equals("insert"))
		{
			String posicion=request.getParameter("posicion");
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			Date fecha_nac = Date.valueOf(request.getParameter("fecha_nac"));
			String lugar_nac=request.getParameter("lugar_nac");
			int valor_venta=Integer.parseInt(request.getParameter("valor_venta"));
			
			Jugador jugador=new Jugador(0,posicion,nombre,apellido,fecha_nac,lugar_nac,valor_venta);	
			jugadorDAO.insertarJugador(jugador);
			
			dispatcher=request.getRequestDispatcher("Vistas/jugadores.jsp");
		}
			
		
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
