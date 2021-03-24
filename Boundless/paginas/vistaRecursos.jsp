<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene información miscelánea sobre los diferentes recursos que un usuario podría
necesitar: información de contacto, estado de servidores, ToS, política de privacidad, etc.">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Recursos</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="../estilo.css">
    <link rel="icon" type="image/x-icon" href="../imagenes/favicon.ico">
</head>

<body>
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../index.jsp" class="w3-mobile"><img src="../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
            <li><a href="vistaProductos.jsp" class="w3-mobile">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile">Tienda</a></li>
            <li><a href="vistaRecursos.jsp" class="w3-mobile" style="background-color: #520d1e;">Recursos</a></li>
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


    <!--Recursos ofrecidos-->
    <div class="seccion seccionBlanca recursos w3-animate-opacity" style="margin: 0em; padding-top: 0em;padding-bottom: 0em;">
        <h3 style="margin: 0em; font-weight:600;">Recursos</h3>
        <ul style="margin-top: 5px; margin-bottom: 20px;padding-left: 4em;">
            <li><a href="vistaServidores.jsp ">Estado de los Servidores</a></li>
            <li><a href="vistaProximamente.jsp ">Soporte Técnico</a></li>
            <li><a href="vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="vistaContacto.jsp ">Información de contacto</a></li>
        </ul>
    </div>

    <!--Imágenes de adorno-->
    <div class="w3-animate-opacity img">
        <img src="../imagenes/GuirnaldaEstrellas_Gris.png " style="width: 100%; height: auto; ">
        <img src="../imagenes/recursosBanner.jpg " style="width: 100%; height: auto; ">
        <img src="../imagenes/GuirnaldaEstrellas_Gris.png " style="width: 100%; height: auto; ">
    </div>

</body>

<!--Pie de página-->
<footer style="position: fixed; left: 0;
   bottom: 0;
   width: 100%;">
    <div class="pie " ALIGN=center style="position: absolute;bottom: 0; ">
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