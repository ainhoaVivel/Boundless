<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene toda la información necesario sobre los términos
del servicio de los juegos de Boundless">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Términos del Servicio</title>
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

    <div class="w3-animate-opacity">
        <!--Términos del servicio-->
        <div class="texto">
            <h3>Términos del servicio</h3>

            <p style="font-weight: 600;">Fecha efectiva: 12 de junio de 2020</p>

            <div class="parrafo">
                <p>Por favor, lea estos Términos de servicio cuidadosamente, incluyendo nuestra <a href="vistaPrivacidad.jsp">Política
            de privacidad</a>.</p>

                <p>Estos Términos del servicio (en adelante, Acuerdo), es un acuerdo legalmente vinculante entre Boundless, Inc. (en adelante, "Boundless", "nosotros", "nuestro") y usted (en adelante, "usted" o "usuario"). Este Acuerdo rige el
                    uso o el acceso a los juegos de Boundless, a nuestros sitios web, cualquier sitio específico de juegos, servicio de atención al cliente, las redes sociales, los canales de la comunidad y/o cualquier otro servicio en línea
                    proporcionado por Boundless y cualquiera de nuestros terceros autorizados (colectivamente los "servicios de Boundless"), ya sea como invitado o como usuario registrado. Preste especial atención a la limitación de responsabilidad
                    que figura en la sección 12 de este mismo texto.</p>

                <p style="font-weight: 600;">IMPORTANTE PARA PADRES, MADRES Y TUTORES: NUNCA DEBE PERMITIR QUE UN/UNA MENOR QUE ESTÉ A SU CUIDADO USE NINGUNO DE LOS SERVICIOS SIN SU SUPERVISIÓN. ASEGÚRESE DE QUE EL/LA MENOR NO DÉ INFORMACIÓN PERSONAL Y QUE ENTIENDA CÓMO
                    USAR LOS SERVICIOS CON SEGURIDAD.</p>

                <p>"Juego(s) de Boundless" se refiere a cualquier juego que Boundless ha lanzado o lanzará en el futuro, o cualquiera de sus juegos durante el proceso de prueba.</p>

                <p>El/los Juego(s) de Boundless incluyen, entre otros, el software de los Juego(s) de Boundless (incluidos, entre otros, el software del juego completo y cualquier contenido, componente, elemento o función involucrado en el mismo),
                    parches, actualizaciones y mejoras de la aplicación, cualquier contenido relacionado con ello, así como documentación, complementos, suplementos y cualquier servicio relacionado con el juego puesto a su disposición por
                    Boundless en virtud de este Acuerdo, y/o cualquier copia de lo anterior. Tenga en cuenta que el software de el/los Juego(s) de Boundless puede contener software o características de Detección de trampas. Por "Detección
                    de trampas" se entiende la función destinada a identificar trampas. Por "trampas" se entienden los programas, métodos, procesos u otros programas con software o hardware de cualquier formato que puedan dar a los usuarios
                    una ventaja competitiva injusta dentro del/los Juego(s) de Boundless. Si no está de acuerdo con la instalación del software de Detección de trampas o con eliminar o deshabilitar sus funciones, el software en sí o hacer
                    una combinación con el/los Juego(s) de Boundless en cualquier momento, todos los permisos que se le otorgan en virtud de este Acuerdo finalizarán automáticamente y dejará de tener acceso a cualquiera de los Servicios de
                    Boundless de inmediato. Tenga en cuenta que el/los Juego(s) de Boundless con el software de Detección de trampas pueden recopilar y enviar detalles sobre su cuenta, jugabilidad y cualquier programa y proceso potencialmente
                    no autorizado y sujeto a nuestra Política de privacidad. En el caso de que se identifiquen "trampas", usted acepta que Boundless puede ejercer parte o la totalidad de sus derechos en virtud del presente Acuerdo. Asimismo,
                    usted confirma que, al instalar, copiar, ejecutar o usar los Juego(s) de Boundless, acepta estar sujeto a este Acuerdo. Al realizar una solicitud para una Cuenta o al registrarla, descargar el software del/los Juego(s)
                    de Boundless, jugar al/los Juego(s) de Boundless (los cuales incluyen, entre otros, actualizaciones, mejoras y parches), navegar por nuestros sitios web, acceder a varios servicios de operación o mantenimiento en línea
                    o a cualquier servicio proporcionado por Boundless, se considera que usted ha leído, entendido y aceptado todos los términos de este Acuerdo. Boundless se reserva el derecho de cambiar, modificar o revisar este Acuerdo
                    en cualquier momento, y usted acepta revisar periódicamente los nuevos términos. Tenga en cuenta que el uso continuado de los Servicios de Boundless significará que usted acepta las obligaciones contempladas en el Acuerdo
                    recientemente actualizado. Si no está de acuerdo con alguno de los términos de este Acuerdo, no utilice ni acceda a los Servicios de Boundless de manera directa ni indirecta de ningún modo.</p>

            </div>

            <ol>
                <div class="parrafo">

                    <li>Cuenta Boundless</li>

                    <p>1) Es posible que se le pida que se registre o que tenga una Cuenta Boundless ("Cuenta") para poder utilizar los servicios de Boundless.</p>
                    <p>Para crear una cuenta, se le pedirá que se registre como usuario y que acepte los Términos de servicio de la Cuenta Boundless. Si no acepta esos términos, no podrá crear una Cuenta.</p>

                    <p>2) Podrá crear una Cuenta solo si es una persona física y un adulto en su país de residencia, y si no es un individuo al que le hayamos prohibido específicamente el uso de los servicios de Boundless.
                    </p>

                    <p>Al registrarse como usuario ("Usuario" o "Usuario registrado") debe seleccionar un nombre de usuario único (también denominado "apodo" en el momento de registro), una contraseña y proporcionar otra información solicitada.
                    </p>

                    <p>Usted acepta que:</p>
                    <div class="sangria">
                        <p>i) Proporcionará información precisa, actualizada y completa sobre usted siempre que se le pida o se le permita en cualquier proceso de registro en el sitio ("Datos personales"); y
                        </p>

                        <p>ii) Mantendrá y actualizará rápidamente sus Datos Personales y mantendrá sus Datos Personales precisos, actualizados y completos. No puede usar un nombre de usuario que ya haya sido asignado a otro usuario. El requisito
                            para usar los Servicios es que no elija un nombre de usuario que sea obsceno u ofensivo. Nos reservaremos el derecho (pero no estamos obligados) a filtrar determinadas palabras y frases que consideramos inaceptables.
                            Además, aunque nuestro método de creación de apodos puede filtrar ciertas palabras y frases inaceptables, difícilmente será un filtro absolutamente completo. Asimismo, nos reservamos el derecho a rescindir su usuario
                            o cuenta, y tenemos el derecho de solicitar que cree un nuevo nombre de usuario aceptable si, según nuestro criterio, consideramos que su nombre de usuario (o su uso) es ofensivo o infringe los términos de usuario
                            de algún modo.</p>
                    </div>
                    <p>3) Usted se compromete a proporcionar información de registro exacta y completa, y no se le sugiere que cree un nombre de cuenta que refleje su nombre real u otros datos personales.</p>

                    <p>4) Usted será responsable de mantener su Cuenta segura y confidencial (incluyendo, entre otros, el nombre de usuario, contraseña u otra información relacionada con la cuenta). Además, reconoce que será responsable de todos
                        y cada uno de los comportamientos realizados e identificados en su Cuenta o a través de ella, lo haya autorizado o no.</p>

                    <p>5) Cada cuenta es única y de gran importancia para cada usuario. No transferirá ni pondrá a disposición de terceros la información de su Cuenta, ni utilizará la(s) Cuenta(s) de otro(s) usuario(s) en ningún momento. Si vende
                        su Cuenta u otra información relacionada, Boundless se reserva el derecho de tomar medidas, que incluyen, entre otras, cancelar su Cuenta de inmediato sin ningún reembolso.</p>

                    <p>6) Podemos rescindir su cuenta o usuario en cualquier momento y por cualquier motivo sin necesidad de ninguna formalidad previa si tenemos motivos para creer que no ha cumplido con alguno de los términos entre Boundless
                        y usted. Además, no se le permitirá volver a presentar una solicitud como usuario si no se lo permitimos expresamente. Si decide rescindir su cuenta de usuario o cuenta, comuníquese con nuestro Servicio técnico y podremos
                        hacerlo en cuanto nos sea posible después de haber recibido su solicitud de rescisión.
                    </p>

                    <p>7) Usted es responsable de mantener la confidencialidad de la información de su Cuenta y, si algún tercero utiliza su Cuenta o accede de alguna otra manera a ella, no podrá reclamar una compensación a Boundless. Podrá notificar
                        a Boundless de inmediato en caso de robo, uso no autorizado o cualquier otra violación de seguridad relacionada con su Cuenta.</p>



                    <li>Reglas de uso</li>


                    <p>1) Reconoce y acepta que su uso de los Servicios de Boundless también se rige por la Política de privacidad, la cual podrá ser modificada por Boundless según su criterio exclusivo. Asimismo, reconoce y acepta que la Política
                        de privacidad está incorporada y es parte de este Acuerdo.</p>

                    <p>2) Al quedar sujeto a todas las leyes aquí aplicables (incluidas las leyes de derechos de autor de los Estados Unidos de América y la ley DMCA), con la condición de que acepte y cumpla en todo momento con este Acuerdo y
                        con cualquier otro acuerdo o política (si corresponde) entre usted y nosotros, Boundless le otorga en el presente contrato el derecho y la licencia personales, limitados, revocables, no exclusivos, intransferibles y
                        no sublicenciables para instalar y usar una copia del software del/los Juego(s) de Boundless únicamente para su propio entretenimiento y fines no comerciales en un dispositivo que usted posea o controle de manera legal.</p>

                    <p>3) Usted reconoce y confirma que no puede, ni directa ni indirectamente, hacer ni intentar realizar ninguna de las siguientes acciones con respecto a ninguno o todos los Servicios de Boundless:
                    </p>
                    <div class="sangria">
                        <p>i) Publicar, subir, transmitir o difundir información que sea obscena, indecente, vulgar, pornográfica, sexual, ofensiva u otros contenidos inaceptables;</p>

                        <p>ii) Difamar, calumniar, ridiculizar, burlarse, amenazar, acosar, intimidar o abusar de cualquier persona por motivo de odio, raza o etnia de una manera ofensiva o inaceptable para una determinada parte del público;
                        </p>

                        <p>iii) Infringir los derechos contractuales, los derechos personales y de propiedad, los derechos de propiedad intelectual y otros derechos e intereses (incluidos los derechos de privacidad, publicidad o secreto comercial)
                            de Boundless u otros terceros;</p>

                        <p>iv) Desarrollar, usar o distribuir cualquier software, código informático, plug-in, programas o aplicaciones que puedan causar una ventaja competitiva injusta;</p>

                        <p>v) Explotar, distribuir o informar públicamente a terceros de cualquier error o falla del juego, independientemente de si con ello se busca conseguir una ventaja o no;</p>

                        <p>vi) Vender, arrendar, alquilar, licenciar, sublicenciar o usar la totalidad o parte de los Servicios de Boundless y sus contenidos, información y elementos relacionados para propósitos comerciales;
                        </p>

                        <p>vii) Copiar, reproducir, adaptar, alterar, descompilar, desensamblar o crear otros archivos basados en cualquiera de los Servicios de Boundless;</p>

                        <p>viii) Usar métodos ilegales o inapropiados que puedan interrumpir las operaciones o explotar cualquiera de los Servicios de Boundless sin autorización, incluyendo, entre otros, la extracción de código fuente, piratería,
                            craqueo, distribución de software falsificado, quejas sobre información falsa, subida o transmisión de archivos (o intentar hacerlo) que contengan virus, troyanos, gusanos, bombas de tiempo, archivos corruptos u
                            otros programas no autorizados;</p>

                        <p>ix) Usar, exportar, reexportar o actuar u omitir un comportamiento que suponga una violación de las leyes vigentes o regulaciones locales; y/o</p>

                        <p>x) Permitir o ayudar a terceros a realizar cualquiera de las anteriores acciones. Además, usted acepta que respetará las costumbres o prácticas locales y que el uso que haga de los Servicios de Boundless será acorde
                            con las leyes o regulaciones locales aplicables. </p>
                    </div>
                    <p>Por otro lado, deberá dejar de usar o de acceder inmediatamente a los Servicios de Boundless cuando las leyes o las regulaciones locales así lo requieran. Excepto si se encuentra expresamente autorizado en este Acuerdo,
                        no puede realizar ningún tipo de copia de los Servicios de Boundless parcialmente o en su totalidad, ni tampoco de ningún material que los acompañe. Los Servicios de Boundless contienen nuestra información patentada,
                        por lo que usted acepta: (a) mantener todo el código y cualquier elemento técnico de los Servicios de Boundless con la más estricta confidencialidad, (b) no copiar, reproducir, distribuir, crear, revelar, informar,
                        publicar, divulgar o transferir de cualquier forma información no pública sobre Boundless, y/o (c) no hacer uso de los Servicios de Boundless, excepto para su disfrute individual y sin propósitos comerciales, al quedar
                        sujeto a todas las leyes vigentes (incluidas la ley de derechos de autor de los Estados Unidos de América y la DMCA). A menos que esté autorizado expresamente en este documento, cualquier uso total o parcial de los
                        Servicios de Boundless sin nuestro consentimiento previo por escrito está estrictamente prohibido, en cuyo caso toda licencia otorgada en este documento será rescindida. </p>
                    <p>
                        se reserva expresamente el derecho a denegar a cualquier persona el acceso a los Servicios de Boundless en cualquier momento y por cualquier motivo sin previo aviso. Además, usted acepta que Boundless tendrá derecho a suspender o finalizar la prestación
                        de cualquiera de los Servicios de Boundless o cambiar el contenido proporcionado en cualquier momento y por cualquier motivo sin previo aviso, lo cual no tendrá ninguna consecuencia legal para Boundless. Nos reservamos
                        el derecho, pero no estamos obligados, a prestar atención o participar en disputas entre usuarios. Si bien tenemos la opción de llamar la atención y tomar medidas en caso de juego, chat o enlaces inapropiados en los
                        Servicios de Boundless, usted es el único responsable de cualquier interacción con otros usuarios. Al usar los Servicios de Boundless, usted reconoce y acepta que en cualquier momento puede haber lenguaje o material,
                        accesible a través de los Servicios de Boundless, que puede ser inapropiado, en particular para menores, u ofensivo para algunos usuarios de cualquier edad, raza, religión y género. Asimismo, usted acepta que Boundless
                        no será responsable del comportamiento o lenguaje inapropiados de dicho usuario bajo ninguna circunstancia. Boundless se reserva el derecho a suspender o cancelar su acceso a los Servicios de Boundless y/o tomar otras
                        medidas. Además, usted acepta que Boundless puede no ser responsable del comportamiento de otros usuarios o terceros, incluidos, entre otros, los sitios web o servicios de terceros vinculados a los Servicios de Boundless
                        o a los que se acceda través de los mismos.</p>

                    <li>Contribuciones del usuario</li>
                    <p>1) Los Servicios de Boundless pueden contener varios sitios web, foros, comunidades, redes u otras características interactivas que le permiten a usted publicar, enviar, publicar, mostrar o transmitir cualquier contenido
                        o material en o a través de los Servicios de Boundless (de aquí en adelante "Contribuciones del usuario"), incluidos, entre otros, cualquier texto, publicación en el foro, publicación en el chat, perfil, widget, mensaje,
                        enlace, comentario, correo electrónico, música, sonido, gráfico, imagen, video, código, material audiovisual u otros materiales que aparezcan o provengan de los Servicios de Boundless. Boundless no tiene la obligación
                        de monitorear las Contribuciones del usuario, pero podemos hacerlo y nos reservarnos el derecho, según nuestro propio criterio, de monitorear, filtrar, moderar, editar y/o eliminar cualquiera o todas las Contribuciones
                        del usuario que sean inaceptables o inapropiadas en cualquier momento y sin previo aviso. Boundless también puede rescindir o suspender en cualquier momento su acceso a cualquiera de las Contribuciones del usuario por
                        cualquier motivo y sin previo aviso.</p>

                    <p>2) Ninguna de las Contribuciones del usuario debe ser ilegal, fraudulenta, engañosa, obscena, amenazante, difamatoria, no debe suponer una invasión de la privacidad, infringir los derechos de propiedad intelectual, perjudicar
                        a terceros, o ser inapropiada o inaceptable, y no deberá contener virus u otro tipo de código de script, plug-in, programas o software destructivos. Usted reconoce que será el único y total responsable de su propio
                        comportamiento cuando utilice los Servicios de Boundless, incluidas, entre otras, las Contribuciones de los usuarios que publique. También reconoce y acepta que Boundless no será responsable de las Contribuciones de
                        usuario publicadas por usted bajo ninguna circunstancia. Además, acepta que ninguna de las Contribuciones del usuario está respaldada ni controlada por Boundless.
                        <p></p>

                        <p>3) Usted reconoce y acepta que, cuando utiliza los Servicios de Boundless, no espera que sus Contribuciones de usuario sean privadas y que Boundless puede divulgar sus Contribuciones de usuario por cualquier motivo
                            sin previo aviso.
                        </p>

                        <p>4) Cualquier Contribución del usuario que publique se considerará no confidencial, no será propiedad suya y, mediante ella, acepta que le otorga irrevocable e incondicionalmente a Boundless un derecho global, totalmente
                            pagado, sin regalías, perpetuo, transferible, sublicenciable e ilimitado, así como el permiso para usar, copiar, reproducir, modificar, adaptar, publicar, traducir, crear trabajos derivados, reformatear, distribuir,
                            fabricar, vender, licenciar, sublicenciar, transferir, alquilar, arrendar, transmitir, comunicar, exhibir públicamente, realizar públicamente, proporcionar acceso o poner en práctica tales Contribuciones del usuario
                            o cualquier parte de las mismas a través de todos y cada uno de los canales, formatos y formas actuales o futuros. Usted comprende que no tendrá derecho a reclamar ninguna compensación, cargos, tarifas, contraprestación
                            u otra remuneración en relación con sus Contribuciones de usuario por ningún motivo, incluido el ejercicio de los derechos que nos otorga en esta sección, y que no estamos obligados a otorgarle tales derechos. Además,
                            acepta que, al acatar esto último, no creará ninguna relación contractual entre usted y Boundless. También acepta otorgar a todos los demás usuarios, los cuales pueden acceder a sus Contribuciones de usuario, el
                            derecho a usar, copiar, modificar, mostrar, realizar, crear trabajos derivados, comunicar o distribuir sus Contribuciones de usuario en el Servicio de Boundless sin previo aviso, atribución o compensación para usted.
                            Excepto en la medida en que dicha exención esté prohibida por la ley, usted renuncia a los beneficios de cualquier disposición de la ley conocida como "derechos morales" o cualquier ley similar en cualquier país/región
                            del mundo.</p>

                        <p>5) Usted declara y garantiza que las Contribuciones del usuario: (i) son precisas y no fraudulentas o engañosas; (ii) no violan ningún derecho o interés (incluidos, entre otros, los derechos de propiedad intelectual)
                            de Boundless y/o de otros terceros. Asimismo, comprende que las Contribuciones del usuario pueden ser copiadas por otros usuarios y se podrá discutir acerca de ellas dentro o fuera de los Servicios de Boundless,
                            y, si no tiene derecho a realizar Contribuciones del usuario para dicho uso, podrá ser sujeto a responsabilidades. Tenga en cuenta que Boundless no se hace responsable ni asume ninguna responsabilidad por el contenido
                            publicado por usted o por terceros.
                        </p>

                        <p>NO PODEMOS GARANTIZAR QUE NO ENCONTRARÁ CONTENIDO QUE CONSIDERE OFENSIVO O INAPROPIADO, Y NO SEREMOS RESPONSABLES POR NO ELIMINAR (O RETRASAR LA ELIMINACIÓN) DE DICHO CONTENIDO. Sin embargo, puede presentar una queja
                            relacionada con contenido inapropiado a través de nuestro Servicio técnico.</p>




                        <li>Menores</li>


                        <p>1) Usted acepta que la SIGUIENTE DECLARACIÓN podría cambiar en cualquier momento si cualquier política de protección de menores sufriera algún cambio en su región/país.</p>

                        <p>2) Al utilizar los Servicios de Boundless, usted declara que es un adulto en su país/región de residencia (o que tiene la edad con la que se le considera mayor de edad en su jurisdicción). SI SE ENCUENTRA POR DEBAJO
                            DE LA MAYORÍA DE EDAD LEGAL (de aquí en adelante, "Menor"), SU PADRE, MADRE O TUTOR LEGAL DEBERÁ SER QUIEN ACEPTE ESTE ACUERDO.</p>

                        <p>3) Al estar sujeto a las leyes, regulaciones o exigencias del sistema de calificación de su país/región de residencia, el menor puede utilizar una Cuenta creada por su padre, madre o tutor legal. En el caso de que permita
                            que un menor use una Cuenta, usted acepta este Acuerdo en nombre de dicho de menor y de usted mismo, y acepta que será responsable de cualquier uso de los Servicios de Boundless por parte del menor, haya sido autorizado
                            por usted o no.</p>



                        <li>Derechos de propiedad / Propiedad intelectual</li>


                        <p>1) Boundless será propietario de todos los derechos, títulos e intereses (incluidos, entre otros, la propiedad, los derechos de propiedad intelectual, los derechos conexos y otros derechos e intereses) de los Servicios
                            de Boundless en virtud de este Acuerdo. Usted reconoce que su uso de los Servicios de Boundless no le confiere ningún derecho, interés o recompensas, logros, personajes, moneda virtual del juego (si corresponde),
                            niveles y otro contenido en ningún aspecto o característica del mismo. Además, reconoce que los datos de los personajes, el progreso del juego, la personalización del juego y/u otros datos relacionados con su uso
                            de los Servicios de Boundless pueden dejar de estar disponibles para usted en cualquier momento sin previo aviso bajo el propio criterio de Boundless.</p>

                        <p>2) Cualquiera o todos los Servicios de Boundless (incluidos los secretos comerciales, los derechos de bases de datos, los derechos de autor, las patentes, las marcas comerciales y otros derechos de propiedad intelectual
                            e intereses de los mismos) están protegidos por derechos de autor y por todas las leyes vigentes (incluidas, entre otras, las leyes de derechos de autor y los Tratados Internacionales). Específicamente, cualquier
                            material que sea parte de los Servicios de Boundless (incluidos, entre otros, cualquier contenido, sitios web, juegos, programas, herramientas, códigos fuente, códigos de objeto, HTML, contenido, archivos, parches,
                            actualizaciones, modificaciones, trabajos derivados , documentación impresa o electrónica, instrucciones, diseño, Cuentas, contraseñas, temas, conceptos, historias, argumentos, tecnología, arquitectura, lógica,
                            estructura, secuencia, organización, temas, símbolos, instrucciones, diseño, texto, datos, sonidos, fotografías, clips de audio, clips audiovisuales, vídeo, ilustraciones, gráficos, logotipos, nombres, íconos de
                            botones, imágenes de vehículos, accesorios, componentes virtuales, equipos, materiales, selección y disposición, títulos, métodos de operación, software, documentación relacionada y todas las demás funciones contenidos
                            en los Servicios de Boundless) están protegidos contra el uso no autorizado por todas las leyes vigentes.
                        </p>

                        <p>3) Usted acepta que ninguno de los Servicios de Boundless puede ser modificado, copiado, distribuido, enmarcado, reproducido, republicado, descargado, extraído, mostrado, publicado, transmitido o vendido de ninguna
                            forma ni por ningún medio, en su totalidad o parcialmente, o explotado de otra forma sin la autorización expresa, previa y por escrito de Boundless. Cualquier uso de nuestros materiales con derechos de autor, incluidos,
                            entre otros, trabajos derivados, requiere el consentimiento previo por escrito de Boundless. Tenga en cuenta que cualquier reproducción o redistribución no autorizada de los Servicios de Boundless estará prohibida
                            y podrá conllevar sanciones legales severas.
                        </p>

                        <p>4) Boundless sigue siendo el único propietario de los derechos, títulos e intereses (incluidos los derechos de propiedad intelectual, derechos conexos y otros derechos e intereses) de los Servicios de Boundless. Usted
                            reconoce y acepta que es posible que no tenga ningún derecho o interés como resultado del uso de los Servicios de Boundless, excepto que se le otorguen explícitamente en virtud de este Acuerdo.
                        </p>



                        <li>Contenido del usuario</li>


                        <p>1) El "Contenido del usuario" hace referencia a la retroalimentación, las sugerencias, los comentarios, las ideas y/o cualquier otra información, que incluye, entre otros, software y código, proporcionada, publicada
                            o comunicada por usted de manera directa o indirecta a Boundless o a otros agentes relacionados con los Servicios de Boundless. Usted acepta que otorga irrevocablemente a Boundless una licencia global, irrevocable,
                            totalmente pagada, sin regalías, perpetua, sublicenciable, transferible, asignable e ilimitada, que permite a Boundless usar, difundir, copiar, modificar, sublicenciar, traducir, publicar, distribuir, transmitir
                            en la red, publicitar, promocionar, realizar, mostrar, crear trabajos derivados, vender, ofrecer vender y/o utilizar el Contenido del usuario para cualquier fin. Además, acepta que cualquier Contenido del usuario
                            proporcionado por usted en virtud del presente contrato no infringirá los derechos de propiedad intelectual, derechos relacionados y/u otros derechos de propiedad o personales. Además, su participación en un "periodo
                            de prueba", una "versión beta" o modos de juego similares se acordará con usted por separado, y su acceso a nuestro juego podrá estar sujeto a reglas específicas, como un periodo de tiempo limitado, un número de
                            usuarios limitado para acceder al juego o nuestro derecho a modificar o eliminar los datos del juego de los usuarios. Lea atentamente dichas reglas específicas. Agradecemos su participación en las versiones beta,
                            su cooperación y Contenido de usuario son altamente apreciados.</p>

                        <p>2) Si no es posible autorizar o transferir cualquier derecho o interés del Contenido del usuario debido a cualquier legislación vigente (como derechos morales u otros derechos personales), usted renunciará a ellos expresamente
                            y aceptará no hacer uso de dichos derechos y crédito y/o reclamar cualquier compensación a Boundless.
                        </p>




                        <li>Moneda y bienes del juego</li>


                        <p>1) Dentro de los Servicios de Boundless, se incluye la posibilidad de comprar moneda virtual del juego (de aquí en adelante, "Moneda virtual") con dinero real. Los Servicios de Boundless también pueden incluir la compra
                            de artículos digitales y virtuales del juego (de aquí en adelante, "Bienes virtuales") con dinero real o Moneda virtual. Usted acepta que la Moneda virtual y los Bienes virtuales nunca se canjearán por dinero real
                            o cualquier artículo con valor monetario. Asimismo, comprende que, en virtud de este Acuerdo, tanto la Moneda virtual como los Bienes virtuales se le otorgan cedidos, no vendidos, y que Boundless se reserva y retiene
                            todos los derechos, títulos, intereses u otros de los Bienes virtuales y la Moneda virtual.
                        </p>

                        <p>2) Su compra de Moneda virtual y/o Bienes virtuales no es intercambiable ni transferible, salvo que las leyes de su país lo permitan. Excepto dentro del/los Juego(s) de Boundless, usted no podrá transferir, vender,
                            regalar, intercambiar, comerciar, arrendar, sublicenciar, alquilar o usar Moneda virtual o Bienes virtuales. De lo contrario, dicha práctica constituirá una violación de este Acuerdo y resultará en la eliminación
                            de su cuenta. Boundless se reserva el derecho a reclamar una indemnización si así lo considerase pertinente.
                        </p>

                        <p>3) Boundless se reserva el derecho a modificar, administrar, controlar o eliminar la Moneda virtual y/o los Bienes virtuales según su propio criterio. Usted reconoce y acepta que Boundless pueda emprender acciones que
                            afecten al valor percibido o al precio de compra, si corresponde, de la Moneda virtual o los Bienes virtuales en cualquier momento, salvo en caso de que la legislación vigente exija lo contrario.
                        </p>

                        <p>4) Al proporcionar información de pago a Boundless o a su procesador autorizado, declara que es un usuario autorizado para cualquier método de pago especificado por usted y autoriza a Boundless a cobrar dicho método
                            de pago por el valor total de la transacción de compra.</p>

                        <p>5) Usted acepta y consiente que, debido a la naturaleza especial de los servicios de juegos en línea, no hay transacción de bienes físicos, y su experiencia de compra proviene de los servicios de juegos en línea proporcionados
                            por el fabricante del juego. Por lo tanto, el reembolso no es aplicable a menos que la operación del Juego sea terminada.</p>




                        <li>Protección de la información personal</li>


                        <p>Toda la información recopilada sobre usted está sujeta a las leyes locales, y Boundless hará todo lo posible para proteger la información provista. Tenga en cuenta que este Acuerdo puede ser actualizado por nosotros
                            con cierta frecuencia, y su uso continuo de los Servicios de Boundless constituirá su aceptación del Acuerdo más recientemente actualizado. Según las leyes y la legislación vigentes, el usuario tiene derecho a solicitar
                            la modificación o eliminación de su información personal después de pasar por nuestro propio proceso de revisión de la manera apropiada que se requiera. Consulte la Política de privacidad de Boundless para obtener
                            más información sobre la recopilación y el uso de su información.
                        </p>




                        <li>Comportamiento inapropiado del usuario</li>


                        <p>1) Boundless lo responsabiliza a usted por su propio comportamiento y uso del lenguaje, lo alienta a jugar al/los Juego(s) de Boundless de una manera sana y civilizada, y prohíbe estrictamente cualquier comportamiento
                            inapropiado o inaceptable. Se le prohíbe, en cualquiera de sus formas, actuar en nombre de nuestros empleados o difundir información falsa a Boundless o a terceros, difundir información vulgar, publicar sitios web
                            ilegales, anuncios de spam o cualquier información o material relcionado con las drogas, así como atacar, amenazar o insultar a todos o una parte de los usuarios. También está estrictamente prohibida la difusión
                            de plug-ins, programas de troyanos o cualquier otro tipo de virus.</p>

                        <p>2) Se le prohíbe, directa o indirectamente, cualquiera de las siguientes acciones:</p>
                        <div class="sangria">
                            <p>i) Usar expresiones vulgares, lenguaje grosero, comportamiento abusivo y acoso verbal, ya sea hacia Boundless o hacia otros usuarios;</p>

                            <p>ii) Usar cualquier método de pago no aprobado;</p>

                            <p>iii) Usar programas para hacer trampa u otros programas de juego maliciosos;</p>

                            <p>iv) Difundir información o materiales que violen las costumbres populares, creencias religiosas, hábitos o moral social de una parte o grupo del público;</p>

                            <p>v) Divulgar, proporcionar, difundir o poner a disposición de terceros información no pública de nuestros usuarios u otros usuarios; y/o</p>

                            <p>vi) Tener cualquier otro comportamiento o hacer uso de un lenguaje inapropiado que pueda dañar la reputación de Boundless.</p>
                        </div>
                        <p>3) Nos reservamos el derecho, pero no estamos obligados, a prestar atención o participar en disputas entre usuarios. Dependiendo de la situación, Boundless puede tomar medidas, que incluyen, entre otras, enviar una
                            advertencia, bloquear comunicaciones, suspender, excluir, prohibir o cancelar su cuenta de forma temporal o permanente, bloquear el inicio de sesión, eliminar archivos del juego o tomar medidas de otra índole según
                            nuestro propio criterio. Nos reservamos y tenemos los derechos de interpretación final y de tomar medidas de acuerdo con las circunstancias de su comportamiento inapropiado. Si otros usuarios violan sus derechos,
                            le ayudaremos con los recursos necesarios para defender dichos derechos.
                        </p>

                        <p>Si incumple este Acuerdo o, como usuario, tiene cualquier comportamiento que sea, a nuestro criterio, un abuso y/o una violación del espíritu del/los Juego(s) de Boundless, inapropiado o inaceptable para una parte o
                            grupo del público, tendremos derecho a suspender su acceso a los Servicios de Boundless sin previo aviso por un periodo de tiempo indefinido, bloquear su Cuenta, rescindir su acceso a nuestros servicios y/o rescindir
                            este Acuerdo inmediatamente sin previo aviso.
                        </p>




                        <li>Compensaciones
                        </li>

                        <p>Usted acepta defender, indemnizar y retener a Boundless y/o sus afiliados, empleados, funcionarios, gerentes, directores, agentes, indemnes de y contra cualquier reclamo, responsabilidad, pérdida, lesiones, daños, costos
                            o gastos (incluidos, entre otros, honorarios de abogados y otros gastos) que surjan de o en relación con:
                        </p>
                        <div class="sangria">
                            <p>1) Su acceso o uso de los Servicios de Boundless;</p>

                            <p>2) Su incumplimiento o presunto incumplimiento de los términos, condiciones, obligaciones, representaciones o garantías contenidas en este Acuerdo;</p>

                            <p>3) Cualquier material, Contribuciones del usuario, Contenido del usuario u otra información proporcionada por usted o en su nombre;</p>

                            <p>4) Su violación de las leyes vigentes o los derechos e intereses de terceros; y/o</p>

                            <p>5) Otros comportamientos ilegales o inapropiados que tenga usted.</p>

                        </div>


                        <li>Medidas cautelares
                        </li>

                        <p>Sin perjuicio de cualquier otro derecho o recurso que pueda tener Boundless, usted reconoce y acepta que, en caso de incumplimiento real o amenazante de este Acuerdo, Boundless tendrá derecho, sin prueba de daños especiales,
                            a una orden judicial u otro recurso equitativo, además de los daños o recursos a los que Boundless tenga derecho. Usted renuncia irrevocablemente a todos los derechos a medidas cautelares u otras medidas equitativas
                            y, además, acepta reclamar solo daños monetarios de Boundless.</p>




                        <li>Limitación de responsabilidad
                        </li>

                        <p>1) Usted acepta que su uso de los Servicios de Boundless será bajo su propio riesgo. Boundless proporciona el/los Juego(s) de Boundless y/o los Servicios de Boundless "COMO SON" y "COMO DISPONIBLES". En la medida permitida
                            por las leyes vigentes, Boundless y/o sus afiliados, empleados, funcionarios, gerentes, directores y agentes renuncian a todas las garantías de cualquier tipo, incluidas, entre otras, las garantías de comerciabilidad,
                            sin errores, sin infracción, o para un propósito particular, independientemente de lo expreso o implícito, independientemente del aspecto de agravio, contrato o de otro tipo, y sin importar si Boundless ha sido
                            informado de la posibilidad de tales responsabilidades.
                        </p>

                        <p>2) Boundless RECHAZA TODAS LAS GARANTÍAS, CONDICIONES, DERECHOS Y REPRESENTACIONES DE LA LEY COMÚN, EXPRESAS, IMPLÍCITAS, ORALES O ESCRITAS. Boundless no ofrece garantías sobre la precisión o integridad de los Servicios
                            de Boundless. Además, Boundless no asume ninguna responsabilidad por:</p>
                        <div class="sangria">
                            <p>i) Cualquier error o inexactitud de los Servicios de Boundless;</p>

                            <p>ii) Lesiones personales, daños a la propiedad, pérdida de ganancias, pérdida de datos o cualquier daño indirecto, especial, incidental, ejemplar, consecuente o punitivo que surja de su uso de los Servicios de Boundless;</p>

                            <p>iii) Cualquier interrupción, suspensión o terminación de los Servicios de Boundless;</p>

                            <p>iv) Cualquier error, virus o enlaces similares transmitidos por terceros en o a través de los Servicios de Boundless;</p>

                            <p>v) Cualquier programa destinado a dañar, interferir perjudicialmente, interceptar subrepticiamente o expropiar su información personal; y/o</p>

                            <p>vi) Cualquier daño que surja de o en conexión con circunstancias inesperadas o que de otra manera estén fuera de nuestro control.</p>
                        </div>
                        <p>3) Boundless no será en ningún caso responsable ante usted o terceros por daños indirectos, incidentales, punitivos, especiales, ejemplares o consecuentes (incluidos, entre otros, pérdida de negocios, ingresos, ganancias,
                            uso, datos u otras ventajas) independientemente de cómo surjan, ya sea por incumplimiento de contrato o por agravio, incluso si Boundless ha sido informado de la probabilidad de que ocurran tales daños.
                        </p>

                        <p>4) Boundless no tiene control sobre los sitios de terceros a los que puede tener acceso, incluidos los sitios que están vinculados a nuestros sitios web. Por lo tanto, Boundless no es responsable del contenido o la
                            función de ningún otro sitio web, y se exime de cualquier responsabilidad por cualquier aspecto de dichos sitios web de terceros a través de su acceso directo o a través de nuestros sitios web o la funcionalidad
                            del software. Los términos de servicio aplicables y las políticas de privacidad de esos sitios web de terceros regirán su uso en dichos sitios web.</p>

                        <p>5) LA RESPONSABILIDAD MÁXIMA AGREGADA Y ACUMULATIVA DE Boundless Y NUESTROS MIEMBROS, OFICIALES, EMPLEADOS, DIRECTORES, CONSULTORES Y AFILIADOS NO EXCEDERÁN SUS DAÑOS DIRECTOS, SI EXISTEN, HASTA EL TOTAL DEL VALOR PAGADO
                            POR USTED DURANTE LOS TRES (3) MESES PREVIOS A UNA RECLAMACIÓN HECHA CONTRA Boundless. Estas limitaciones y exclusiones con respecto a daños se aplican incluso si algún remedio proporcionado por nosotros no proporciona
                            una compensación adecuada.
                        </p>




                        <li>Limitación de reclamos
                        </li>

                        <p>En la máxima medida permitida por las leyes vigentes, cualquier reclamo que surja de o en relación con este Acuerdo y/o los Servicios de Boundless debe comenzar dentro de un año después de que usted se entere o dentro
                            de un año después de que se presente el reclamo o la causa de acción (la que se haya realizado más pronto). Si no se presenta dentro de ese plazo, el reclamo queda permanentemente excluido.
                        </p>




                        <li>Modificaciones
                        </li>

                        <p>Boundless se reserva el derecho de enmendar, modificar o revisar este Acuerdo en cualquier momento y de cualquier manera sin previo aviso y usted acepta verificar periódicamente la nueva información y los términos que
                            rigen el uso de los Servicios de Boundless y acepta estar sujeto a todas las enmiendas, modificaciones y revisiones. Su acceso continuo a los Servicios de Boundless constituirá su aceptación del Acuerdo más recientemente
                            actualizado y de cualquier acuerdo o política que este contenga. Si en algún momento no está de acuerdo con alguna parte de la versión actual de los acuerdos o políticas relacionadas con su uso de los Servicios
                            de Boundless, su licencia bajo este Acuerdo terminará de inmediato y deberá dejar de acceder de inmediato a los Servicios de Boundless.</p>




                        <li>Sin renuncia
                        </li>

                        <p>Ninguna falla o demora por parte de Boundless en el ejercicio de cualquier derecho, poder o privilegio en virtud del presente contrato deberá operar como una renuncia al mismo, ni cualquier ejercicio único o parcial
                            de dicho derecho, poder o privilegio impedirá cualquier otro ejercicio posterior o el ejercicio de cualquier otro derecho, poder o privilegio.</p>




                        <li>Notificaciones
                        </li>

                        <p>En la medida en que lo permitan las leyes vigentes, Boundless puede enviar notificaciones (incluidos, entre otros, diversas reglas, comunicados, avisos u otra información relacionada con el uso de los Servicios de Boundless)
                            a los usuarios a través de uno o más de los canales listados a continuación, incluyendo, entre otros, avisos o anuncios dentro de los Juego(s) de Boundless, anuncios de página en los sitios web de Boundless, juegos,
                            canales oficiales, consejos sobre sitios web, mensajes de teléfono móvil, correo electrónico u otra información de contacto que proporcionó a Boundless.</p>

                        <p>Una vez que Boundless envíe cualquier aviso de la manera mencionada anteriormente, se considerará que usted lo ha recibido y tendrá un efecto vinculante. Si no está de acuerdo, informe a Boundless por escrito en los
                            15 días posteriores a la recepción de dicha notificación. De lo contrario, se considerará que ha aceptado y está de acuerdo con dicho aviso.</p>




                        <li>Rescisión
                        </li>

                        <p>Sin limitar ningún otro derecho de Boundless, este Acuerdo finalizará automáticamente sin previo aviso si usted no cumple con algún término o condición del mismo o de cualquiera de los acuerdos o políticas aquí mencionados.
                            También puede rescindir este Acuerdo eliminando los Juego(s) de Boundless de todos los dispositivos en los que haya instalado e inmediatamente deje de usar los Servicios de Boundless. En caso de rescisión, ya no
                            ejercerá ninguno de los derechos que se le otorgan y deberá destruir todas las copias de los Juego(s) de Boundless que tenga en su poder.</p>

                        <p>A pesar de la rescisión/vencimiento de este Acuerdo, sus obligaciones acumuladas antes de la rescisión/vencimiento aún deberán ser cumplidas por usted. Además, todos los derechos e intereses de Boundless y la autorización
                            (si la hubiera) otorgada a Boundless seguirán vigentes y sobrevivirán a la terminación de este Acuerdo.
                        </p>




                        <li>Divisibilidad
                        </li>

                        <p>Si alguna disposición de este Acuerdo se considera nula o declarada ilegal, inválida o inaplicable por cualquier motivo, dicha disposición será divisible y eliminada de este Acuerdo, y el resto del mismo no se verá
                            afectado y permanecerá en vigencia. A pesar de lo anterior, si la exención de acción de clase se considera inválida, inaplicable o ilegal, usted acepta que puede no ser divisible. En otras palabras, el arbitraje
                            no se llevará a cabo en ninguna circunstancia en una clase sin el consentimiento previo por escrito de Boundless.</p>




                        <li>Leyes vigentes
                        </li>

                        <p>1) Este Acuerdo se regirá e interpretará de conformidad con las leyes de Hong Kong, excluyendo sus principios de conflicto de leyes. No se aplicará el Convenio sobre los Contratos de Compraventa Internacional de Mercaderías.
                            Usted acepta y reconoce que cualquier reclamo o acción legal entre usted y Boundless se remitirá al Centro de Arbitraje de Hong Kong de la Comisión Económica y Comercial Internacional de China ("CIETAC") para un
                            arbitraje que se llevará a cabo de acuerdo con las reglas de arbitraje de dicha comisión. El laudo arbitral es definitivo y vinculante para ambas partes. Si los términos de arbitraje anteriores no son aplicables
                            en ninguna disputa, ambas partes acuerdan que dicha disputa se llevará a un tribunal en Shanghai, China. Por la presente, acepta y renuncia a todas las defensas por falta de jurisdicción personal y/o conveniencia
                            del foro con respecto al lugar y la jurisdicción, ya sea por arbitraje o juicio judicial.
                        </p>

                        <p>2) SUJETO A LAS LEYES Y REGLAMENTOS APLICABLES, AMBAS PARTES ESTÁN DE ACUERDO EN QUE CUALQUIER PROCEDIMIENTO DE RESOLUCIÓN DE CONTROVERSIAS, YA SEA EN ARBITRAJE O TRIBUNAL, SERÁ REALIZADO SOLO EN UNA BASE INDIVIDUAL
                            Y NO EN UNA ACCIÓN DE CLASE O REPRESENTANTE.</p>




                        <li>Sin asignación
                        </li>

                        <p>No puede asignar, transferir, cobrar o subcontratar todos o cualquiera de sus derechos u obligaciones en virtud de este Acuerdo, ya sea por ley o de otro modo, sin el consentimiento previo por escrito de Boundless.
                            De lo contrario, Boundless puede, a su exclusivo criterio, finalizar la prestación de cualquier servicio sin previo aviso. Si las restricciones de transferencia no son aplicables según la ley de su país o residencia,
                            entonces este Acuerdo será vinculante para usted y cualquiera de sus destinatarios. A pesar de lo anterior, Boundless tendrá derecho a asignar, transferir, cobrar o subcontratar en cualquier momento todos o cualquiera
                            de sus derechos u obligaciones en virtud de este Acuerdo.</p>




                        <li>Generalidades
                        </li>

                        <p>1) Este Acuerdo contiene el contrato completo de las partes con respecto al tema de este Acuerdo y reemplaza cualquier acuerdo previo escrito u oral (si lo hay) entre usted y Boundless.</p>

                        <p>2) Las referencias a "incluir", "incluye" e "incluyendo/incluido" se interpretarán de manera que signifiquen incluir sin limitación, incluye sin limitación e incluyendo/incluido sin limitación, respectivamente.
                        </p>

                        <p>3) El término "afiliado" en este Acuerdo significará una entidad que controla directa o indirectamente, o está controlada por o esta bajo control común con Boundless, Inc.</p>

                        <p>4) Boundless puede traducir este Acuerdo a otros idiomas. Si hay alguna diferencia entre la versión en inglés y las versiones en otros idiomas, prevalecerá la versión en inglés, sujeta a las leyes y regulaciones aplicables.
                        </p>

                        <p>5) Además de cualquier otra limitación que pueda establecerse en este documento, Boundless puede no ser responsable de ningún retraso o incumplimiento debido a causas fuera del control razonable de Boundless, como actos
                            de autoridades gubernamentales, actos de fuerza mayor u otros eventos fuera del control de Boundless.
                        </p>

                        <p>6) Usted acepta que Boundless se reserva expresamente el derecho, en cualquier momento y por cualquier motivo, sin previo aviso y sin ningún tipo de compensación, de suspender o denegar a cualquier persona que use o
                            acceda a los Juego(s) de Boundless y/o los Servicios de Boundless; dejar de prestar servicios; y/o para modificar cualquier parte de los Servicios de Boundless.</p>

                        <p>7) Usted declara que está entrando en este Acuerdo de manera completamente voluntaria y no espera otra compensación que la que se otorga expresamente en este Acuerdo.</p>

                        <p>En caso de cualquier inconsistencia entre este Acuerdo y las leyes locales de su país o residencia, las leyes locales prevalecerán.</p>



                        <li>Contacto
                        </li>

                        <p>Si tiene alguna pregunta sobre este Acuerdo o si tiene alguna solicitud para resolver problemas que surjan de o en relación con este Acuerdo, comuníquese con nosotros en primera instancia. Envíe una carta dirigida a
                            Boundless, Inc. con su dirección de contacto: Calle Maestro Don Marciano, 1, 33011 Oviedo, Asturias, España. A la atención de: Customer Service (Departamento de Servicio de Atención al Cliente); o envíenos un correo
                            electrónico a contact@boundless.com.
                        </p>
                </div>
            </ol>

            <h3>Boundless, Inc.</h3>
            <h4>Fecha efectiva: 12 de junio de 2020</h4>

        </div>
        <!--Imagen de adorno-->
        <img src="../imagenes/GuirnaldaEstrellas_Gris.png " style="width: 100%; height: auto;">
    </div>
</body>

<!--Pie de página-->
<footer>
    <div class="pie " ALIGN=center>
        <ul>
            <li><a href="vistaProximamente.jsp ">Soporte técnico</a></li>
            <li><a href="vistaToS.jsp " style="color: #e2587b;">Términos del Servicio</a></li>
            <li><a href="vistaPrivacidad.jsp ">Política de Privacidad</a></li>
            <li><a href="vistaContacto.jsp">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </DIV>
</footer>

</html>