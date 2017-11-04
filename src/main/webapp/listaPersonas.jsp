<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Gestion de prestamo</title>
	<link rel="stylesheet" href="css/materialize.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Kaushan Script' rel='stylesheet'>

	<script>
	    var OneSignal = window.OneSignal || [];
	    OneSignal.push(["init", {
	      appId: "e221974b-874b-4c4e-a48e-877b123365c3",
	      autoRegister: false, /* Set to true to automatically prompt visitors */
	      notifyButton: {
	          enable: true /* Set to false to hide */
	      }
	    }]);
 	</script>

</head>
<body class="#fff3e0 orange lighten-5">

	<header>
		<!-- Dropdown Structure -->
		<!-- Los dropdowns #2 hacen parte de la vista móvil -->
		<ul id="dropdown1" class="dropdown-content orange lighten-5">
			 <li><a href="listaPersona.html" class="orange-text">Lista Personas</a></li>
			 <li><a href="#!" class="orange-text">Lista Materiales</a></li>
			 <li><a href="listaPrestamos.html" class="orange-text">Lista Préstamos</a></li>
		</ul>
		<ul id="dropdown2" class="dropdown-content orange lighten-5">
			 <li><a href="listaPersonas.html" class="orange-text">Lista Personas</a></li>
			 <li><a href="#!" class="orange-text">Lista Materiales</a></li>
			 <li><a href="listaPrestamos.html" class="orange-text">Lista Préstamos</a></li>
		</ul>

		 <nav>
		    <div class="nav-wrapper #ef6c00 orange darken-3">
		      <div class="logo s3 m12">
		    		  <a href="index.html" class="brand-logo"><i class="material-icons">work</i>OrangeX</a>
		      </div>
		      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
		      <ul class="right hide-on-med-and-down">
		        <li><a href="materiales.html">Materiales</a></li>
		        <li><a href="prestamo.html">Pr�stamo</a></li>
		        <li><a href="devolucion.html">Devoluci�n</a></li>
      			<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Listas<i class="material-icons right">arrow_drop_down</i></a></li>
		        <li><a href="Login.html"><i class="large material-icons right">account_box</i>Ingresar</a></li>
		        </ul>

		     <!-- En esta parte se pone lo que se va a mostrar a los móviles -->
		      <ul class="side-nav" id="mobile-demo">
		        <li><a href="materiales.html">Materiales</a></li>
		        <li><a href="prestamo.html">Pr�stamo</a></li>
		        <li><a href="devolucion.html">Devoluci�n</a></li>

		        <!-- Dropdown Trigger -->
      			<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Listas<i class="material-icons right">arrow_drop_down</i></a></li>
		        <li><a href="Login.html">Ingresar</a></li>
		      </ul>
		    </div>
  		</nav>
	</header>

<div class="container">
	<div class="row card-panel orange lighten-4">
	
             <table class="highlight responsive-table">
                    <tr class='orange-text'><th>Nombres</th> <th>Apellidos</th> <th>Carrera</th> <th>Cargo</th></tr>  
                    
            <%
              
            if( request.getAttribute("usuarios")!=null){
          List<Usuario> usuarios  = (List<Usuario>)request.getAttribute("usuarios");
           for (Usuario usuario : usuarios) {
         %>      
          <tr><td><%=usuario.getNombreusuario()%> </td> <td><%=usuario.getApellidousuario()%> </td> <td><%=usuario.getCarrerausuario()%> </td> <td><%=usuario.getCargousuario()%> </td></tr>
         <%    
          
          }
       }
    %>
                        
    
                  </table>
            
    </div>
</div>	




  	
	
    <script src="js/jquery.js"></script>
	<script src="js/materialize.min.js"></script>
	<script>
		  $(document).ready(function(){
		  	$(".button-collapse").sideNav();
		  	$(".dropdown-button").dropdown();
		  	$('select').material_select();
		  });
	</script>
</body>
</html>