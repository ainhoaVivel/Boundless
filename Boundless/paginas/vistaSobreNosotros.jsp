<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene información sobre la empresa Boundless.">


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sobre Nosotros</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">
</head>

<body style="background-image: url(../imagenes/bg2.jpg); background-position: bottom; background-repeat: no-repeat; width: 100%;">
    <!--Menú de navegación-->
    <div class="navbar" ALIGN=left style="z-index: 1">
        <ul>
            <a href="../index.jsp" class="w3-mobile"><img src="../imagenes/icon.png" style="object-fit: cover"></a>
            <li><a href="vistaSobreNosotros.jsp" class="w3-mobile" style="background-color: #520d1e;">Sobre Nosotros</a></li>
            <li><a href="vistaNovedades.jsp" class="w3-mobile">Novedades</a></li>
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

    <!--Título de página-->
    <!--
<h1 class="w3-container sec" style="font-weight: 600;">Sobre Nosotros</h1>
-->

    <!--Imágenes de portada-->
    <div class="w3-animate-opacity">
        <img src="../imagenes/sobreNosotrosBanner.jpg" style="width: 100%; height: auto; margin-top: 1em;">
        <img src="../imagenes/GuirnaldaEstrellas_Gris.png" style="margin-bottom: 1em; width: 100%; height: auto;">
    </div>

    <!--Sobre Nosotros-->
    <div class="w3-container seccion w3-animate-opacity" style="margin: 0; padding: 0;">
        <DIV class="w3-display-container seccion w3-col">
            <img src="../imagenes/SobreNosotros.png" style="width: 100%; height: auto;">
            <div class="w3-row ">
                <div class="w3-half w3-container w3-display-left" style="padding: 4em;padding-left:8em;">
                    <p style="font-weight: 600;">Nombre oficial:</p>
                    <p class="sangria"> Boundless, Inc.</p>
                    <p style="font-weight: 600;">Oficina: </p>
                    <p class="sangria"> Calle Maestro Don Marciano, 1, 33011 Oviedo, Asturias, España</p>
                    <p style="font-weight: 600;">Presidente:</p>
                    <p class="sangria"> Andrea Martínez Paradela</p>
                    <p style="font-weight: 600;">Fundación: </p>
                    <p class="sangria"> Julio 2012</p>
                    <p style="font-weight: 600;">Capital: </p>
                    <p class="sangria"> 1.758.000 €</p>
                    <p style="font-weight: 600;">Industria: </p>
                    <p class="sangria"> Planificación y desarrollo de juegos</p>
                </div>
                <div class="w3-half w3-container w3-display-right">
                    <img src="../imagenes/lumina.jpg" style="width:80%;">
                </div>
            </div>
        </div>
    </div>

    <!--Objetivos de la empresa-->
    <div class="w3-display-container w3-col" style="padding: 0em; margin: 0em;">
        <img src="../imagenes/objetivos.png" style="width: 100%; height: auto;">
        <div class="w3-row-padding w3-stretch " style="color: whitesmoke;">
            <div class="w3-third w3-container w3-display-left cita" style="padding: 5em; padding-right: 2em;padding-left: 7em;">
                <h3 style="font-weight: 600;">Jugando juntos</h3>
                <p>Boundless va en serio con los juegos. Creemos que es una parte esencial del proceso de creación. No te sorprendas si alguien te da un gamepad en tu tiempo aquí.</p>
            </div>
            <div class="w3-third w3-container w3-display-middle cita" style="padding: 5em;">
                <h3 style="font-weight: 600;">Pensando juntos</h3>
                <p>Nuestra experiencia como jugadores y creadores informa todo lo que producimos. Siempre trabajamos juntos para descubrir lo que hace que los grandes juegos funcionen.</p>
            </div>
            <div class="w3-third w3-container w3-display-right cita" style="padding: 5em; padding-right: 7em;padding-left: 2em;">
                <h3 style="font-weight: 600;">Trabajando juntos</h3>
                <p>Creamos increíbles experiencias de juego. Nuestros miembros ven cada gráfico y cada línea de código como una oportunidad para brillar.</p>
            </div>
        </div>
    </div>

    <!--Trayectoria-->
    <div class="w3-container texto" style="text-align: center; margin: 3em; margin-top: 50%;border-color: #b11239; border-style: solid;">

        <h1 style="text-align: left; color: #b11239;">TRAYECTORIA</h1>

        <div id="2012" style="margin-bottom: 3em;">
            <h2>2012</h2>
            <h3>Julio</h3>
            <p>Se fundó Boundless, Inc.</p>
        </div>
        <div id="2013" style="margin-bottom: 3em;">
            <h2>2013</h2>
            <h3>Julio</h3>
            <p>King of Seven lanzado en PC, iOS y Android</p>
            <h3>Octubre</h3>
            <p>Se formó una alianza estratégica con DeNaDa Co., Ltd.</p>
        </div>
        <div id="2016" style="margin-bottom: 3em;">
            <h2>2016</h2>
            <h3>Marzo</h3>
            <p>Lanzamiento de King of Seven (Corea).</p>
            <h3>Septiembre</h3>
            <p>U.R.P: Ultimate Rap Battle lanzado en PC.</p>
            <h3>Octubre</h3>
            <p>Lanzamiento de King of Seven (China).</p>
            <p>Lanzamiento de King of Seven (Taiwán, Hong Kong y Macao).</p>
            <h3>Diciembre</h3>
            <p>U.R.P: Ultimate Rap Battle lanzado en iOS y Android</p>
        </div>
        <div id="2017" style="margin-bottom: 3em;">
            <h2>2017</h2>
            <h3>Agosto</h3>
            <p>Comenzó el primer programa de inversión de la industria del juego en España.</p>
        </div>
        <div id="2018" style="margin-bottom: 3em;">
            <h2>2018</h2>
            <h3>Febrero</h3>
            <p>Proporcionó 70 millones de euros de financiación a Miracle Negative Co., Ltd. Para desarrollar el dirigible Q.
            </p>
            <h3>Noviembre</h3>
            <p>Comenzó la línea de juegos de Boundless Arcade Master.</p>
        </div>
        <div id="2019" style="margin-bottom: 3em;">
            <h2>2019</h2>
            <h3>Enero</h3>
            <p>Se fundó GamelessBound, Inc.</p>
            <p>Se fundó Boundless Japón.</p>
            <h3>Junio</h3>
            <p>CyberCop y Boundless crearon un fondo común.</p>
            <h3>Octubre</h3>
            <p>Se formó el Centro de Depuración de Boundless Saga.</p>
            <p>Se lanza BoundComics en asociación con Kadokansha Ltd.</p>
            <p>Se convirtió en el patrocinador del Juventus F.C.</p>
        </div>
        <div id="2020" style="margin-bottom: 3em;">
            <h2>2020</h2>
            <h3>Enero</h3>
            <p>Blue Destiny lanzado en PC, iOS y Android</p>
            <h3>Julio</h3>
            <p>Blue Destiny lanzado en PS4</p>
            <h3>Agosto</h3>
            <p>Se estableció el estudio Boundless Saga</p>
            <p>El edificio Lumina fue adquirido</p>
        </div>

    </div>

    <!--Reconocimientos-->
    <div class="w3-container" style="background-color: #292325;">
        <div class="w3-container texto" style="background-color: transparent;text-align: center; margin: 3em; border-color:whitesmoke; border-style: solid; color: whitesmoke;">

            <h1 style="text-align: left;">RECONOCIMIENTOS</h1>
            <div id="Boundless" style="margin-bottom: 3em;">
                <h2 style="font-weight: 600;">Boundless, Inc.</h2>
                <p>Desarrollador del año 2012</p>
                <p>Premio a la Innovación 2012</p>
                <p>Premio al pionero 2012</p>
                <p>Desarrollador del año 2015</p>
                <p>Desarrollador del año 2016</p>
                <p>Premio a la Innovación 2016</p>
                <p>Desarrollador del año 2019</p>
                <p>Desarrollador del año 2020</p>
                <p>Premio a la mejor tecnología 2020</p>
                <p>Premio a la mejor programación 2020</p>
            </div>
            <div id="KoS" style="margin-bottom: 3em;">
                <h2 style="font-weight: 600;">King of Seven</h2>
                <p>Juego del año 2012</p>
                <p>Mejor banda sonora 2012</p>
                <p>Mejor dirección 2012</p>
                <p>Mejor narrativa 2012</p>
                <p>Mejor juego de estrategia 2012</p>
                <p>Mejor juego de rol 2012</p>
                <p>Mejor banda sonora 2015</p>
                <p>Mejor diseño de audio 2015</p>
                <p>Mejor juego de rol 2015</p>
                <p>Mejor juego multijugador 2019</p>
                <p>Mejor juego de rol 2019</p>
            </div>
            <div id="URB" style="margin-bottom: 3em;">
                <h2 style="font-weight: 600;">U.R.B: Ultimate Rap Battle</h2>
                <p>Juego del año 2016</p>
                <p>Mejor banda sonora 2016</p>
                <p>Mejor diseño de audio 2016</p>
                <p>Mejor banda sonora 2017</p>
                <p>Mejor diseño de audio 2017</p>
                <p>Mejor banda sonora 2020</p>
                <p>Mejor diseño de audio 2020</p>
            </div>
            <div id="BD" style="margin-bottom: 3em;">
                <h2>Blue Destiny</h2>
                <p>Juego del año 2020</p>
                <p>Mejor juego de rol 2020</p>
                <p>Mejor narrativa 2020</p>
                <p>Mejor dirección 2020</p>

            </div>
        </div>
    </div>

    <!--Localización-->
    <div class="w3-container">
        <div class="w3-container texto" style="background-color: white; text-align: center; margin: 3em; border-color:#b11239; border-style: solid;color: #b11239; ">
            <h1 style="text-align: left; ">LOCALIZACIÓN</h1>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2899.7843160531284!2d-5.8256218845110315!3d43.38153367913155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd368c7b29296d6f%3A0x753b81a711e88160!2sEdificio%20Lumina!5e0!3m2!1ses!2ses!4v1603213046192!5m2!1ses!2ses"
                width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

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