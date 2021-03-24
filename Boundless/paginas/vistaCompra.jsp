<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Confirmación de la compra y mensaje de agradecimiento">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pedido realizado</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body style="background-image: url(../imagenes/bg.jpg); background-repeat: no-repeat; background-size: cover;">
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../index.jsp" class="w3-mobile"><img src="../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
            <li><a href="vistaProductos.jsp" class="w3-mobile">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile" style="background-color: #520d1e;">Tienda</a></li>
            <li><a href="vistaRecursos.jsp" class="w3-mobile">Recursos</a></li>
            <li><a href="vistaContacto.jsp" class="w3-mobile">Contacto</a></li>
            <li class="w3-right">
                <c:if test="${usuario == null}">
                    <a href="vistaAcceso.jsp" class="w3-mobile" style="margin-right:1em;">Acceso</a>
                </c:if>
                <c:if test="${usuario != null}">
                    <form action="/Boundless/cerrar">
                        <span id="user" style="font-weight: bold; color: white; margin-right:1em;">${usuario}</span>
                        <button id="btn" type="submit" class="w3-button w3-round w3-mobile w3-black w3-text-white 
                            w3-hover-white w3-hover-text-black" 
                            style="margin: 0; padding: 0; padding-right: 10px; padding-left: 10px;
                            margin-right:1em;">Cerrar sesión</button>
                    </form>
                </c:if>
            </li>
        </ul>
    </div>

    <center>
        <div class="seccion w3-animate-opacity" style="margin: 0em; padding-top: 0em;padding-bottom: 0em;">
            <!--Logo-->
            <div class="logo" ALIGN=center style="background-repeat: no-repeat;
                    background-position:bottom;
                    background-size: cover; margin: 0; margin-top:6em;">
                <a href="../index.jsp"><img src="../imagenes/logoB.png"></a>
            </div>
            
            <h1 style="margin-top: 1em; font-weight:600; color:#a6001a">Gracias por confiar en nosotros</h1>
            <h3 style="margin: 0; margin-bottom: 1em; font-weight:600; text-align: center">Su compra se ha realizado con éxito</h3>
            
            <div class="w3-container w3-row" style="width: 50%; margin-top: 2em">
                <div class="w3-half w3-container">
                    <a href="../index.jsp" class="w3-button w3-round w3-text-white 
                        w3-highway-red w3-hover-black w3-block" style="font-size: large;  margin-right: 2em; font-weight: 500">Página principal</a>
                </div>
                <div class="w3-half w3-container" style=" margin-bottom: 1em;">
                    <form method="post " action="/Boundless/stock">
                    <button id="btn" type="submit" class="w3-button w3-round w3-text-white 
                                w3-highway-red w3-hover-black w3-block" style="font-size: large; margin-left: 2em">Regresar a la tienda</button>                
                    </form>     
                </div>
            </div>            
        </div>
    </center>

</BODY>

<!--Pie de página-->
<footer style="position: fixed; left: 0;
   bottom: 0;
   width: 100%;">
    <div class="pie " ALIGN=center>
        <ul>
            <li><a href="vistaProximamente.jsp ">Soporte técnico</a></li>
            <li><a href="vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="vistaContacto.jsp">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </DIV>
</footer>

</html>