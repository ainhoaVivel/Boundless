<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene información para poder conctactar con Boundless.">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contacto</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">

    <script>
        function redirect(link) {
            if (confirm("Atención, está a punto de ser redirigido a un sitio web externo.") == true) {
                window.open(link)
            }
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
            var j1 = "<li>" + J1[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue + "</li>" +
                '<p>Sitio web oficial: <span class="enlace" onclick="' + "redirect('" +
                J1[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue +
                "')" + '">' + J1[0].getElementsByTagName("WEB_OFICIAL_N")[0].childNodes[0].nodeValue +
                '</span></p><p>También puede contactarnos a través del <span class="enlace" onclick=' + "redirect('" +
                J1[0].getElementsByTagName("FORM")[0].childNodes[0].nodeValue +
                "')" + '>formulario oficial</span>.</p>';
            document.getElementById("J1").innerHTML = j1;

            //Segundo juego
            var J2 = xmlDoc.getElementsByTagName("URB");
            var j2 = "<li>" + J2[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue + "</li>" +
                '<p>Sitio web oficial: <span class="enlace" onclick="' + "redirect('" +
                J2[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue +
                "')" + '">' + J2[0].getElementsByTagName("WEB_OFICIAL_N")[0].childNodes[0].nodeValue +
                '</span></p><p>También puede contactarnos a través del <span class="enlace" onclick=' + "redirect('" +
                J2[0].getElementsByTagName("FORM")[0].childNodes[0].nodeValue +
                "')" + '>formulario oficial</span>.</p>';
            document.getElementById("J2").innerHTML = j2;

            //Tercer juego
            var J3 = xmlDoc.getElementsByTagName("KoS");
            var j3 = "<li>" + J3[0].getElementsByTagName("TITULO")[0].childNodes[0].nodeValue + "</li>" +
                '<p>Sitio web oficial: <span class="enlace" onclick="' + "redirect('" +
                J2[0].getElementsByTagName("WEB_OFICIAL_E")[0].childNodes[0].nodeValue +
                "')" + '">' + J3[0].getElementsByTagName("WEB_OFICIAL_N")[0].childNodes[0].nodeValue +
                '</span></p><p>Correo electrónico: ' + J3[0].getElementsByTagName("FORM")[0].childNodes[0].nodeValue + '</p>';
            document.getElementById("J3").innerHTML = j3;
        }
    </script>
</head>

<body onload="loadDoc();">
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="/Boundless/index.jsp" class="w3-mobile"><img src="/Boundless/imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
            <li><a href="vistaProductos.jsp" class="w3-mobile">Productos</a></li>
            <li><a href="/Boundless/stock" class="w3-mobile">Tienda</a></li>
            <li><a href="vistaRecursos.jsp" class="w3-mobile">Recursos</a></li>
            <li><a href="vistaContacto.jsp" class="w3-mobile" style="background-color: #520d1e;">Contacto</a></li>
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

    <!--Información de contacto-->
    <div class="texto w3-animate-opacity">
        <h3>Información de contacto</h3>
        <p>Para consultas sobre un juego, servicio o evento patrocinado por Boundless, por favor envíe su consulta a través del formulario de contacto designado para ese juego, servicio o evento. Por favor, tenga en cuenta que sólo recibimos
            consultas en español. </p>
        <ul>
            <!--Sobre BD-->
            <div id="J1" class="item">

            </div>

            <!--Sobre U.R.B.-->
            <div id="J2" class=" item ">

            </div>

            <!--Sobre KoS-->
            <div id="J3" class="item ">
            </div>

            <!--Sobre la empresa-->
            <div class="item ">
                <li>Boundless, Inc.</li>
                <p>Sitio web oficial: <a href="/Boundless/index.jsp">https://boundless.com/</a></p>
                <p>Correo electrónico: ${initParam['mailContacto']}</p>
                <p>Teléfono: ${initParam['telefonoContacto']}</p>
            </div>
        </ul>
    </div>

    <!--Imagen de adorno-->
    <img src="../imagenes/GuirnaldaEstrellas_Gris.png" style="width: 100%; height: auto;">

</body>


<!--Pie de página-->
<footer>
    <div class="pie " ALIGN=center>
        <ul>
            <li><a href="vistaProximamente.jsp ">Soporte técnico</a></li>
            <li><a href="vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="vistaContacto.jsp " style="color: #e2587b; ">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </DIV>
</footer>

</html>