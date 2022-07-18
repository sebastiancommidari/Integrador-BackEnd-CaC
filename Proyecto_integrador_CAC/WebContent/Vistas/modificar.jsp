<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Clases.JugadorDAO"  %>
<%@page import="Clases.Jugador"%>
<%@page import="java.util.List"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar Jugador - CAB</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href=css/style.css>
</head>
<body>

<div class="container">

	<div>
		<h1 class="text-center mt-5" >Modificar Jugador</h1>
	</div>
		<div class="row" >
				<%
				String dorsal=request.getParameter("dorsal");
				int id;
				id=Integer.parseInt(dorsal);				
				Jugador resultado=null;
				JugadorDAO  jugador=new JugadorDAO();
				resultado=jugador.mostrarJugador(id);				
				%>
		
		<form class="p-5" action="JugadorController?accion=actualizar" method="post">
			
			
			
			<div class="row">
			
			<div class="col-2 mb-3">
					<label for="posicion" class="form-label">Posición</label>
					<select class="form-select bg-dark text-white" aria-label="select-posicion" id="posicion" name="posicion" required>
                		<option value=<%=resultado.getPosicion() %>></option>
                		<option value="ARQ">ARQ</option>
                		<option value="DEF">DEF</option>
                		<option value="MED">MED</option>
                		<option value="DEL">DEL</option>
             	 	</select>					
				</div>
				
				<div class="col-3 mb-3">
					<label for="fecha_nac" class="form-label">Fecha de Nacimiento</label>
					<input type="date" class="form-control bg-dark text-white" id="fecha_nac" name="fecha_nac" required value=<%=resultado.getFecha_nac() %>>					
				</div>			
				</div>
				
				<div class="row">
				
				<div class="col-4 mb-3">
					<label for="nombre" class="form-label">Nombre</label>
					<input type="text" class="form-control bg-dark text-white" id="nombre" name="nombre" required value=<%=resultado.getNombre() %>>					
				</div>
				
				
				<div class="col-4 mb-3">
					<label for="apellido" class="form-label">Apellido</label>
					<input type="text" class="form-control bg-dark text-white" id="apellido" name="apellido" required value=<%=resultado.getApellido() %>>					
				</div>
				
				</div>
				
				<div class="row">
				
				<div class="col-4 mb-3">
					<label for="lugar_nac" class="form-label">Lugar de Nacimiento</label>
					<input type="text" class="form-control bg-dark text-white" id="lugar_nac" name="lugar_nac" required value=<%=resultado.getLugar_nac() %> >					
				</div>
					
				
				<div class="col-4 mb-3">
					<label for="valor_venta" class="form-label">Valor de mercado U$D</label>
					<input type="number" class="form-control bg-dark text-white" id="valor_venta" name="valor_venta" min="1" required value=<%=resultado.getValor_venta() %> >					
				</div>
				</div>
			
			<button type="submit" class="btn btn-dark mt-1">Aceptar</button>
				
			<div class="mb-3">			
				<input type="hidden"  class="form-control" id="dorsal" name="dorsal"  value=<%=resultado.getDorsal() %> >
			</div>
			
			</form>
			
		
		</div>	
	
	
	</div>

</body>
</html>