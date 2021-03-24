<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Permite realizar al pago de los productos seleccionados">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tramitar pedido</title>
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

    <div class="seccion w3-animate-opacity" style="margin: 0em; padding-top: 0em;padding-bottom: 0em;">
        <h3 style="margin-left: 1em; margin-top: 1em; margin-bottom: 1em; font-weight:600;">Resumen del pedido</h3>
    </div>
    <center>
    <div class="w3-animate-opacity">
        <form method="post" action="/Boundless/carro">
            <table border="1" cellpadding="1" width="95%" bgcolor="#FFFFFF" style="margin-bottom: 1em;   border-collapse: collapse;">
                <tr>
                    <th style="text-align: center; background-color: #a3183b; color: white;"><b>Producto</b></th>
                    <th style="text-align: center; background-color: #a3183b; color: white;"><b>Cantidad</b></th>
                    <th style="text-align: center; background-color: #a3183b; color: white;"><b>Importe</b></th>
                </tr>

                <tr>
                <c:set var="importeTotal" value="0"/>
                <c:set var="pedido" value=""/>
                    <c:set var="carro" value="${carrito}" />
                    <c:forEach var="mercancia" items="${carro}">
                        <tr>
                            <td text-align: center; >
                                <bd>${mercancia.descripcion}</b>
                            </td>
                            <td style="text-align: center ">
                                <c:choose>
                                    <c:when test="${!empty param.stockMax}">`
                                        <bd>${mercancia.cantidad} (máximo disponible)</b>
                                    </c:when>
                                    <c:otherwise>
                                        <bd>${mercancia.cantidad}</b>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td style="text-align: center ">
                                <bd><fmt:formatNumber value="${mercancia.precio * mercancia.cantidad}" type="currency"/></b>
                            </td>
                        </tr>
                        <c:set var="importeTotal" value="${importeTotal + mercancia.precio * mercancia.cantidad}"/>
                        <c:set var="pedido" value="${pedido}${mercancia.descripcion}&${mercancia.cantidad}&${mercancia.precio * mercancia.cantidad};"/>
                    </c:forEach>
                    <tr>
                        <td></td>
                        <td style="text-align: center "><b>IMPORTE TOTAL</b></td>
                        <td style="text-align: center "><b><fmt:formatNumber value="${importeTotal}" type="currency"/></b></td>
                    </tr>
            </table>
        </form>
        <div class="w3-container w3-row" style="width: 50%; margin-top: 2em">
            <div class="w3-half w3-container">
                <a href="vistaCarro.jsp" class="w3-button w3-round w3-text-white 
                    w3-highway-red w3-hover-black w3-block" style="font-size: large;  margin-right: 2em">Cancelar</a>
            </div>
            <div class="w3-half w3-container" style=" margin-bottom: 1em;">
                <form method="post " action="/Boundless/pagar">
                <input type="hidden" name="resumenPedido" value="${pedido}">
                <button id="btn" type="submit" class="w3-button w3-round w3-text-white 
                            w3-highway-red w3-hover-black w3-block" style="font-size: large; margin-left: 2em">Confirmar pago</button>                
                </form>       
            </div>
        </div>
        <div>
            <h3 style="font-weight: bold; color: #a3183b">Información de contacto:</h3>
            <p><b>Correo:</b> ${initParam['mailContacto']}</p>
            <p><b>Teléfono:</b> ${initParam['telefonoContacto']}</p>
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