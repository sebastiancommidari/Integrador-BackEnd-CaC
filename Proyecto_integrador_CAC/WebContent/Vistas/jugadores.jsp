<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Clases.JugadorDAO"  %>
<%@page import="Clases.Jugador" %>
<%@page import="java.util.List"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TP Integrador - COMMIDARI</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href=css/style.css>
</head>

<body>
<div id="img">
	<img src="https://clubabanfield.org/inicio/wp-content/uploads/2017/01/caBanfield-8.png" alt="Logo">
</div>

<div id="title">
<h1>Listado de Jugadores</h1>
<h2>Temporada 2022/2023</h2>
</div>


<div  class="container" >
		<div class="row" >
				<a class="btn btn-dark col-2 m-4 start-100" id="agregar" href="JugadorController?accion=nuevo">Agregar Jugador  <i class="fas fa-user-plus"></i></a>
				
				<table class="table table-dark table-striped" >
				<thead>
					<th>N°</th>
					<th>Posición</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Fecha de nac.</th>
					<th>Lugar de nacimiento</th>					
					<th>Valor U$D</th>
					<th class="text-center">Modificar</th>
					<th class="text-center">Eliminar</th>				
				</thead>
				<%
				List<Jugador> resultado=null;
				JugadorDAO jugador=new JugadorDAO();
				resultado=jugador.listarJugador();
				
				
				
				for(int i=0;i<resultado.size();i++)
				{
				String ruta="JugadorController?accion=modificar&dorsal="+resultado.get(i).getDorsal();	
				String rutaE="JugadorController?accion=eliminar&dorsal="+resultado.get(i).getDorsal();
				%>			
				
				<tr>
				<td><%=resultado.get(i).getDorsal()%></td>
				<td><%=resultado.get(i).getPosicion()%></td>					
				<td><%=resultado.get(i).getNombre()%></td>				
				<td><%=resultado.get(i).getApellido()%></td>
				<td><%=resultado.get(i).getFecha_nac()%></td>
				<td><%=resultado.get(i).getLugar_nac()%></td>			
				<td><%=resultado.get(i).getValor_venta()%></td>
				<td class="text-center"><a href=<%=ruta%>> <i class="fas fa-user-edit" style=color:white></i> </a></td>
				<td class="text-center"><a href=<%=rutaE%>> <i class="fas fa-times-circle" style=color:white></i> </a></td>
				</tr>
				
				<%
				}
				%>
				
				
				</table>
			
		
		</div>
</div>

</body>

</html>