<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene información y arte promocional de los juegos que ha desarrollado 
o anunciado la empresa Boundless">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Productos</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">

    <script>
        var juego;

        function highlight() {
            document.getElementById("J1").style.filter = "grayscale(100%)";
            document.getElementById("J2").style.filter = "grayscale(100%)";
            document.getElementById("J3").style.filter = "grayscale(100%)";
            document.getElementById(juego).style.filter = "grayscale(0%)";
        }

        function fullColor() {
            document.getElementById("J1").style.filter = "grayscale(0%)";
            document.getElementById("J2").style.filter = "grayscale(0%)";
            document.getElementById("J3").style.filter = "grayscale(0%)";
        }
    </script>

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
        //Función para establecer la información de los productos
        function myFunction(xml) {
            var xmlDoc = xml.responseXML;
            //Primer juego
            var J1 = xmlDoc.getElementsByTagName("BD");
            var J1_promo = '<a href="' + J1[0].getElementsByTagName("WEB")[0].childNodes[0].nodeValue + '"><img src="../' + J1[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue + '"></a>'
            var J1_nombre = '<h2>' + J1[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue.toUpperCase() + '</h2 >'
            var J1_fecha = '<p>' + J1[0].getElementsByTagName("LANZAMIENTO")[0].childNodes[0].nodeValue + '</p>'
            var J1_plat = '<p>' + J1[0].getElementsByTagName("PLATAFORMA")[0].childNodes[0].nodeValue + '</p>'

            document.getElementById("J1").innerHTML = J1_promo + J1_nombre + J1_fecha + J1_plat;

            //Segundo juego
            var J2 = xmlDoc.getElementsByTagName("URB");
            var J2_promo = '<a href="' + J2[0].getElementsByTagName("WEB")[0].childNodes[0].nodeValue + '"><img src="../' + J2[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue + '"></a>'
            var J2_nombre = '<h2>' + J2[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue.substr(6).toUpperCase() + '</h2 >'
            var J2_fecha = '<p>' + J2[0].getElementsByTagName("LANZAMIENTO")[0].childNodes[0].nodeValue + '</p>'
            var J2_plat = '<p>' + J2[0].getElementsByTagName("PLATAFORMA")[0].childNodes[0].nodeValue + '</p>'

            document.getElementById("J2").innerHTML = J2_promo + J2_nombre + J2_fecha + J2_plat;
            //Tercer juego
            var J3 = xmlDoc.getElementsByTagName("KoS");
            var J3_promo = '<a href="' + J3[0].getElementsByTagName("WEB")[0].childNodes[0].nodeValue + '"><img src="../' + J3[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue + '"></a>'
            var J3_nombre = '<h2>' + J3[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue.toUpperCase() + '</h2 >'
            var J3_fecha = '<p>' + J3[0].getElementsByTagName("LANZAMIENTO")[0].childNodes[0].nodeValue + '</p>'
            var J3_plat = '<p>' + J3[0].getElementsByTagName("PLATAFORMA")[0].childNodes[0].nodeValue + '</p>'

            document.getElementById("J3").innerHTML = J3_promo + J3_nombre + J3_fecha + J3_plat;
        }
    </script>

</head>

<body onload="loadDoc();" style="background-image: url(../imagenes/bg.jpg); background-repeat: no-repeat; background-size: cover;">

    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../index.jsp" class="w3-mobile"><img src="../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
            <li><a href="vistaProductos.jsp" class="w3-mobile" style="background-color: #520d1e;">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile">Tienda</a></li>
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
                            w3-hover-white w3-hover-text-black" style="margin: 0; padding: 0; padding-right: 10px; padding-left: 10px;margin-right:1em;">Cerrar sesión</button>
                    </form>
                </c:if>
            </li>
        </ul>
    </div>

    <!--Juegos de la empresa-->
    <DIV id="juegos" class="w3-container productos w3-animate-opacity" ALIGN=center style="margin-top: 1em;" onmouseover="highlight()" onmouseout="fullColor()">
        <!--Primer juego-->
        <div id="J1" class="w3-third promo" onmouseover="juego = this.id"></div>

        <!--Segundo juego-->
        <div id="J2" class="w3-third promo" onmouseover="juego = this.id"></div>

        <!--Tercer juego-->
        <div id="J3" class="w3-third promo" onmouseover="juego = this.id"></div>
    </div>
    <!--Guirnalda de adorno-->
    <img src="../imagenes/GuirnaldaEstrellas_Gris.png" style="margin-top: 2em; width: 100%; height: auto;">
</body>

<!--Pie de página-->
<footer>
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