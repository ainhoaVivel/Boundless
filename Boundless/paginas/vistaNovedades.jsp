<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Recoge información sobre los juegos de Boundless: actualizaciones, parches, eventos, etc.">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Novedades</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#2020").mouseover(function() {
                $("#2020").css("cursor", "pointer")
            });
            $("#2020").mouseout(function() {
                $("#2020").css("cursor", "default")
            });

            $("#2020").click(function() {
                $(".mes").slideToggle("slow",
                    function() {
                        // Animation complete.
                    });
            });
        });
    </script>

    <!--AJAX-->
    <script>
        function loadDoc() {
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    myFunction(this);
                }
            };
            xmlhttp.open("GET", "/Boundless/data/novedades.json", true);
            xmlhttp.send();
        }

        //Función para establecer la información de los productos
        function myFunction(json) {
            var myObj = JSON.parse(json.responseText);

            //Primer artículo
            var a1 = '<div class = "w3-half w3-container w3-display-topleft" style="margin:3em; margin-top: 8%;">' +
                '<a href = "' + myObj.articulos[0].enlace + '" ><img src = "../' + myObj.articulos[0].imagen + '"width = "80%" > </a> </div >' +
                '<div class = "w3-half  w3-container w3-display-topright" style="margin:3em; margin-top: 8%;">' +
                '<a href = "' + myObj.articulos[0].enlace + '"style = "text-decoration: none;"><h3 style = "color: #a30d33;font-weight: 600;" >' +
                myObj.articulos[0].titulo + '</h3></a><p style = "color: #c4617a;">' + myObj.articulos[0].fecha + '</p><p>' +
                myObj.articulos[0].contenido + '</p> <p style = "color: #c4617a;" >' +
                myObj.articulos[0].tags; + '</p> </div>';
            document.getElementById("A1").innerHTML = a1;

            //Segundo artículo
            document.getElementById("A2").innerHTML = myObj.articulos[1].titulo;
            var a2 = '<div class = "w3-half w3-container w3-display-left" style="margin:3em; margin-top: -5%;">' +
                '<a href = "' + myObj.articulos[1].enlace + '" ><img src = "../' + myObj.articulos[1].imagen + '"width = "80%" > </a> </div >' +
                '<div class = "w3-half  w3-container w3-display-right" style = "margin:3em; margin-top: -5%;">' +
                '<a href = "' + myObj.articulos[1].enlace + '"style = "text-decoration: none;"><h3 style = "color: #a30d33;font-weight: 600;" >' +
                myObj.articulos[1].titulo + '</h3></a><p style = "color: #c4617a;">' + myObj.articulos[1].fecha + '</p><p>' +
                myObj.articulos[1].contenido + '</p> <p style = "color: #c4617a;" >' +
                myObj.articulos[1].tags; + '</p> </div>';
            document.getElementById("A2").innerHTML = a2;

            //Tercer artículo
            var a3 = '<div class = "w3-half w3-container w3-display-left" style="margin:3em; margin-top: 25%;">' +
                '<a href = "' + myObj.articulos[2].enlace + '" ><img src = "../' + myObj.articulos[2].imagen + '"width = "80%" > </a> </div >' +
                '<div class = "w3-half  w3-container w3-display-right" style="margin:3em; margin-top: 25%;">' +
                '<a href = "' + myObj.articulos[2].enlace + '"style = "text-decoration: none;"><h3 style = "color: #a30d33;font-weight: 600;" >' +
                myObj.articulos[2].titulo + '</h3></a><p style = "color: #c4617a;">' + myObj.articulos[2].fecha + '</p><p>' +
                myObj.articulos[2].contenido + '</p> <p style = "color: #c4617a;" >' +
                myObj.articulos[2].tags; + '</p> </div>';
            document.getElementById("A3").innerHTML = a3;

        }
    </script>


</head>

<body onload="loadDoc();" style="background-image: url(../imagenes/bg2.jpg); background-position: bottom; background-repeat: no-repeat; width: 100%;">
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../index.jsp" class="w3-mobile"><img src="../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile" style="background-color: #520d1e;">Novedades</a></li>
            <li><a href="vistaProductos.jsp" class="w3-mobile">Productos</a></li>
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

    <!--Noticia portada-->
    <div class="ariculoDestacado w3-animate-opacity">
        <a href="articulos/vistaKoS__2020_09_16__Parche.jsp"><img src="../imagenes/articulos/eventoLuciParche.jpg" style="width: 100%; height: auto;"></a>
        <img src="../imagenes/GuirnaldaEstrellas_Carmesi.png" style="margin-bottom: 2em; width: 100%; height: auto;">
    </div>

    <!--Sección de la izquierda-->
    <div class="w3-container w3-twothird w3-animate-opacity">
        <!--Noticias destacadas-->
        <div class="w3-row w3-display-container" style="margin-bottom: 0em;">
            <img src="../imagenes/noticias.png" style="width: 100%; height: auto;">
            <div class="w3-row w3-display destacados" style="text-align: center; color: #a30d33;">
                <div class="w3-half w3-display-left w3-container" style="padding: 6%; margin: 3%; margin-top: 2%;">
                    <a href="vistaProximamente.jsp" style="text-decoration: none;"><img src="../imagenes/articulos/Parche_2020_Small.jpg">
                        <h3 style="font-weight: 600;">[ULTIMATE RAP BATTLE]<br>¡Nuevas canciones!</h3>
                    </a>
                </div>
                <div class="w3-half w3-display-right w3-container" style="padding: 6%; margin: 3%; margin-top: 2%;">
                    <a href="vistaProximamente.jsp" style="text-decoration: none;"><img src="../imagenes/articulos/2020-07_nuevoHeroe.jpg">
                        <h3 style="font-weight: 600;">[KING OF SEVEN]<br>Nuevo héroe</h3>
                    </a>
                </div>
            </div>
        </div>
        <!--Articulos-->
        <div id="Articulos" class="w3-row w3-display-container" style="margin-top: 0em;">
            <img src="../imagenes/articulos.png" style="width: 100%; height: auto;">
            <!--Articulo 1-->
            <div id="A1" class="articulo">

            </div>
            <!--Articulo 2-->
            <div id="A2" class="articulo">

            </div>
            <!--Articulo 3-->
            <div id="A3" class="articulo">

            </div>

            <!--Pequeño menú de navegación entre páginas. Está de adorno, solo funciona la primera página-->
            <div class="w3-container w3-display-middle  nav " style="margin-top: 45%; padding: 0em;">
                <img src="../imagenes/fii.png " style="width: 10%; height: auto; ">
                <img src="../imagenes/fi.png " style="width: 7%; height: auto;">
                <a href="vistaNovedades.jsp"><img src="../imagenes/estrellaRosa.png " style="width: 10%; height: auto;"></a>
                <img src="../imagenes/estrella2.png " style="width: 9%; height: auto;  ">
                <img src="../imagenes/estrella3.png " style="width: 9%; height: auto; ">
                <img src="../imagenes/dota.png " style="width: 7%; height: auto; margin: 7px;">
                <img src="../imagenes/estrella14.png " style="width: 9%; height: auto;">
                <img src="../imagenes/fd.png " style="width: 7%; height: auto;">
                <img src="../imagenes/fdd.png " style="width: 10%; height: auto;">
            </div>
        </div>

    </div>

    <!--Sección de la derecha-->
    <div class="w3-third novD w3-animate-opacity" style="width: 30%; 
-moz-user-select: none;
-webkit-user-drag: none;
-webkit-user-select: none;
-ms-user-select: none;">
        <!--Categorias-->
        <div id="categorias">
            <h3>CATEGORIAS</h3>
            <p>#Eventos #Personajes #Historia #Parches #Actualizacion #Canciones #URP #KoS #BD #Heroe #BlueDestiny #KingOfSeven #UltimateRapBattle #Skin #Lanzamiento #Novedad
            </p>
        </div>
        <!--Separador-->
        <img src="../imagenes/separador.png " style="margin-bottom: 2em; width: 70%; height: auto; margin: 10px; ">
        <!--Archivo-->
        <div id="archivo">
            <h3>ARCHIVO</h3>
            <ul>
                <li id="2020" style="font-weight: 700;"> 2020</li>
                <div class="mes ">
                    <ul class="w3-animate-opacity">
                        <li style="font-weight: 700;"><a href="vistaNovedades.jsp#Articulos">Julio</a></li>

                        <li><a href="vistaProximamente.jsp">Junio</li>
            <li>Abril</li>
            <li>Marzo</li>
            <li>Febrero</li>
            <li>Enero</li>
        </ul>
    </div>
    <li>2019</li>
    <li>2018</li>
    <li>2017</li>
    <li>2016</li>
    <li>2015</li>
    <li>2014</li>
    <li>2013</li>
    <li>2012</a></li>
                    </ul>
                </div>
        </div>
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