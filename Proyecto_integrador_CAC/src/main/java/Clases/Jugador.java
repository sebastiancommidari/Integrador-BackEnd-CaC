package Clases;

import java.sql.Date;

public class Jugador {
	
	private int dorsal;
	private String posicion;
	private String nombre;
	private String apellido;
	private Date fecha_nac;
	private String lugar_nac;
	private int valor_venta;
	
	public Jugador(int dorsal, String posicion, String nombre, String apellido, Date fecha_nac, String lugar_nac, int valor_venta) {
		super();
		this.dorsal = dorsal;
		this.posicion = posicion;
		this.nombre = nombre;
		this.apellido = apellido;
		this.fecha_nac = fecha_nac;
		this.lugar_nac = lugar_nac;
		this.valor_venta = valor_venta;
	}
	
	public Jugador() {
		// TODO Auto-generated constructor stub
	}

	public int getDorsal() {
		return dorsal;
	}

	public void setDorsal(int dorsal) {
		this.dorsal = dorsal;
	}

	public String getPosicion() {
		return posicion;
	}

	public void setPosicion(String posicion) {
		this.posicion = posicion;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Date getFecha_nac() {
		return fecha_nac;
	}

	public void setFecha_nac(Date fecha_nac) {
		this.fecha_nac = fecha_nac;
	}

	public String getLugar_nac() {
		return lugar_nac;
	}

	public void setLugar_nac(String lugar_nac) {
		this.lugar_nac = lugar_nac;
	}

	public int getValor_venta() {
		return valor_venta;
	}

	public void setValor_venta(int valor_venta) {
		this.valor_venta = valor_venta;
	}
		
	
}
