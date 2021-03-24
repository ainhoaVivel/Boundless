<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Recoge información sobre el juego King of Seven">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>King of Seven</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="../../estilo.css">
    <link rel="icon" type="image/x-icon" href="../../imagenes/favicon.ico">


    <!--AJAX-->
    <script>
        function loadDoc() {
            var xhttp = new XMLHttpRequest();

            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    myFunction(this);
                }
            };
            xhttp.open("GET", "/Boundless/data/productos.xml", true);
            xhttp.send();
        }

        function myFunction(xml) {
            var xmlDoc = xml.responseXML;
            //Primer juego
            var J = xmlDoc.getElementsByTagName("KoS");
            var IT = '<p style="font-weight: 600;">Nombre oficial: </p><p>' + J[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue + '</p>';
            IT += '<p style = "font-weight: 600;" > Fecha de lanzamiento: </p> <p>' + J[0].getElementsByTagName("FECHA")[0].childNodes[0].nodeValue + '</p>';
            IT += '<p style = "font-weight: 600;" > Género: </p> <p>' + J[0].getElementsByTagName("GENERO")[0].childNodes[0].nodeValue + '</p>';
            IT += '<p style = "font-weight: 600;" > Costo: </p><p>' + J[0].getElementsByTagName("COSTE")[0].childNodes[0].nodeValue + '</p>';
            IT += '<p style = "font-weight: 600;" > Requisitos: </p><p>' + J[0].getElementsByTagName("REQUISITOS")[0].childNodes[0].nodeValue + '</p>';
            IT += '<p style = "font-weight: 600;" > Plataformas: </p> <p>' + J[0].getElementsByTagName("PLATAFORMA")[0].childNodes[0].nodeValue + '</p> ';
            IT += '<p style = "font-weight: 600;" > Sitio web oficial: </p> <a href = "' +
                J[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue + '">' +
                J[0].getElementsByTagName("WEB_OFICIAL_N")[0].childNodes[0].nodeValue + '</p>';
            document.getElementById("IT").innerHTML += IT;

            document.getElementById("titulo").innerHTML += J[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue.toUpperCase();
            document.getElementById("banner").src = '../../' + J[0].getElementsByTagName("BANNER")[0].childNodes[0].nodeValue;
        }
    </script>
</head>

<body onload="loadDoc();" style="background-image: url(../../imagenes/bg2.jpg); background-position: bottom; background-repeat: no-repeat; width: 100%;">
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../../index.jsp" class="w3-mobile"><img src="../../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="../vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="../vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
            <li><a href="../vistaProductos.jsp" class="w3-mobile" style="background-color: #520d1e;">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile">Tienda</a></li>
            <li><a href="../vistaRecursos.jsp" class="w3-mobile">Recursos</a></li>
            <li><a href="../vistaContacto.jsp" class="w3-mobile">Contacto</a></li>
            <li class="w3-right">
                <c:if test="${usuario == null}">
                    <a href="../vistaAcceso.jsp" class="w3-mobile" style="margin-right:1em;">Acceso</a>
                </c:if>
                <c:if test="${usuario != null}">
                    <form action="/Boundless/cerrar">
                        <span id="user" style="font-weight: bold; color: white; margin-right:1em;">${usuario}</span>
                        <button id="btn" type="submit" class="w3-button w3-round w3-mobile w3-black w3-text-white 
                            w3-hover-white w3-hover-text-black" style="margin: 0; padding: 0; padding-right: 10px; padding-left: 10px;margin-right:1em;">Cerrar sesión</button>
                    </form>
                </c:if>
            </li>
        </ul>
    </div>

    <!--King of Seven-->
    <div class="w3-animate-opacity" ALIGN=center>
        <!--Imágenes de portada-->
        <img id="banner" style="width: 100%; height: auto; margin-top: 3em;">
        <span id="titulo" class="nombreJuego" style="color: #cc5d1d;"></span>
        <img src="../../imagenes/GuirnaldaEstrellas_Gris.png" style="width: 100%; height: auto; margin-top: 2em;">

        <!--Información técnica-->
        <div id="IT" class="w3-container" style="background-color: white; padding: 1em; margin: 3em; width: 50%; border-style: solid; border-color: #f8e2e8;">
            <h3 style="margin-bottom: 1em; font-weight: 600;">Información técnica</h3>
        </div>
    </div>
</body>

<!--Pie de página-->
<footer>
    <div class="pie " ALIGN=center>
        <ul>
            <li><a href="../vistaProximamente.jsp ">Soporte técnico</a></li>
            <li><a href="../vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="../vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="../vistaContacto.jsp ">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </DIV>
</footer>

</html>