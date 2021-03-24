<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Página principal del sitio. Incluye información 
sobre los juegos de la empresa, novedades, promociones, etc. Desde ella se puede
acceder al resto de páginas.">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pagina principal</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">

    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="imagenes/favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".promo").mouseover(function() {
                $(".promo").css("filter", "grayscale(100%)");
            });
            $("#BD").mouseover(function() {
                $("#BD").css("filter", "grayscale(0%)");
            });
            $("#URB").mouseover(function() {
                $("#URB").css("filter", "grayscale(0%)");
            });
            $("#KoS").mouseover(function() {
                $("#KoS").css("filter", "grayscale(0%)");
            });
            $(".promo").mouseout(function() {
                $(".promo").css("filter", "grayscale(0%)");
            });

            $("#user").mouseover(function() {
                $("#user").css("cursor", "context-menu");
            });
            $("#btn").mouseover(function() {
                $("#btn").css("cursor", "pointer");
            });
        });
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

        function myFunction(xml) {
            var xmlDoc = xml.responseXML;
            //Primer juego
            var J1 = xmlDoc.getElementsByTagName("BD");
            document.getElementById("j1").src = J1[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue;
            document.getElementById("j1a").href = J1[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue;
            //Segundo juego
            var J2 = xmlDoc.getElementsByTagName("URB");
            document.getElementById("j2").src = J2[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue;
            document.getElementById("j2a").href = J2[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue;
            //Tercer juego
            var J3 = xmlDoc.getElementsByTagName("KoS");
            document.getElementById("j3").src = J3[0].getElementsByTagName("IMAGEN")[0].childNodes[0].nodeValue;
            document.getElementById("j3a").href = J3[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue;
        }
    </script>
</head>

<body onload="loadDoc();">
    <!--Logo-->
    <div class="logo" ALIGN=center style="background-image: url(/Boundless/imagenes/banner.png);
background-repeat: no-repeat;
background-position:bottom;
background-size: cover; margin: 0;">
        <a href="/Boundless/index.jsp"><img src="/Boundless/imagenes/logoB.png" style="margin: 1em;"></a>
    </div>

    <!--Menú de navegación-->
    <div class="navbar" style="z-index: 1;">
        <ul>
            <li><a href="paginas/vistaSobreNosotros.jsp " class="w3-mobile ">Sobre Nosotros</a></li>
            <li><a href="paginas/vistaNovedades.jsp " class="w3-mobile ">Novedades</a></li>
            <li><a href="paginas/vistaProductos.jsp " class="w3-mobile ">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile ">Tienda</a></li>
            <li><a href="paginas/vistaRecursos.jsp " class="w3-mobile ">Recursos</a></li>
            <li><a href="paginas/vistaContacto.jsp " class="w3-mobile ">Contacto</a></li>

            <li class="w3-right">
                <c:if test="${usuario == null}">
                    <a href="/Boundless/paginas/vistaAcceso.jsp" class="w3-mobile" style="margin-right:1em;">Acceso</a>
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

    <!--Promoción de juegos-->
    <div class="w3-center w3-content w3-display-container " style="width: 100%; max-width: 100%; height: auto; vertical-align: middle; margin-top: 1em; ">
        <div id="slideShow " style=" background-color: black; background-color: black; ">
            <a href="https://www.kaiomeris.com/quantum/index.html " target="_blank "><img class="mySlides w3-animate-opacity " src="imagenes/portada1.jpg " style="width:100% "></a>
            <a href="http://granbluefantasyvs.com " target="_blank "><img class="mySlides w3-animate-opacity " src="imagenes/portada2.jpg " style="width:100% "></a>
            <a href="https://genshin.mihoyo.com/en " target="_blank "><img class="mySlides w3-animate-opacity " src="imagenes/portada3.jpg " style="width:100% "></a>
            <div class="w3-container w3-section w3-large w3-text-pink w3-display-middle " style="width:100% ">
                <div class="w3-left w3-hover-text-black " onclick="plusDivs(-1) ">&#10094;</div>
                <div class="w3-right w3-hover-text-black " onclick="plusDivs(1) ">&#10095;</div>
            </div>
        </div>
        <span class="w3-badge demo w3-border w3-transparent w3-hover-pink " onclick="currentDiv(1) " style="margin-bottom: 1em; margin-top: 1em; "></span>
        <span class="w3-badge demo w3-border w3-transparent w3-hover-pink " onclick="currentDiv(2) " style="margin-bottom: 1em; margin-top: 1em "></span>
        <span class="w3-badge demo w3-border w3-transparent w3-hover-pink " onclick="currentDiv(3) " style="margin-bottom: 1em; margin-top: 1em "></span>
    </div>

    <!--Script para que funciones el slideshow-->
    <script>
        var slideIndex = 1;
        carousel();
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides ");
            var dots = document.getElementsByClassName("demo ");
            if (n > x.length) {
                slideIndex = 1
            }
            if (n < 1) {
                slideIndex = x.length
            }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none ";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-black ", " ");
            }
            x[slideIndex - 1].style.display = "block ";
            dots[slideIndex - 1].className += " w3-black ";
        }

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides ");
            var dots = document.getElementsByClassName("demo ");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none ";
                dots[i].className = dots[i].className.replace(" w3-black ", " ");
            }
            slideIndex++;
            if (slideIndex > x.length) {
                slideIndex = 1
            }
            x[slideIndex - 1].style.display = "block ";
            dots[slideIndex - 1].className += " w3-black ";
            setTimeout(carousel, 5000);
        }
    </script>

    <!--Sección de juegos que redirecciona a las páginas externas oficiales-->
    <div class="w3-display-container seccion " style="padding: 0em; margin: 0em; ">
        <img src="/Boundless/imagenes/NuestrosJuegos.png " style="width: 100%; height: auto; ">
        <div class="w3-row ">
            <!--Juego 1-->
            <div id="BD" class=" w3-third w3-display-left w3-container promo " style="padding:2em;padding-right: 1em;padding-left: 5em; ">
                <a id="j1a" target="_blank "><img id="j1"></a>
            </div>
            <!--Juego 2-->
            <div id="URB" class="w3-third w3-display-middle w3-container promo " style="padding:2em; padding-right: 3em;padding-left: 3em; ">
                <a id="j2a" target="_blank "><img id="j2"></a>
            </div>
            <!--Juego 3-->
            <div id="KoS" class="w3-third w3-display-right w3-container promo " style="padding:2em;padding-right: 5em;padding-left: 1em; ">
                <a id="j3a" target="_blank "><img id="j3"></a>
            </div>
        </div>
    </DIV>

    <!--Guirnalda de adorno-->
    <img src="/Boundless/imagenes/GuirnaldaEstrellas_Carmesi.png " style="width: 100%; height: auto; ">

    <!--Sección de novedades destacadas-->
    <div class="w3-display-container seccion seccionBlanca " style="padding: 0em; margin: 0em; ">
        <img src="/Boundless/imagenes/NovedadesDestacadas.png " style="width: 100%; height: auto; ">
        <div class="w3-display-left ">
            <ul style="margin-left: 2em; ">
                <li><a href="paginas/articulos/vistaKoS__2020_09_16__Parche.jsp">[KoS] Parche Septiembre 2020</a></li>
                <li><a href="paginas/vistaProximamente.jsp ">[BD] ¡Bienvenida Clarin!</a></li>
                <li><a href="paginas/vistaProximamente.jsp">[URB] Bienvenido al Infierno</a></li>
                <li><a href="paginas/vistaProximamente.jsp">[KoS] Evento de las luciérganas</a></li>
                <li><a href="paginas/vistaProximamente.jsp">[KoS] Llega un nuevo héroe</a></li>
            </ul>
        </div>
    </div>
</body>

<!--Pie de página-->
<footer>
    <div class="pie " ALIGN=center>
        <ul>
            <li><a href="/Boundless/paginas/vistaProximamente.jsp">Soporte técnico</a></li>
            <li><a href="/Boundless/paginas/vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="/Boundless/paginas/vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="/Boundless/paginas/vistaContacto.jsp ">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </div>
</footer>

</html>