<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
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
		<!-- Los dropdowns #2 hacen parte de la vista mÃ³vil -->
		<ul id="dropdown1" class="dropdown-content orange lighten-5">
			 <li><a href="listaPersona.jsp" class="orange-text">Lista Personas</a></li>
			 <li><a href="#!" class="orange-text">Lista Materiales</a></li>
			 <li><a href="listaPrestamos.jsp" class="orange-text">Lista PrÃ©stamos</a></li>
		</ul>
		<ul id="dropdown2" class="dropdown-content orange lighten-5">
			 <li><a href="listaPersonas.jsp" class="orange-text">Lista Personas</a></li>
			 <li><a href="#!" class="orange-text">Lista Materiales</a></li>
			 <li><a href="listaPrestamos.jsp" class="orange-text">Lista Préstamos</a></li>
		</ul>

		 <nav>
		    <div class="nav-wrapper #ef6c00 orange darken-3">
		      <div class="logo s3 m12">
		    		  <a href="index.html" class="brand-logo"><i class="material-icons">work</i>OrangeX</a>
		      </div>
		      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
		      <ul class="right hide-on-med-and-down">
		        <li><a href="materiales.html">Materiales</a></li>
		        <li><a href="prestamo.html">Préstamo</a></li>
		        <li><a href="devolucion.html">Devolución</a></li>
      			<li><a class="dropdown-button" href="#!" data-activates="dropdown1">Listas<i class="material-icons right">arrow_drop_down</i></a></li>
		        <li><a href="Login.html"><i class="large material-icons right">account_box</i>Ingresar</a></li>
		        </ul>

		     <!-- En esta parte se pone lo que se va a mostrar a los mÃ³viles -->
		      <ul class="side-nav" id="mobile-demo">
		        <li><a href="materiales.html">Materiales</a></li>
		        <li><a href="prestamo.html">Préstamo</a></li>
		        <li><a href="devolucion.html">Devolución</a></li>

		        <!-- Dropdown Trigger -->
      			<li><a class="dropdown-button" href="#!" data-activates="dropdown2">Listas<i class="material-icons right">arrow_drop_down</i></a></li>
		        <li><a href="Login.html">Ingresar</a></li>
		      </ul>
		    </div>
  		</nav>
	</header>

<div class="container">
	<div class="row card-panel orange lighten-4">
	
            <table>
                <c:forEach items="${usuarios}" var="usuarios">
                <tr>
                    <td>${usuarios.nombreusuario}</td>
                </tr>
                 </c:forEach>
            </table>
                         <!--    <table class="highlight responsive-table"> -->
                   
                           
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