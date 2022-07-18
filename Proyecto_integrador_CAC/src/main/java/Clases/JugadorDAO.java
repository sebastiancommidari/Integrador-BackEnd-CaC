package Clases;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JugadorDAO {
	
Connection conexion;
	
	public JugadorDAO() throws ClassNotFoundException {
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
	
	public List<Jugador> listarJugador()
	{
		PreparedStatement ps;
		ResultSet rs;
		List<Jugador> jugadores=new ArrayList<>();
		
		
		try
		{
			ps=conexion.prepareStatement("select * from jugadores");
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				int dorsal=rs.getInt("dorsal");
				String posicion=rs.getString("posicion");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				Date fecha_nac=rs.getDate("fecha_nac");	
				String lugar_nac=rs.getString("lugar_nac");
				int valor_venta=rs.getInt("valor_venta");							
				
				Jugador jugador=new Jugador(dorsal,posicion,nombre,apellido,fecha_nac,lugar_nac,valor_venta);
				jugadores.add(jugador);
			}
			
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return null;			
		}
		
		
		
		return jugadores;		
			
	}

	
	public Jugador mostrarJugador(int _dorsal)
	{
		PreparedStatement ps;
		ResultSet rs;
		Jugador jugador=null;
		
		
		try
		{
			ps=conexion.prepareStatement("select * from jugadores where dorsal=?");
			ps.setInt(1, _dorsal);
			rs=ps.executeQuery();
			
			while(rs.next())
			{
				int dorsal=rs.getInt("dorsal");
				String posicion=rs.getString("posicion");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				Date fecha_nac=rs.getDate("fecha_nac");	
				String lugar_nac=rs.getString("lugar_nac");
				int valor_venta=rs.getInt("valor_venta");
				
				jugador=new Jugador(dorsal,posicion,nombre,apellido,fecha_nac,lugar_nac,valor_venta);							
			}	
			return jugador;	
			
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return null;	
		}
		
		
		
	}
	
	
	
	public boolean insertarJugador(Jugador jugador)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("insert into jugadores (posicion,nombre,apellido,fecha_nac,lugar_nac,valor_venta) values (?,?,?,?,?,?)");
			
			ps.setString(1, jugador.getPosicion());
			ps.setString(2, jugador.getNombre());
			ps.setString(3, jugador.getApellido());
			ps.setDate(4, jugador.getFecha_nac());
			ps.setString(5, jugador.getLugar_nac());			
			ps.setInt(6, jugador.getValor_venta());
			ps.execute();	
			
			return true;
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return false;			
		}	
	}
	
	public boolean actualizarJugador(Jugador jugador)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("update jugadores set posicion=?, nombre=? ,apellido=?, fecha_nac=?, lugar_nac=?, valor_venta=? where dorsal=?");
			
			ps.setString(1, jugador.getPosicion());
			ps.setString(2, jugador.getNombre());
			ps.setString(3, jugador.getApellido());
			ps.setDate(4, jugador.getFecha_nac());
			ps.setString(5, jugador.getLugar_nac());			
			ps.setInt(6, jugador.getValor_venta());
			ps.setInt(7, jugador.getDorsal());
			ps.execute();
			
			return true;
		}
		catch(SQLException e)
		{
			System.out.println("Error de conexion");
			return false;			
		}
	}
	
	
	
		public boolean eliminarJugador(int _dorsal)
		{
			PreparedStatement ps;
			try
			{
				ps=conexion.prepareStatement("delete from jugadores where dorsal=?");
				ps.setInt(1, _dorsal);
				ps.execute();	
				
				return true;		
			}
			catch(SQLException e)
			{
				System.out.println("Error de conexion");
				return false;			
			}

		}
	
	
	
}
