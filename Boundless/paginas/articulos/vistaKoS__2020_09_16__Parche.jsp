<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Artículo que contiene los detalles acerca del parche 21.35.5 de KoS">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Articulo</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="../../estilo.css">
    <link rel="icon" type="image/x-icon" href="../../imagenes/favicon.ico">

</head>


<body style="background-image: url(../../imagenes/bg2.jpg); background-position: bottom; background-repeat: no-repeat; width: 100%;">

    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../../index.jsp" class="w3-mobile"><img src="../../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="../vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="../vistaNovedades.jsp" class="w3-mobile" style="background-color: #520d1e;">Novedades</a></li>
            <li><a href="../vistaProductos.jsp" class="w3-mobile">Productos</a></li>
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

    <div class="w3-animate-opacity">
        <!--Path-->
        <h4 style="color: #af153b; padding-left: 2em;">KoS/NOVEDADES/2020/SEPTIEMBRE</h4>

        <!--Cuerpo de la noticia-->
        <div class="w3-container" style="padding: 0em; margin:2em; margin-top:1em;  background-color: rgb(255, 255, 255); border-color: #141212; border-width: medium; border-style: solid;">
            <DIV class="texto" style="padding: 2em;">
                <p style="color: #c9657e;">16/09/2020</p>
                <h1 style="margin-top: 17px; font-weight: 600; color: #af153b">[KoS] Notas del parche de septiembre 2020</h1>
                <img src="../../imagenes/articulos/eventoLuci.jpg" style="width: 100%; height: auto; margin-bottom: 2em;">
                <div class="contenidoArticulo">
                    <p>¡Hola, herederos! Aquí Nimu~.</p>
                    <p>Os informamo de que hemos programado un parche para corregir pequeño errores.</p>
                    <p>Sigan leyendo para conocer más detalles.</p>
                    <br>
                    <p>■ Parche del 19/09</p>
                    <ol>
                        <li>Cuándo: 19/09 (jueves) 07:10 (UTC)</li>
                        <li>
                            <p>Correción de errores:</p>
                            <div style="padding-left: 3em;">
                                <p>- Un error donde al tocar la tienda de Pucc en el laberinto el juego se cierra inesperadamente.</p>
                                <p>- Un fallo en las líneas de diálogo de Angélica en el Capítulo 32.</p>
                            </div>
                        </li>
                    </ol>
                    <br>
                    <p>※ Importante</p>
                    <div style="padding-left: 3em;">
                        <p>- El parche se aplicará automáticamente al iniciar sesión.</p>
                        <p>- Es probable que durante la aplicación del parche el juego se cierre repentinamente. Reinicien King of Seven para continuar jugando normalmente.</p>
                        <p>- Podrán jugar King of Seven tras la aplicación del parche.</p>
                    </div>
                    <br>
                    <p>Nimu aprecia mucho su paciencia. Haremos todo lo posible para brindarles un mejor juego.</p>

                    <p>¡Gracias!</p>
                </div>
            </DIV>

            <!--Adorno de fin de articulo-->
            <img src="../../imagenes/GuirnaldaEstrellas_Carmesi.png" style="padding:0em; margin-bottom: 2em; width: 100%; height: auto;">
        </div>

        <!--Noticias relacionadas-->
        <div class="w3-display-container seccion" style="padding: 0em; margin: 0em; background-color: white; opacity: 0.85;">
            <img src="../../imagenes/articulosRelacionados.png" style=" width: 100%; height: auto;">
            <div class="w3-row ">
                <!--Noticia 1-->
                <div class=" w3-third w3-display-left w3-container " style="padding:2em;padding-right: 1em;padding-left: 5em; margin-top: 1em;">
                    <a href=" ../vistaProximamente.jsp "><img src="../../imagenes/articulos/gardenSmall.jpg ">
                        <h3 style="margin-left: 0em;text-align: center;font-weight: 600;color: #af153b; ">[KoS] Parche agosto 2020</h3>
                    </a>
                </div>
                <!--Noticia 2-->
                <div class="w3-third w3-display-middle w3-container " style="padding:2em; padding-right: 3em;padding-left: 3em;margin-top: 1em; ">
                    <a href="../vistaProximamente.jsp "><img src="../../imagenes/articulos/smileSmall.jpg ">
                        <h3 style="margin-left: 0em;text-align: center;font-weight: 600;color: #af153b; ">[KoS] Parche junio 2020</h3>
                    </a>
                </div>
                <!--Noticia 3-->
                <div class="w3-third w3-display-right w3-container " style="padding:2em;padding-right: 5em;padding-left: 1em; margin-top: 1em;">
                    <a href="../vistaProximamente.jsp "><img src="../../imagenes/articulos/cageSmall.jpg ">
                        <h3 style="margin-left: 0em;text-align: center;font-weight: 600;color: #af153b; ">[KoS] Parche marzo 2020</h3>
                    </a>
                </div>
            </div>
        </DIV>
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