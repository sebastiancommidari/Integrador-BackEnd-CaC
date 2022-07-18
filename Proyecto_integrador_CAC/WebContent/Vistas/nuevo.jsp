<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Jugador</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href=css/style.css>
</head>
<body>



<div  class="container" >
	<div class="row" >
		<div>
			<h1 class="text-center mt-5 mb-5">Agregar Jugador</h1>				
		</div>	
				<form action="JugadorController?accion=insert" method="post">   
				
				<div class="row" >
				
				<div class="col-2 mb-3">
					<label for="posicion" class="form-label">Posición</label>
					<select class="form-select bg-dark text-white" aria-label="select-posicion" id="posicion" name="posicion" required>
                		<option value="ARQ">ARQ</option>
                		<option value="DEF">DEF</option>
                		<option value="MED">MED</option>
                		<option value="DEL">DEL</option>
             	 	</select>					
				</div>		
					
				
				<div class="col-3 mb-3">
					<label for="fecha_nac" class="form-label">Fecha de Nacimiento</label>
					<input type="date" class="form-control bg-dark text-white" id="fecha_nac" name="fecha_nac" required>					
				</div>		
				
				</div>
				
				<div class="row" >
						
				<div class="col-4 mb-3">
					<label for="nombre" class="form-label">Nombre</label>
					<input type="text" class="form-control bg-dark text-white" id="nombre" name="nombre" required>					
				</div>
				
				
				<div class="col-4 mb-3">
					<label for="apellido" class="form-label">Apellido</label>
					<input type="text" class="form-control bg-dark text-white" id="apellido" name="apellido" required>					
				</div>
				</div>
				
				<div class="row" >
				
				<div class="col-4 mb-3">
					<label for="lugar_nac" class="form-label">Lugar de Nacimiento</label>
					<input type="text" class="form-control bg-dark text-white" id="lugar_nac" name="lugar_nac" required>					
				</div>
					
				
				<div class="col-4 mb-3">
					<label for="valor_venta" class="form-label">Valor de mercado u$d</label>
					<input type="number" class="form-control bg-dark text-white" id="valor_venta" name="valor_venta" min="1" required>					
				</div>
				</div>
				
				<button type="submit" class="btn btn-dark mt-1"> Agregar</button>
				
	
				
				</form>

		
		</div>
</div>

</body>
</html>