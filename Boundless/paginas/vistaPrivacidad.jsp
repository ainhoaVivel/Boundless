<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="autor" content="Ainhoa Vivel Couso">
    <meta name="descripcion" content="Contiene la política de privacidad e información sobre el uso de los datos
de los usuarios por parte de Boundless">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Política de privacidad</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="/Boundless/estilo.css">
    <link rel="icon" type="image/x-icon" href="/Boundless/imagenes/favicon.ico">
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
        <!--Política de privacidad-->
        <div class="texto">
            <h3>Política de privacidad</h3>

            <p style="font-weight: 600;">Fecha efectiva: 12 de junio de 2020</p>

            <div class="parrafo">
                <p>Boundless, Inc. (en adelante, "Boundless", "nosotros", "nuestro") reconoce y valora enormemente la privacidad de las personas (en adelante, "usted" o "usuario") que visitan nuestros sitios web, utilizan o acceden a nuestros
                    juegos, ya sea aquellos que juegan en dispositivos móviles, PC, nuestros sitios web u otras plataformas aprobadas (en adelante, "juego(s) de Boundless"), y/o utilizan o acceden de alguna otra manera a cualquiera de los
                    servicios que ofrecemos, incluyendo, entre otros, servicio técnico, marketing y publicidad, y servicios comunitarios (en adelante, colectivamente llamados "servicios de Boundless").</p>

                <p>La edad mínima para tener una Cuenta de usuario es de 13 años ("Cuenta"). No recopilaremos deliberadamente datos personales de personas menores de esta edad. Boundless necesitará el consentimiento del padre, madre o tutor antes
                    de crear una Cuenta y recopilar datos personales en la medida en que ciertos países o plataformas apliquen una edad de consentimiento más alta para la recopilación de datos personales. Boundless alienta a los padres, madres
                    o tutores a enseñar a sus hijos a que nunca den información personal cuando están en línea.</p>

                <p>Esta Política de privacidad describe por qué y cómo recopilamos y usamos sus datos personales, así como las opciones que tiene sobre los datos personales que proporciona o que recopilamos en relación con los servicios de Boundless.
                    Al acceder a nuestros sitios web o utilizar los Servicios de Boundless, usted reconoce que ha leído, entendido y aceptado los siguientes términos. En caso de que no acepte ninguno de los términos, deje de usar nuestros
                    servicios de inmediato.</p>

                <p>En caso de fusión, adquisición, reorganización, quiebra u otro incidente similar, haremos público un anuncio por adelantado, los detalles del incidente y la información sobre el sucesor, y, con el consentimiento expreso de
                    usted o de su padre, madre o tutor, sus datos personales serán transferidos al sucesor de Boundless. Boundless puede modificar, ajustar o revisar periódicamente los términos de esta Política de privacidad, de cuyas actualizaciones
                    se le informará, y tendrá que obtener nuevamente su consentimiento. Usted acepta revisar los términos actualizados regularmente. Si hay cambios importantes en la cláusula, haremos un anuncio por adelantado.
                </p>
            </div>

            <ol>
                <div class="parrafo">
                    <li>Datos que recopilamos y procesamos</li>

                    <p>Los datos personales se refieren a los datos que pueden usarse para identificar a una persona, como el nombre completo, la dirección de correo electrónico, la dirección de contacto, el código postal, los datos de ubicación,
                        el puesto de trabajo, la ocupación, los intereses personales y otros datos que usted elija facilitarnos. </p>

                    <div class="sangria">
                        <p>1) Entre los datos que recopilamos y procesamos se encuentran:</p>
                        <div class="sangria">
                            <p>i) Datos de contacto (incluyendo dirección de correo electrónico o número de teléfono/celular, si es necesario);</p>

                            <p>ii) Registro de la cuenta o registro de participación en el juego en línea (por ejemplo, su nombre de usuario, contraseña, ID Boundless);</p>

                            <p>iii) Información en foros de la comunidad de Boundless, chats, o cuando realiza comentarios u otro contenido generado por el usuario (como información que publica, comenta o sigue en cualquiera de nuestros contenidos
                                o servicios; información enviada a través del chat; información que proporciona cuando solicite información o ayuda por nuestra parte o compre nuestro contenido o servicios, incluida la información necesaria
                                para procesar sus pedidos con el servidor de pago correspondiente; proveedores de envío, en el caso de bienes físicos; o la información que nos proporciona cuando participa en competiciones, concursos y torneos
                                o respuestas a cuestionarios, como por ejemplo, sus datos de contacto);
                            </p>

                            <p>iv) Datos de transacciones y pagos, como suscripciones de compra de contenido y servicios. En caso de pago con tarjeta de crédito, deberá proporcionar la información necesaria de la tarjeta de crédito (nombre, dirección,
                                número de tarjeta de crédito, fecha de vencimiento y código de seguridad, si así fuera necesario);
                            </p>

                            <p>v) Otros datos que elija proporcionarnos (como datos sobre identificación de una Cuenta perdida, prevención de piratería, servicios al consumidor, mantenimiento de servicios, soporte técnico y cuestionarios, incluidos,
                                entre otros, su edad, sexo, pasatiempos e intereses generales, intereses y hábitos de juego, información del navegador y del dispositivo, preferencias relacionadas con el juego y/o datos recopilados a través
                                de interacciones electrónicas automatizadas y datos de uso de aplicaciones).</p>
                        </div>

                        <p>2) Datos que recopilamos de manera automática</p>
                        <div class="sangria">
                            <p>i) Datos sobre su Cuenta, progresos del juego y cualquier uso del/los juego(s) de Boundless;
                            </p>

                            <p>ii) Dirección de Protocolo de Internet ("IP");</p>

                            <p>iii) Datos sobre su dispositivo, como su ID de dispositivo, nombre de dispositivo, tipo de dispositivo, sistema operativo, ID de publicidad, dirección MAC, IMEI, CPU, idioma y tipo de navegador;
                            </p>

                            <p>iv) Cookies y tecnologías similares (ver más al final de este texto);</p>

                            <p>v) Datos generales de ubicación.</p>
                        </div>

                        <p>3) Datos que obtenemos de nuestros contratistas</p>
                        <div class="sangria">
                            <p>i) Datos que recibiremos si asocia aplicaciones de terceros con los servicios de Boundless (como acceder a nuestros servicios a través de Facebook, Twitter, Game Center, Google Play, Apple App Store);</p>

                            <p>ii) Datos para frenar el uso de trampas (como el abuso de reembolso);</p>

                            <p>iii) Datos de los métodos de pago que ayudan a ejecutar el/los juego(s) de Boundless (por ejemplo, para verificar y confirmar un pago);</p>

                            <p>iv) Datos con fines publicitarios y analíticos para que podamos brindarle mejores servicios.
                            </p>
                        </div>
                        <p>(Le garantizamos que no usaremos sus datos para el perfil de usuario y, si usted es un usuario con una edad de 13 años (o 14), no recibirá publicidad)</p>

                        <p>Tenga en cuenta que podemos fusionar y actualizar los datos personales que hemos recopilado sobre usted con datos de terceros contratistas para actualizar sus datos, realizar análisis de mercado y/o mejorar los servicios
                            de Boundless.</p>

                        <p>Cuando usa o interactúa con un Kit de desarrollo de software (SDK) disponible en nuestros servicios para usuarios, como widgets de redes sociales de terceros, botones para compartir y/o mecanismos de inicio de sesión,
                            estas características podrían incluir SDK de Google, Facebook, Twitter u otras plataformas (si corresponde), y usted deberá estar sujeto a sus respectivas políticas de privacidad.</p>

                        <p>A menos que contemos con su consentimiento expreso, no recopilaremos información de identificación personal (PII) o información personal confidencial (SPI), como su nombre real, dirección, número de teléfono, número
                            de fax y dirección de correo electrónico. Asimismo, usted acepta que, si elige facilitar cualquier información personal, ello estará sujeto a esta Política de privacidad, y usted acepta todos los términos de la
                            misma. Tenga en cuenta que los datos personales que se faciliten en una transacción comercial no estarán sujetos a esta Política de privacidad, incluidos, entre otros, ofertas de empleo, la participación en actividades
                            y cualquier tipo de firma comercial.
                        </p>

                    </div>

                    <li>Por qué recopilamos su información personal</li>

                    <p>A fin de asignar una identificación de Boundless a los usuarios y ofrecerle la mejor calidad en nuestros servicios, recopilamos y procesamos los datos para:</p>
                    <div class="sangria">
                        <p>1) Permitir o restringir su acceso a los servicios de Boundless;</p>

                        <p>2) Analizar y administrar los servicios de Boundless para gestionar el sistema, el servicio al usuario, la seguridad, la detección de fraudes, la verificación de la autenticidad del propietario de una cuenta y los archivos
                            y/o copias de seguridad;
                        </p>

                        <p>3) Corregir errores, mejorar nuestros servicios y responder a los deseos y preferencias del cliente, incluida la personalización de idioma y ubicación, ayuda e instrucciones personalizadas y otras respuestas;(iii) Corregir
                            errores, mejorar nuestros servicios y responder a los deseos y preferencias del cliente, incluida la personalización de idioma y ubicación, ayuda e instrucciones personalizadas y otras respuestas;
                        </p>

                        <p>4) Desarrollar nuevos servicios o productos que usted solicite y mejorar la experiencia del usuario;
                        </p>

                        <p>5) Verificar y confirmar pagos;</p>

                        <p>6) Proporcionarle ofertas a través de los servicios de Boundless y enviarle publicidad que pueda ser relevante para sus intereses, como ofrecerle que participe en nuestros cuestionarios o actividades;
                        </p>

                        <p>7) Comunicarnos con otros usuarios y tomar medidas contra el mal comportamiento de los mismos;
                        </p>

                        <p>8) Personalizar su experiencia, mantenerle actualizado sobre los últimos anuncios de productos, proporcionarle verificación de software, actualizaciones y administración, notificarle acerca de eventos especiales y ofrecerle
                            otros datos relacionados con nuestros servicios; y/o</p>

                        <p>9) Proteger la integridad, seguridad y salvaguardia de nuestros servicios o nuestros usuarios, cumplir con nuestras obligaciones legales y hacer cumplir los Términos de servicio u otras restricciones impuestas al uso
                            de los servicios de Boundless.
                        </p>

                        <p>10) Realizar un seguimiento de su proceso en nuestros sitios web y aplicaciones para verificar que no es un bot y para optimizar nuestros servicios.</p>
                    </div>
                    <p>Para los fines establecidos anteriormente, se puede encargar a nuestros socios que procesen su información, siempre que dichos socios cumplan con los términos y condiciones de la presente Política de privacidad. "Afiliado"
                        en esta Política de privacidad hará referencia a una entidad que directa o indirectamente controla, está controlada por o está bajo el control de Boundless, Inc.</p>

                    <p>En vista de todo lo anterior, usted reconoce y acepta que podemos analizar, perfilar, segmentar, fusionar y/o actualizar todos los datos recopilados (independientemente de si es de una manera agregada o individualizada
                        con el fin de mejorar la calidad del servicio y proporcionar una mejor experiencia a los usuarios).</p>



                    <li>Publicidad y sus elecciones</li>

                    <p>Con el fin de proporcionar anuncios personalizados, usted reconoce y acepta que podemos recopilar y procesar los datos para:</p>
                    <div class="sangria">
                        <p>1) Mejorar la publicidad y otras actividades de marketing y promoción; y/o</p>

                        <p>2) Enviar, orientar y mejorar nuestra publicidad.</p>
                    </div>
                    <p>También podremos usar sus datos para enviarle o hacer que nuestros contratistas autorizados le envíen datos de marketing directo, o contactar con usted para nuestras propias encuestas de mercado. Si no desea recibir información
                        de marketing o publicidad de nosotros o de cualquiera de nuestros contratistas, no proporcione sus datos de contacto a través de Internet y solicite directamente a dichos contratistas que eliminen sus datos de la lista
                        de contactos.</p>

                    <p>Si no contamos con su consentimiento, nos aseguraremos de no usar sus datos para el perfil de usuario y, si usted es un usuario con una edad de 13 años (o 14), no le enviaremos ningún tipo de publicidad.
                    </p>



                    <li>Cookies o tecnologías similares</li>

                    <p>Para medir la efectividad de nuestros servicios, algunas páginas en nuestros sitios web pueden usar cookies, que son pequeños archivos de texto utilizados para una mejor funcionalidad o para rastrear el uso del sitio web.
                        Podemos usar cookies y/o autorizar la utilidad de seguimiento de terceros en ciertas ocasiones para: (a) registrar su dirección IP y determinar la ruta que toman los usuarios en nuestros sitios e identificar a los usuarios
                        habituales de los mismos; (b) para recopilar los sitios web o fuentes que lo vincularon o derivaron a nuestros servicios; y/o (c) para recopilar datos técnicos sobre los dispositivos y el software que utiliza para acceder
                        a nuestros servicios, el sistema operativo de sus dispositivos y otros datos técnicos similares. A pesar de lo anterior, no vincularemos su dirección IP con sus datos personales. Si no desea aceptar las cookies o desea
                        que se le notifique cuándo se aplican, puede configurar su navegador web para que lo haga, si este así lo permitiera.</p>

                    <p>Utilizamos cookies, balizas web y tecnologías similares para personalizar su experiencia en nuestros servicios y para otros fines, que incluyen:</p>
                    <div class="sangria">
                        <p>1) Recordarle que: las cookies, las balizas web y otras tecnologías similares pueden ayudarnos a identificarlo como usuario o mantener las preferencias o los datos que ha proporcionado con anterioridad;
                        </p>

                        <p>2) Analizar cómo usa usted nuestros servicios: podemos usar cookies, balizas web y tecnologías similares para comprender qué están haciendo los visitantes (incluidos los usuarios) en nuestros servicios, o qué páginas
                            o secciones son más populares;
                        </p>

                        <p>3) Publicar anuncios: las cookies, balizas web y tecnologías similares nos ayudan a, con base en los datos proporcionados por usted, ofrecerle publicidad que creemos que es relevante para usted o que le interesa; y/o
                        </p>

                        <p>4) Otras funciones o propósitos relacionados con lo anterior y mencionados en la Sección 2.</p>
                    </div>
                    <p>Nuestros contratistas autorizados o nosotros podemos usar cookies y tecnologías similares para proporcionar y personalizar los servicios, prevenir fraudes y para otros fines mencionados anteriormente. Tenga en cuenta que
                        puede deshabilitar las cookies en la configuración de su navegador, pero una parte de los servicios de Boundless podría no funcionar correctamente.</p>



                    <li>Quién puede acceder a sus datos personales</li>

                    <p>Además de Boundless y/o sus socios, otras partes también podrán acceder a sus datos personales en las situaciones explicadas a continuación. Usted reconoce que ha previsto y aceptado la divulgación de dicha información
                        cuando proporciona sus datos personales.
                    </p>
                    <div class="sangria">
                        <p>1) Otros usuarios</p>

                        <p>Otros usuarios pueden, por ejemplo, en un desafío en grupo, ver su actividad dentro del juego durante el desafío. Otros usuarios también pueden ver sus datos de visualización y leer los mensajes que ha publicado en
                            o a través de los servicios de Boundless. Usted acepta que los servicios de Boundless también pueden incluir tableros de mensajes, comunidades, foros y/u otras áreas de chat donde los usuarios pueden intercambiar
                            ideas o comunicarse con otros. Asimismo, acepta que cualquier dato que haya publicado en cualquier área de comunicación sea visible públicamente. Recomendamos encarecidamente que los usuarios eviten publicar datos
                            personales o confidenciales en todo momento.
                        </p>

                        <p>2) Autoridades competentes</p>

                        <p>Podremos proporcionar una parte de sus datos personales a las autoridades judiciales o administrativas si estas lo solicitaran en algún momento. Además, podremos divulgar una parte de sus datos personales a una cantidad
                            limitada de destinatarios cuando creamos que es necesario para protegernos a nosotros mismos, a nuestros usuarios o a una parte del público.</p>

                        <p>Salvo en las situaciones en que la legislación vigente no lo requiera, nos reservamos el derecho a divulgar sus datos personales si, de buena fe, creemos que divulgar dichos datos es necesario para identificarle, contactar
                            con usted o emprender acciones legales en los casos en que:</p>
                        <div class="sangria">
                            <p>i) Esté violando cualquier acuerdo entre nosotros, como los Términos de servicio y esta Política de privacidad, o esté perjudicándonos;</p>

                            <p>ii) Esté infringiendo los derechos e intereses de terceros (incluidos, entre otros, los derechos de propiedad intelectual); y/o</p>

                            <p>iii) Creamos que es necesario para prevenir un fraude u otras actividades ilegales.
                            </p>
                        </div>

                        <p>3) Contratistas de terceros</p>

                        <p>Boundless trabaja con una serie de contratistas de redes sociales (si los hay), contratistas de servicios de publicidad, contratistas de análisis, contratistas de pago, contratistas de detección de fraude y otros contratistas
                            externos en o a través de nuestros servicios. No venderemos sus datos personales y solo compartiremos datos no identificables, agrupados y públicos con terceros.</p>

                        <p>Además, dichos contratistas pueden usar cookies, balizas web y/u otras tecnologías de rastreo para recopilar o recibir datos sobre usted, y pueden reclamar el derecho de controlar sus datos personales. Por ejemplo,
                            los usuarios que compren productos o servicios deberán proporcionar datos adicionales a contratistas de pago de terceros, como un número de tarjeta de crédito válido y fecha de vencimiento, entre otros. Dichos contratistas
                            de pago externos pueden recopilar, procesar y retener sus datos para procesar pagos y resolver disputas y consultas de pagos posteriores. También podemos recibir, procesar y almacenar la información proporcionada
                            de usted y/o de dichos contratistas de pago externos para confirmar un pago, registrar el historial de compras y/o proteger nuestros intereses legítimos al resolver disputas y consultas de pago posteriores.
                        </p>

                        <p>Tenga en cuenta que no podemos controlar las actividades de dichos terceros, y no podemos garantizar que cumplan con la misma política de privacidad que nosotros. Dado que esos contratistas pueden acceder a sus datos
                            como controladores de datos y operar bajo sus propias políticas de privacidad, le recomendamos que consulte sus políticas de privacidad en sus sitios web oficiales y obtenga más información sobre sus prácticas de
                            procesamiento de datos.</p>

                    </div>

                    <li>Conservación de datos</li>

                    <p>Conservaremos sus datos durante el tiempo que su cuenta esté activa o según sea necesario para proporcionarle los servicios de Boundless, a menos que se eliminen a petición de usted.</p>

                    <p>Para brindarle nuestros servicios, podremos acceder a su información personal, la cual se procesará en nuestros servidores. Nuestros servidores están ubicados en:</p>
                    <div class="sangria">
                        <p>Estados Unidos de América;</p>

                        <p>Japón; y</p>

                        <p>Unión Europea.</p>
                    </div>
                    <p>En caso de que solicite eliminar o elimine usted sus datos personales, conservaremos sus datos el tiempo que sea necesario para nuestros intereses comerciales legítimos, como cumplir con nuestras obligaciones legales, resolver
                        disputas y/o hacer cumplir los acuerdos entre nosotros. Tenga en cuenta que la eliminación de cualquiera de sus datos puede dar lugar a la terminación de algunos de nuestros servicios aplicables.</p>

                    <p>Solo almacenaremos su información el tiempo que sea necesario para cumplir con los propósitos para los cuales se recopila y procesa la misma, o cuando la legislación vigente estipule un periodo de almacenamiento y retención
                        más largo. Después de ello, sus datos personales serán eliminados, bloqueados o se volverán anónimos, según lo dispuesto en la legislación vigente.</p>



                    <li>Sus derechos</li>

                    <p>Si lo solicita por escrito, le proporcionaremos una copia de sus datos personales en formato electrónico después de pasar nuestro proceso de revisión. También tiene derecho a corregir o modificar sus datos, eliminarlos
                        y objetar y restringir cómo usamos o compartimos sus datos. Además, podrá retirar su consentimiento en cualquier momento, por ejemplo, desactivando la ubicación compartida de GPS en la configuración de su dispositivo
                        móvil.
                    </p>

                    <p>En relación con las comunicación de temas de marketing o promocionales, puede optar por no recibir dichas comunicaciones de acuerdo con las instrucciones que se incluyen en ellas, como SMS, correo electrónico u otros métodos
                        de contacto que se nos proporcionan. También puede optar por no recibir anuncios en aplicaciones móviles al verificar la configuración de privacidad y, respectivamente, seleccionar "limitar el seguimiento de anuncios"
                        (iOS) u "optar por no recibir notificaciones de aplicaciones" (Android). Además, puede usar la configuración del juego para personalizar sus preferencias en el juego.</p>

                    <p>Para acceder a ella, entre en nuestra página de soporte en https://genshin.Boundless.com y elija los elementos del menú.</p>
                    <div class="sangria">
                        <p>1) Derechos de acceso</p>

                        <p>Tiene derecho a acceder a los datos personales que tenemos sobre usted, es decir, derecho a solicitar de forma gratuita: (i) información sobre si se conservan sus datos personales, (ii) acceso a duplicados de los datos
                            personales retenidos. Puede hacer uso del derecho de acceso a sus datos personales a través del panel de privacidad. Si la solicitud afecta los derechos y libertades de otros o es manifiestamente infundada o excesiva,
                            nos reservamos el derecho de cobrar una tarifa razonable (teniendo en cuenta los costos administrativos derivados de la misma) o negarnos a actuar incluso bajo su solicitud.</p>

                        <p>2) Derecho a rectificar</p>

                        <p>Si procesamos sus datos personales, nos esforzaremos por garantizar mediante la implementación de medidas adecuadas que estos sean precisos y estén actualizados para los fines para los que fueron recopilados. Si sus
                            datos personales son inexactos o incompletos, puede modificar la información que proporcionó a través del panel de privacidad.
                        </p>

                        <p>3) Derecho a borrar</p>

                        <p>Tiene derecho a obtener la eliminación de sus datos personales si el motivo por el que podríamos recopilarlos (consulte la sección 2 anterior) ya no existe o si existe otro motivo legal para su eliminación.
                        </p>

                        <p>Como resultado de eliminar su Cuenta de Boundless, perderá el acceso a los servicios de Boundless, incluida la Cuenta de Boundless, las suscripciones y la información relacionada con el juego vinculada a la Cuenta de
                            Boundless y la posibilidad de acceder a otros servicios a través de la Cuenta de Boundless.</p>

                        <p>4) Derecho a objetar</p>

                        <p>Cuando nuestro procesamiento de sus datos personales se base en intereses legítimos de acuerdo con el Artículo 6(1)(f) del Reglamento General de Protección de Datos (en adelante, "RGPD") y/o la sección 2.c) de esta
                            Política de privacidad o cualquier otra ley y normativa aplicable en su país de residencia, tendrá derecho a oponerse a nuestro procesamiento. Si se opone, ya no procesaremos sus datos personales a menos que existan
                            motivos legítimos de procesamiento convincentes y prevalecientes como se describe en el Artículo 21 del RGPD o cualquier otra ley y normativa aplicable en su país de residencia; en particular, si los datos son necesarios
                            para el establecimiento, ejercicio o defensa de reclamos legales. También tiene derecho a presentar una queja ante una autoridad supervisora.
                        </p>

                        <p>5) Derecho a restringir el procesamiento</p>

                        <p>Tiene derecho a restringir el procesamiento de sus datos personales en las condiciones establecidas en el artículo 18 del RGPD o cualquier otra ley y normativa vigentes en su país de residencia.
                        </p>

                        <p>6) Derecho a la portabilidad de datos personales</p>

                        <p>Tiene derecho a recibir sus datos personales en un formato estructurado, de uso común y legible por máquina, y tiene derecho a transmitir esos datos a otro controlador en las condiciones establecidas en el artículo
                            20 del RGPD o cualquier otra ley y normativa vigentes en su país de residencia. Boundless hace que sus datos personales estén disponibles a través del panel de privacidad, como se describe anteriormente.</p>

                    </div>

                    <li>Protección de datos</li>

                    <p>Con respecto a su uso de nuestros servicios, nos hemos esforzado por tomar medidas razonables para evitar el acceso no autorizado o el uso indebido de sus datos personales, como controles organizativos, protección técnica
                        y otras medidas de protección.
                    </p>

                    <p>Lamentablemente, la transmisión de información a través de Internet no es completamente segura. Si bien nos esforzamos por proteger sus datos personales, también le recordamos que tenga en cuenta los riesgos de piratería
                        informática, ataques cibernéticos, etc. en Internet.</p>

                    <p>Por lo tanto, le recomendamos que tome todas las precauciones posibles para proteger sus datos personales al usar nuestros servicios, lo que incluye, entre otros, cambiar su contraseña cada cierto tiempo, no reflejar su
                        nombre real u otros datos personales en la configuración del apodo, utilizar una combinación de letras y números al crear una contraseña, usar un navegador seguro y/o tomar otras posibles medidas de seguridad. Tenga
                        en cuenta que guardamos las contraseñas en forma encriptada por razones de seguridad.</p>

                    <p>Tenga en cuenta que los anunciantes o sitios web con enlaces hacia y/o desde nuestros sitios web pueden recopilar datos personales sobre usted y esta Política de privacidad no se aplica ni puede controlar las actividades
                        de esos otros anunciantes o sitios web. Le recomendamos encarecidamente que lea la política de privacidad de dichos sitios web de terceros a los que puede ser dirigido antes de proporcionar cualquier información personal.</p>



                    <li>Límites de edad</li>

                    <p>Usted declara que es un adulto o mayor de edad en su país de residencia (o que se considera que tiene la mayoría de edad en su lugar de residencia) cuando utiliza los servicios de Boundless. Si es un menor de edad su edad
                        es inferior a la mayoría de edad legal (en adelante, "menor" o "niño"), no nos envíe sus datos, incluidos su nombre, dirección, número de teléfono o dirección de correo electrónico.</p>

                    <p>Recomendamos encarecidamente a los padres, madres o tutores que instruyan a sus hijos a que nunca divulguen datos personales sin el permiso previo de los mismos. Si descubrimos que hemos recopilado datos personales sobre
                        un menor, los eliminaremos lo más rápido posible. Además, si cree que podríamos tener datos de un menor o sobre él, contacte con nosotros.</p>



                    <li>Contacto y quejas</li>

                    <p>A los efectos de la Ley Europea de Protección de Datos, el Controlador de Datos es Boundless, Inc. Si tiene alguna pregunta sobre esta Política de privacidad o si tiene alguna solicitud para resolver problemas con sus datos
                        personales, comuníquese con nosotros en primera instancia, o envíe una carta dirigida a Boundless, Inc. con su dirección de contacto: Calle Maestro Don Marciano, 1, 33011 Oviedo, Asturias, España, Destinatario: Customer
                        Service Department (Departamento de Servicio de Atención al Cliente); o envíe un correo electrónico a nuestro correo oficial de seguridad de datos: contact@boundless.com.</p>
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
            <li><a href="vistaToS.jsp ">Términos del Servicio</a></li>
            <li><a href="vistaPrivacidad.jsp " style="color: #e2587b;">Política de Privacidad</a></li>
            <li><a href="vistaContacto.jsp">Contacto</a></li>
        </ul>
        <p>© 2012-2020 Boundless, Inc. Todos los derechos reservados.</p>
    </DIV>
</footer>

</html>