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
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">
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
                            w3-hover-white w3-hover-text-black" style="margin: 0; padding: 0; padding-right: 10px; padding-left: 10px;margin-right:1em;">Cerrar sesión</button>
                    </form>
                </c:if>
            </li>
        </ul>
    </div>

    <!--Productos de la empresa-->
    <div class="w3-animate-opacity">
        <div class="w3-row">
            <div class="w3-half">
                <h3 style="margin: 1em; margin-left: 2em; font-weight:bold;">Tienda de merchandising</h3>
            </div>

            <div class="w3-half" style="margin-top: 1em"> 
                <a href="/Boundless/paginas/vistaCarro.jsp" class="w3-button w3-round w3-text-white 
                        w3-highway-red w3-hover-black  w3-right" style="font-size: large;  margin: 0; margin-right: 2em">Ver carrito</a>
            </div>
        </div>
        <div class="w3-row w3-container productos">
            <c:forEach var="Mercancia" items="${vectorMercancia}">
                <div class="w3-third">
                    <center>
                    <img src="../${Mercancia.img}" width="350px"><br>
                    <h2><b>${Mercancia.descripcion}</b></h2>
                    
                    <c:choose>
                        <c:when test="${Mercancia.cantidad == 0}">
                            <p><b>Cantidad en stock:</b> No disponible </p>
                        </c:when>    
                        <c:otherwise>
                            <p><b>Cantidad en stock</b>: ${Mercancia.cantidad}</p>
                        </c:otherwise>
                    </c:choose>

                    <p><b>Precio:</b> ${Mercancia.precio} €</p>
                    <form method="post" action="/Boundless/carro" style="margin-top: 1em; margin-bottom: 1em;">
                        <input type="hidden" name="cantidad" value="1"> 
                        <input type="hidden" name="stock" value="${Mercancia.cantidad}"> 
                        <input type="hidden" name="descripcionMercancia" value="${Mercancia.descripcion}"> 
                        <c:choose>
                        <c:when test="${Mercancia.cantidad == 0}">
                            <input class="w3-button w3-round w3-text-white 
                            w3-highway-red w3-hover-black" type="submit" value="Añadir al carrito" disabled>
                        </c:when>    
                        <c:otherwise>
                            <input class="w3-button w3-round w3-text-white 
                            w3-highway-red w3-hover-black" type="submit" value="Añadir al carrito" >
                        </c:otherwise>
                        </c:choose>
                    </form>
                    </center>
                </div>
            </c:forEach>
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