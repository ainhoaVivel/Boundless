<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene información para acceder a una cuenta Boundless.">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Acceso</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-highway.css">

    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#login").mouseover(function() {
                $("#login").css("cursor", "pointer")
            });

            $("#registro").mouseover(function() {
                $("#registro").css("cursor", "pointer")
            });


            $("#login").click(function() {
                $("#formularioResgistro").css("display", "none")
                $("#formularioLoggeo").css("display", "inline")
            });

            $("#registro").click(function() {
                $("#formularioLoggeo").css("display", "none")
                $("#formularioResgistro").css("display", "inline")
            });
        });
    </script>

</head>

<body style="background-color:#faeced">
    <!--Logo-->
    <div class="w3-display-left w3-half w3-animate-opacity">
        <div class="logo" ALIGN=center style="background-repeat: no-repeat;
                background-position:bottom;
                background-size: cover; margin: 0;">
            <a href="/Boundless/index.jsp"><img src="/Boundless/imagenes/logoB.png"></a>
        </div>
    </div>

    <div id="formularioLoggeo" class="w3-display-right w3-half w3-animate-opacity w3-center">
        <div class="w3-round" style="background-color: white; margin-right: 5em; padding: 1em;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-align: center;">
            <h1 style="margin-bottom: 1px; color:#a6001a; font-weight: bold;">Inicia sesión</h1>
            <form id="form2" name="log" method="POST" action="/Boundless/login">
                <div class="w3-container w3-col m12  w3-animate-opacity w3-center">
                    <input id="cL" class="w3-input w3-padding-16" type="email" maxlength="100" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$" placeholder="Correo electrónico*" required name="correo">
                </div>

                <div class="w3-container w3-col m12 w3-animate-opacity w3-center" style="margin-bottom: 1em;">
                    <input id="pL" class="w3-input w3-padding-16" type="password" maxlength="20" placeholder="Contraseña*" name="password" required>
                </div>

                <p id="merrorLogin" style="display: none">El correo y/o la contraseña introducidos no son válidos</p>

                <button class="w3-button w3-round w3-section w3-text-white w3-highway-red w3-hover-black w3-block" style="font-size: large;" type="submit">Entrar</button>
            </form>
            <a id="registro" style=" text-decoration: underline;">¿Aún no tienes cuenta? Regístrate</a>
        </div>
    </div>


    <div id="formularioResgistro" class="w3-display-right w3-half w3-animate-opacity w3-center" style="display: none;">
        <div class="w3-round" style="background-color: white; margin-right: 5em; padding: 1em;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-align: center;">
            <h1 style="margin-bottom: 1px; color:#a6001a; font-weight: bold;">Registro</h1>
            <p style="margin-top: 0;">Es muy rápido y sencilo</p>
            <form name="reg" method="POST" action="/Boundless/registro">
                <div class="w3-row">
                    <div class="w3-container w3-col m4 12 w3-animate-opacity w3-center" style="padding: 0;">
                        <input class="w3-input w3-padding-16" type="text" maxlength="45" pattern="[a-zA-Zá-úÁ-Ú]{2,}" placeholder="Nombre*" required name="nombre">
                    </div>
                    <div class="w3-container w3-col m4 12  w3-animate-opacity w3-center">
                        <input class="w3-input w3-padding-16" type="text" maxlength="45" pattern="[a-zA-Zá-úÁ-Ú]{2,}" placeholder="Primer apellido" name="apellido1">
                    </div>
                    <div class="w3-container w3-col m4 12 w3-animate-opacity w3-center" style="padding-left: 0;">
                        <input class="w3-input w3-padding-16" type="text" maxlength="45" pattern="[a-zA-Zá-úÁ-Ú]{2,}" placeholder="Segundo apellido" name="apellido2">
                    </div>
                </div>

                <div class="w3-row">

                    <div class="w3-container w3-col m6 12  w3-animate-opacity w3-center" style="padding: 0;">
                        <input id="cR" class="w3-input w3-padding-16" type="email" maxlength="100" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$" placeholder="Correo electrónico*" required name="correo">
                    </div>
                    <div class="w3-container w3-col m6 12  w3-animate-opacity w3-center">
                        <input id="pR" class="w3-input w3-padding-16" type="password" maxlength="20" placeholder="Contraseña*" required name="password">
                    </div>
                </div>

                <div class="w3-row">

                    <div class="w3-container w3-col m6 12" style="padding-left: 0;">
                        <input class="w3-input w3-padding-16" type="date" placeholder="Fecha" required name="fecha" value="2020-12-22">
                    </div>
                    <div class="w3-container w3-col m6 12" style="padding-left: 0;margin-top: 1.5em;">
                        <input class=" w3-padding-16" type="radio" id="hombre" name="gender" value="h" checked>
                        <label for="hombre"> Hombre</label>
                        <input class=" w3-padding-16" type="radio" id="mujer" name="gender" value="m">
                        <label for="mujer"> Mujer</label>
                        <input class="w3-padding-16" type="radio" id="otro" name="gender" value="o">
                        <label for="otro"> Otro</label>

                    </div>
                </div>

                <div class="w3-row">

                    <div class="w3-container w3-col m6 12" style="padding-left: 0;">
                        <input class="w3-input w3-padding-16" type="tel" maxlength="12" pattern="[0-9]{3} [0-9]{2} [0-9]{2} [0-9]{2}" placeholder="Teléfono - 648 84 68 19" name="telf">
                    </div>

                    <div class="w3-container w3-col m6 12" style="padding: 0; padding-right: 1em;" style="margin-bottom: 1em;">
                        <select class="w3-input w3-round  w3-padding-16" required id="Pais" name="pais">
                            <option value="AF">Afganistán</option>
                            <option value="AL">Albania</option>
                            <option value="DE">Alemania</option>
                            <option value="AD">Andorra</option>
                            <option value="AO">Angola</option>
                            <option value="AI">Anguilla</option>
                            <option value="AQ">Antártida</option>
                            <option value="AG">Antigua y Barbuda</option>
                            <option value="AN">Antillas Holandesas</option>
                            <option value="SA">Arabia Saudí</option>
                            <option value="DZ">Argelia</option>
                            <option value="AR">Argentina</option>
                            <option value="AM">Armenia</option>
                            <option value="AW">Aruba</option>
                            <option value="AU">Australia</option>
                            <option value="AT">Austria</option>
                            <option value="AZ">Azerbaiyán</option>
                            <option value="BS">Bahamas</option>
                            <option value="BH">Bahrein</option>
                            <option value="BD">Bangladesh</option>
                            <option value="BB">Barbados</option>
                            <option value="BE">Bélgica</option>
                            <option value="BZ">Belice</option>
                            <option value="BJ">Benin</option>
                            <option value="BM">Bermudas</option>
                            <option value="BY">Bielorrusia</option>
                            <option value="MM">Birmania</option>
                            <option value="BO">Bolivia</option>
                            <option value="BA">Bosnia y Herzegovina</option>
                            <option value="BW">Botswana</option>
                            <option value="BR">Brasil</option>
                            <option value="BN">Brunei</option>
                            <option value="BG">Bulgaria</option>
                            <option value="BF">Burkina Faso</option>
                            <option value="BI">Burundi</option>
                            <option value="BT">Bután</option>
                            <option value="CV">Cabo Verde</option>
                            <option value="KH">Camboya</option>
                            <option value="CM">Camerún</option>
                            <option value="CA">Canadá</option>
                            <option value="TD">Chad</option>
                            <option value="CL">Chile</option>
                            <option value="CN">China</option>
                            <option value="CY">Chipre</option>
                            <option value="VA">Ciudad del Vaticano (Santa Sede)</option>
                            <option value="CO">Colombia</option>
                            <option value="KM">Comores</option>
                            <option value="CG">Congo</option>
                            <option value="CD">Congo, República Democrática del</option>
                            <option value="KR">Corea</option>
                            <option value="KP">Corea del Norte</option>
                            <option value="CI">Costa de Marfíl</option>
                            <option value="CR">Costa Rica</option>
                            <option value="HR">Croacia (Hrvatska)</option>
                            <option value="CU">Cuba</option>
                            <option value="DK">Dinamarca</option>
                            <option value="DJ">Djibouti</option>
                            <option value="DM">Dominica</option>
                            <option value="EC">Ecuador</option>
                            <option value="EG">Egipto</option>
                            <option value="SV">El Salvador</option>
                            <option value="AE">Emiratos Árabes Unidos</option>
                            <option value="ER">Eritrea</option>
                            <option value="SI">Eslovenia</option>
                            <option value="ES" selected>España</option>
                            <option value="US">Estados Unidos</option>
                            <option value="EE">Estonia</option>
                            <option value="ET">Etiopía</option>
                            <option value="FJ">Fiji</option>
                            <option value="PH">Filipinas</option>
                            <option value="FI">Finlandia</option>
                            <option value="FR">Francia</option>
                            <option value="GA">Gabón</option>
                            <option value="GM">Gambia</option>
                            <option value="GE">Georgia</option>
                            <option value="GH">Ghana</option>
                            <option value="GI">Gibraltar</option>
                            <option value="GD">Granada</option>
                            <option value="GR">Grecia</option>
                            <option value="GL">Groenlandia</option>
                            <option value="GP">Guadalupe</option>
                            <option value="GU">Guam</option>
                            <option value="GT">Guatemala</option>
                            <option value="GY">Guayana</option>
                            <option value="GF">Guayana Francesa</option>
                            <option value="GN">Guinea</option>
                            <option value="GQ">Guinea Ecuatorial</option>
                            <option value="GW">Guinea-Bissau</option>
                            <option value="HT">Haití</option>
                            <option value="HN">Honduras</option>
                            <option value="HU">Hungría</option>
                            <option value="IN">India</option>
                            <option value="ID">Indonesia</option>
                            <option value="IQ">Irak</option>
                            <option value="IR">Irán</option>
                            <option value="IE">Irlanda</option>
                            <option value="BV">Isla Bouvet</option>
                            <option value="CX">Isla de Christmas</option>
                            <option value="IS">Islandia</option>
                            <option value="KY">Islas Caimán</option>
                            <option value="CK">Islas Cook</option>
                            <option value="CC">Islas de Cocos o Keeling</option>
                            <option value="FO">Islas Faroe</option>
                            <option value="HM">Islas Heard y McDonald</option>
                            <option value="FK">Islas Malvinas</option>
                            <option value="MP">Islas Marianas del Norte</option>
                            <option value="MH">Islas Marshall</option>
                            <option value="UM">Islas menores de Estados Unidos</option>
                            <option value="PW">Islas Palau</option>
                            <option value="SB">Islas Salomón</option>
                            <option value="SJ">Islas Svalbard y Jan Mayen</option>
                            <option value="TK">Islas Tokelau</option>
                            <option value="TC">Islas Turks y Caicos</option>
                            <option value="VI">Islas Vírgenes (EEUU)</option>
                            <option value="VG">Islas Vírgenes (Reino Unido)</option>
                            <option value="WF">Islas Wallis y Futuna</option>
                            <option value="IL">Israel</option>
                            <option value="IT">Italia</option>
                            <option value="JM">Jamaica</option>
                            <option value="JP">Japón</option>
                            <option value="JO">Jordania</option>
                            <option value="KZ">Kazajistán</option>
                            <option value="KE">Kenia</option>
                            <option value="KG">Kirguizistán</option>
                            <option value="KI">Kiribati</option>
                            <option value="KW">Kuwait</option>
                            <option value="LA">Laos</option>
                            <option value="LS">Lesotho</option>
                            <option value="LV">Letonia</option>
                            <option value="LB">Líbano</option>
                            <option value="LR">Liberia</option>
                            <option value="LY">Libia</option>
                            <option value="LI">Liechtenstein</option>
                            <option value="LT">Lituania</option>
                            <option value="LU">Luxemburgo</option>
                            <option value="MK">Macedonia, Ex-República Yugoslava de</option>
                            <option value="MG">Madagascar</option>
                            <option value="MY">Malasia</option>
                            <option value="MW">Malawi</option>
                            <option value="MV">Maldivas</option>
                            <option value="ML">Malí</option>
                            <option value="MT">Malta</option>
                            <option value="MA">Marruecos</option>
                            <option value="MQ">Martinica</option>
                            <option value="MU">Mauricio</option>
                            <option value="MR">Mauritania</option>
                            <option value="YT">Mayotte</option>
                            <option value="MX">México</option>
                            <option value="FM">Micronesia</option>
                            <option value="MD">Moldavia</option>
                            <option value="MC">Mónaco</option>
                            <option value="MN">Mongolia</option>
                            <option value="MS">Montserrat</option>
                            <option value="MZ">Mozambique</option>
                            <option value="NA">Namibia</option>
                            <option value="NR">Nauru</option>
                            <option value="NP">Nepal</option>
                            <option value="NI">Nicaragua</option>
                            <option value="NE">Níger</option>
                            <option value="NG">Nigeria</option>
                            <option value="NU">Niue</option>
                            <option value="NF">Norfolk</option>
                            <option value="NO">Noruega</option>
                            <option value="NC">Nueva Caledonia</option>
                            <option value="NZ">Nueva Zelanda</option>
                            <option value="OM">Omán</option>
                            <option value="NL">Países Bajos</option>
                            <option value="PA">Panamá</option>
                            <option value="PG">Papúa Nueva Guinea</option>
                            <option value="PK">Paquistán</option>
                            <option value="PY">Paraguay</option>
                            <option value="PE">Perú</option>
                            <option value="PN">Pitcairn</option>
                            <option value="PF">Polinesia Francesa</option>
                            <option value="PL">Polonia</option>
                            <option value="PT">Portugal</option>
                            <option value="PR">Puerto Rico</option>
                            <option value="QA">Qatar</option>
                            <option value="UK">Reino Unido</option>
                            <option value="CF">República Centroafricana</option>
                            <option value="CZ">República Checa</option>
                            <option value="ZA">República de Sudáfrica</option>
                            <option value="DO">República Dominicana</option>
                            <option value="SK">República Eslovaca</option>
                            <option value="RE">Reunión</option>
                            <option value="RW">Ruanda</option>
                            <option value="RO">Rumania</option>
                            <option value="RU">Rusia</option>
                            <option value="EH">Sahara Occidental</option>
                            <option value="KN">Saint Kitts y Nevis</option>
                            <option value="WS">Samoa</option>
                            <option value="AS">Samoa Americana</option>
                            <option value="SM">San Marino</option>
                            <option value="VC">San Vicente y Granadinas</option>
                            <option value="SH">Santa Helena</option>
                            <option value="LC">Santa Lucía</option>
                            <option value="ST">Santo Tomé y Príncipe</option>
                            <option value="SN">Senegal</option>
                            <option value="SC">Seychelles</option>
                            <option value="SL">Sierra Leona</option>
                            <option value="SG">Singapur</option>
                            <option value="SY">Siria</option>
                            <option value="SO">Somalia</option>
                            <option value="LK">Sri Lanka</option>
                            <option value="PM">St Pierre y Miquelon</option>
                            <option value="SZ">Suazilandia</option>
                            <option value="SD">Sudán</option>
                            <option value="SE">Suecia</option>
                            <option value="CH">Suiza</option>
                            <option value="SR">Surinam</option>
                            <option value="TH">Tailandia</option>
                            <option value="TW">Taiwán</option>
                            <option value="TZ">Tanzania</option>
                            <option value="TJ">Tayikistán</option>
                            <option value="TF">Territorios franceses del Sur</option>
                            <option value="TP">Timor Oriental</option>
                            <option value="TG">Togo</option>
                            <option value="TO">Tonga</option>
                            <option value="TT">Trinidad y Tobago</option>
                            <option value="TN">Túnez</option>
                            <option value="TM">Turkmenistán</option>
                            <option value="TR">Turquía</option>
                            <option value="TV">Tuvalu</option>
                            <option value="UA">Ucrania</option>
                            <option value="UG">Uganda</option>
                            <option value="UY">Uruguay</option>
                            <option value="UZ">Uzbekistán</option>
                            <option value="VU">Vanuatu</option>
                            <option value="VE">Venezuela</option>
                            <option value="VN">Vietnam</option>
                            <option value="YE">Yemen</option>
                            <option value="YU">Yugoslavia</option>
                            <option value="ZM">Zambia</option>
                            <option value="ZW">Zimbabue</option>
                        </select>
                    </div>
                </div>

                <div class="w3-container w3-col m12 12 w3-animate-opacity w3-center" style="padding: 0; padding-right: 1em;">
                    <input class="w3-input w3-padding-16" type="text" maxlength="150" placeholder="Dirección" name="direccion">
                </div>

                <label class="w3-input w3-padding-16 w3-col m12"><input type="checkbox" required id="cbox" value=""> He
                    leído y acepto
                    los <a href="/Boundless/paginas/vistaToS.jsp" target="_blank">ToS</a> y la <a href="/Boundless/paginas/vistaPrivacidad.jsp"
                        target="_blank">Política de privacidad</a></label>
                <c:if test="${!empty param.errorRegistro}">
                    <p style="margin-top: 1em">El correo introducido ya está asociado a un cuenta existente.</p>
                </c:if>
                <button class="w3-button w3-round w3-section w3-text-white w3-highway-red w3-hover-black w3-block" type="submit">Registrarse</button>
            </form>
            <a id="login" style=" text-decoration: underline;">¿Ya tienes cuenta? Inicia sesión</a>
        </div>
    </div>

    <c:choose>
        <c:when test="${!empty param.errorLogin}">
            <script>
                $("#merrorLogin").css("display", "inline");
                $("#merrorRegistro").css("display", "none");
            </script>
        </c:when>
    </c:choose>

    <c:choose>
        <c:when test="${!empty param.errorRegistro}">
            <script>
                $("#formularioLoggeo").css("display", "none");
                $("#formularioResgistro").css("display", "inline");
            </script>
        </c:when>
    </c:choose>
</body>
</html>