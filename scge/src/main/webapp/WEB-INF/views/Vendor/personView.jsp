<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Sistema Control Gasto Electoral</title>
    <link href="/scge/resources/style/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="/scge/resources/css/accordionmenu.css" type="text/css" media="screen" />
</head>
<body>
    <img src="/scge/resources/style/images/page_bg.jpg"  id="full-screen-bi" /> 
    <div id="floater"></div>
    <div id="centered">
    
     <div id="side">
    <!--Start Menu -->
    
   <!-- <div id="wrapper-250"> -->
<div id="logo"><strong><span>F</span>empresa</strong></div>
		<ul class="accordion">
			
			<li id="one" class="files">

				<a href="#one">Administrci&oacute;n<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="oc/index.html"><em>01</em>Usuarios<span>25</span></a></li>
					
					<li><a href="#"><em>02</em>Men&uacute;s<span>6</span></a></li>					

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Presupuesto<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="three" class="cloud">

				<a href="#three">Ingresos Egresos<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Ingresos<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Egresos<span>-</span></a></li>					

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Orden de Compra<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Proveedores<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Producto<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Categorias<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="two" class="mail">

				<a href="#two">Unidades<span>+</span></a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Buscar<span>-</span></a></li>
					
					<li><a href="#"><em>02</em>Ingresar<span>-</span></a></li>
					
					<li><a href="#"><em>03</em>Mostrar Todos<span>-</span></a></li>

				</ul>

			</li>
			
			<li id="four" class="sign">

				<a href="#four">Mi Perfil</a>

				<ul class="sub-menu">
					
					<li><a href="#"><em>01</em>Modificar mis datos</a></li>
					
					<li><a href="#"><em>02</em>Cambiar Contrase&ntilde;a</a></li>

					<li><a href="#"><em>03</em>Salir / Logout</a></li>

				</ul>

			</li>
		
		</ul>
		
	<!--</div>-->
    <!-- End Menu -->
    </div><!-- End Side -->
    
    <div id="content">
    <!-- Content -->
    <div class="content">
        <h1>${title}</h1>
        <div class="data">
            <table>
                <tr>
                    <td width="30%">ID</td>
                    <td>${person.id}</td>
                </tr>
                <tr>
                    <td valign="top">Nombre</td>
                    <td>${person.name}</td>
                </tr>
                <tr>
                    <td valign="top">Activo</td>
                    <td>
                        <c:choose>
                            <c:when test="${fn:trim(person.gender) eq fn:trim('m')}">
                                Activo
                            </c:when>
                            <c:when test="${fn:trim(person.gender) eq fn:trim('f')}">
                                Desactivado
                            </c:when>
                        </c:choose>
                    </td>
                </tr>
                <tr>
                    <td valign="top">Fecha de Ingreso (dd-mm-yyyy)</td>
                    <td><fmt:formatDate dateStyle="full" pattern="dd-MM-yyyy" value="${person.dob}"/></td>
                </tr>
            </table>
        </div>
        <br />
        <a href="index.html" class="back">Regresar</a>
    </div>
    <!-- End Content -->
    </div><!-- End div id Content -->
    </div> <!-- End Centered -->
    <!-- Script Menu -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript">

		$(document).ready(function() {

			// Store variables
			
			var accordion_head = $('.accordion > li > a'),
				accordion_body = $('.accordion li > .sub-menu');

			// Open the first tab on load

			accordion_head.first().addClass('active').next().slideDown('normal');

			// Click function

			accordion_head.on('click', function(event) {

				// Disable header links
				
				event.preventDefault();

				// Show and hide the tabs on click

				if ($(this).attr('class') != 'active'){
					accordion_body.slideUp('normal');
					$(this).next().stop(true,true).slideToggle('normal');
					accordion_head.removeClass('active');
					$(this).addClass('active');
				}

			});

		});

	</script>
    <!-- End Script Menu -->
</body>
</html>