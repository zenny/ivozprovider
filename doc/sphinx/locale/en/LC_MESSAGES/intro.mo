��    \      �              �  d   �  z   B  Z   �  p     �   �  @   N  �   �     5	  P   D	  '   �	  �   �	  {   m
  d   �
  p   N  �   �  �   w  c   5  )  �  p   �  R   4  i   �  �   �  j   �       N     �   l  &  2  �   Y  K     D   ^     �     �     �  }   �  0   Z  /   �  n   �     *  6  G  �   ~  �   C  �   �  �   �  J  s  �   �  d   �  �   �  ~   �  k      M   l  I   �  D        I  ^   ]  �   �  S   =   U   �   
   �      �   T   
!  8   _!  |   �!     "     #"     8"     F"     T"  �   s"  K   �"  a   F#  f   �#  9   $  e   I$     �$  ?   �$     %     %  \  %     i&  -   w&  2   �&     �&  7   �&  y   '  X   �'  
   �'  
   �'      �'  '   (     F(  "   ^(  �  �(  c   *  e   u*  m   �*  v   I+  �   �+  '   �,  �   �,     B-  R   N-     �-  �   �-  `   O.  o   �.  t    /  �   �/  �   ,0  ^   �0  �   D1  [   '2  &   �2  O   �2  �   �2  S   �3     �3  B   4  �   G4  �   �4  �   �5  T   �6  ?   �6     )7     G7     T7  k   Z7  +   �7  /   �7  T   "8     w8    �8  �   �9  u   5:  �   �:  �   ];  �   $<  �   "=  `   �=  v   />  [   �>  Z   ?  J   ]?  ;   �?  8   �?     @  N   ,@  F   {@  H   �@  S   A  
   _A     jA  \   �A  8   �A  Z   B     sB     �B     �B     �B     �B  l   �B  S   7C  X   �C  \   �C  -   AD  X   oD     �D  7   �D     E     E  ;  E     XF  +   eF  2   �F     �F  1   �F  k   �F  9   fG  	   �G  
   �G      �G     �G     �G     H   **Nivel Brand Operator**: Responsable de dar acceso, tarificar y facturar a n operadores de empresa. **Nivel Company Operator**: Responsable de configurar el comportamiento de su centralita y dar de alta n usuarios finales. **Nivel God**: instalador y mantenedor de la solución. Da acceso a n operadores de marca. **Nivel de Usuario**: Dispone de unas credenciales para sus terminales SIP y otra para el acceso a su panel web. A pesar de que todas las piezas pueden correr en una misma máquina, lo que facilita las pruebas iniciales, cada elemento de IvozProvider se puede separar del resto y correr en su propio hardware. Bases de datos de almacenamiento de configuraciones y registros. Cabe destacar que **cada uno** de estos niveles **dispone de un acceso web** que le permite realizar sus funciones. Los acceso web se pueden personalizar a nivel de: Cabe destacar: Canal IRC `#ivozprovider <https://webchat.freenode.net/?channels=ivozprovider>`_ Dirección de correo: vozip@irontec.com El administrador global puede asignar Servidores de Aplicación estáticamente a empresas, pero esta funcionalidad está pensada como herramienta de *troubleshooting* puntual. El esquema de portales y diseño de IvozProvider permite que **múltiples actores cohabiten en una misma infraestructura**: El primer bloque expone unos :ref:`concepts` que desglosan los elementos del producto y su función. El proceso de instalación es tan simple, que la mejor forma de saber si IvozProvider es para ti, ¡es probarlo! El siguiente bloque se describe el proceso de :ref:`installation` con la plataforma recién instalada, dejando de lado detalles que describirán en profundidad en el siguiente bloque. El tercer bloque es el que profundiza en aspectos de :ref:`advanced` como **tarificación, facturación, funcionalidades de PBX y todos los detalles** que en el bloque anterior se obviaron. En el cuarto y último, se describen los mecanismos de :ref:`security` que implementa la solución. En la configuración por defecto no existe asignación estática [*]_ que envíe las llamadas de una empresa a un Servidor de Aplicación concreto, de modo que la caída de cualquier Servidor de Aplicación no es crítica: el sistema dejará de contar con él a la hora de distribuir las llamadas. En la sección :ref:`operation_roles` se describen los distintos roles en profundidad, pero se puede resumir en: En lo relativo a los **codecs de audio soportados**, la lista sería la siguiente: En lo relativo a los **protocolos de transporte** para transportar SIP, actualmente IvozProvider soporta: Es el punto de partida para todo aquel interesado en esta solución, tanto desde el punto de vista técnico como desde el punto de vista de uso y consta de cuatro bloques: Escalado horizontal de los elementos clave para dar servicios a cientos de miles de llamadas concurrentes. Escalado horizontal. Estas son las ideas principales que lo hacen un producto orientado a operador: Este documento describe el proceso de instalación y de utilización de IvozProvider, la plataforma de telefonía multinivel orientada a operadores desarrollada por `Irontec <http://irontec.com>`_. Este último protocolo de transporte descrito en el `RFC 7118 <https://tools.ietf.org/html/rfc7118>`_ permite la utilización de softphones desde la web, utilizando el estándar `WebRTC <https://webrtc.org/>`_ de los navegadores web para establecer comunicaciones en tiempo real *peer-to-peer*. Esto implica libertad total a la hora de elegir *softphones*, *hardphones* y el resto de elementos que interactúan con IvozProvider, sin ningún tipo de ataduras a ningún fabricante. Existe un mecanismo anti-flood para evitar grandes consumos en poco tiempo. Existe un mecanismo de control de llamadas concurrentes por empresa. Expuesta a la red pública Funcionalidades de PBX. G.729 Gestión de las lógicas programadas por cada administador de empresa (IVRs, salas de conferencias, filtros de horario, etc.) Gestión del audio de las llamadas establecidas. GitHub: https://github.com/irontec/ivozprovider Instalación de elementos clave cerca de los usuarios finales, para minimizar latencias en sus comunicaciones. Introducción a Ivozprovider IvozProvider es compatible con los sistemas de telefonía que utilicen el protocolo *Session Initiation Protocol*, **SIP**, descrito en el `RFC 3261 <https://tools.ietf.org/html/rfc3261>`_ y todos los `RFCs relacionados <https://www.packetizer.com/ipmc/sip/standards.html>`_, independientemente del fabricante. IvozProvider es un buen candidato para todo aquel que esté interesado en disponer de una plataforma de telefonía para poder dar servicios a **cientos de miles de llamadas de forma concurrente**. IvozProvider es un proyecto vivo y en continua evolución. Existen múltiples canales para obtener información o reportar errores: IvozProvider es una solución de :ref:`telefonía IP <voip>` :ref:`multinivel <multilevel>` :ref:`orientada a operador <operator_oriented>` :ref:`expuesta a la red pública <exposed>`. IvozProvider es una solución de telefonía **diseñada con el escalado horizontal en mente**, lo que la permite adecuarse a **altos volúmenes de tráfico y de usuarios** sin más que adaptar el número de máquinas y los recursos de éstas. IvozProvider ha sido diseñado con la idea de mantener el **escalado horizontal** de cada uno de estos elementos, **para así poder llegar a poder gestionar cientos de miles de llamadas concurrentes** y, lo que es más importante, poder **adaptar los recursos de la plataforma al nivel de servicio que se espera en cada momento**: IvozProvider incluye proyectos de `Software Libre <https://www.gnu.org/philosophy/free-sw.es.html>`_ de reconocido prestigio y larga trayectoria para cumplir las tareas de diversa índole que necesita la plataforma. IvozProvider se encarga de mantener activas dichas ventanas de NAT con mecanismos de *nat-piercing*. IvozProvider soporta la conexión desde terminales tras `NAT <https://es.wikipedia.org/wiki/Traducci%C3%B3n_de_direcciones_de_red>`_. La función que cumple cada una de estas piezas se detallará con mayor profundidad en el bloque titulado :ref:`architecture`. Las grandes fortalezas de IvozProvider pueden servir para saber si IvozProvider encaja en tu caso concreto: Las siguientes secciones servirán como introducción general a IvozProvider: Listas de correo para desarrolladores: dev@lists-ivozprovider.irontec.com Listas de correo para usuarios: users@lists-ivozprovider.irontec.com Logo de la empresa. Los **Media-relays** se encargan de reenviar las tramas de audio de las sesiones establecidas: Los **Servidores de Aplicación** se encargan de la fase previa de toda llamada: hacer que siga la lógica programada. Este rol: Los accesos desde países de dudosa confianza se cortan en el firewall incorporado. Los elementos que limitan la capacidad de servicio de las soluciones VoIP suelen ser: Multinivel Multinivel, multimarca. Nada como una imagen para ilustrar los distintos proyectos que integra IvozProvider: No dudes en contactarnos cualquiera que sea el motivo :) Nuestro más sincero agradecimiento a los desarrolladores de todos estos proyectos, así como a las comunidades de usuarios. Obtener ayuda Orientada a operador PCMA (*alaw*) PCMU (*ulaw*) PseudoSBC: abierto a Internet. Se puede escalar horizontalmente: que los Servidores de Aplicación empiezan a estar saturados, se instalan más y se añaden al pool. Se puede filtrar el acceso desde IPs/redes autorizadas para evitar fraudes. Se pueden crear grupos de media-relays y hacer una asignación estática a las empresas deseadas. Se pueden poner los media-relays cerca de los usuarios finales, para evitar latencias en las llamadas. Se pueden poner tantos media-relays como sean necesarios. Separación geográfica de los elementos para garantizar una disponibilidad a prueba de fallo de CPD. Sobre este documento Solo los elementos imprescindibles están expuestos a Internet. TCP TLS Tal y como se verá en el proceso de instalación, **IvozProvider está diseñado para servir a usuarios directamente desde Internet**. Aunque pueda utilizarse en entornos locales, IvozProvider se ha diseñado para disponer de direcciones IPs públicas para dar servicio sin necesidad de túneles VPN o IPsec que te conecten con la infraestructura. Telefonía IP Temas y *skins* con los colores corporativos. Twitter: `@irontec <https://twitter.com/irontec>`_ UDP URLs personalizadas con el dominio de la marca/empresa. Una **instalación distribuida** permite asignar máquinas con recursos adecuados a cada tarea, pero también posibilita: Una llamada acaba en el Servidor de Aplicación que menos cargado esté en cada momento. VoIP: SIP. Websockets `OPUS <http://opus-codec.org/>`_ ¿Quién debería de usar IvozProvider? ¿Qué es IvozProvider? ¿Qué hay dentro de IvozProvider? Project-Id-Version: IvozProvider 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-13 19:41+0200
PO-Revision-Date: 2016-10-13 19:41+0200
Last-Translator: Ivan Alonso <kaian@irontec.com>
Language-Team: Irontec VoIP Team <vozip@irontec.com>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 **Brand Operator**: Responsible of giving access, tarificate and bill to multiplecompany operators. **Company Operator**: Responsible of its own PBX configuration and to managethe final platform users. **God Admin**: The administrator and maintainer of the solution. Provides access to multiple brand operators. **Users**: The last link of the chain, it has SIP credentials and can access its own portal for custom configurations. Despite the fact that all machine profiles can run in the same host, whatmakes it easier for the initial testing, each profile of IvozProvider can be splitted from the rest to make it run in its own machine. Databases of configuration and records. **Each one** of this roles **has its own portal** that allows them to manage their tasks. portal can be customized in the following ways: Highlights: IRC Channel `#ivozprovider <https://webchat.freenode.net/?channels=ivozprovider>`_ email: vozip@irontec.com The global administrator can assign Application Servers to companies but this feature is more designed as a temporal debug and troubleshoot measure. The web portal design of IvozProvider allows **multiple actors within the same infrastructure**: The first block is about :ref:`concepts` where each element of the product and its main function is decscribed. The installation process is so simple, that the best way to test if IvozProvider fullfills yout needs is to test it! The second block describes the :ref:`installation` process with a fresh installed platform, leaving the deep configuration details for the next block. The third block goes deeper into the most :ref:`advanced` features like **trarification, billing, PBX advanced options and every call details** that were omitted in the previous block. The fourth and last block describes the :ref:`security` measures that implements the solution. By default, there is no static assigment\* between Companies and Application Servers. This way failure of any Application Server is not critical: the platform will ignore the faulty Application Server while distributing calls. In :ref:`operation_roles` section, the different roles are deeply described, but to sum up: The **supported audio codec** list is: The supported **transport protocols** for SIP, right now IvozProvider supports: This should be the starting point for anyone interested in this solution, both  from the technical point of view and the user one and it's divided in four blocks: Horizontal scaling of key profiles to handle hundred of thousands concurrent calls. Horizontal scaling This are the main ideas that makes this product provider oriented: This document describes the process of installation and usage of IvozProvider, the multi-tenant telephony platform for providers developed by `Irontec <http://irontec.com>`_. This last transport protocol described in `RFC 7118 <https://tools.ietf.org/html/rfc7118>`_  allows web intregrated softphones, using the `WebRTC <https://webrtc.org/>`_ standard to allow browsers establish real-time *peer-to-peer* connections. This allows total freedom to chose *softphones*, *hardphones* and the rest of elements that interact with IvozProvider, without any kind of binding with a manufacturer. There is also an anti-flood mechanism to avoid short-life Denial of Service attacks. Each company concurrent calls can be limited to a fixed amount. Exposed to the public network PBX Features G.729 Managing configuration for each company administrator (IVRs, conference rooms, external call filters, etc.) Already established calls audio management. GitHub: https://github.com/irontec/ivozprovider Setup of key elements near the final users, to minimize the communication latencies. Introduction to IvozProvider IvozProvider supports telephony systems that use *Session Initialitation Protocol*, **SIP**, described in `RFC 3261 <https://tools.ietf.org/html/rfc3261>`_ and any `related RFCs <https://www.packetizer.com/ipmc/sip/standards.html>`_ independent of manufacturers. IvozProvider is a good option for those insterested in having a telephony platform that can provide service to **hundred of thousands concurrent calls**. IvozProvider is an alive and highliy developed project. There aremultiple channels to get information or report bugs: IvozProvider is a :ref:`provider oriented <operator_oriented>` :ref:`multilevel <multilevel>` :ref:`IP telephony <voip>` solution :ref:`exposed to the public network <exposed>`. IvozProvider is a telephony solution **designed with horizontal scaling in mind**, what allows handling a great amount of **traffic and users** only by increasing the machines and resources of them. IvozProvider was designed always keeping in mind the **horizontal scaling** of each of its elements, so it **can handle hundred of thousands concurrent calls** and what is more important, **adapt the platform resources to the expected service quality**: IvozProvider uses well-known and stable `Free Software <https://www.gnu.org/philosophy/free-sw.en.html>`_ projects to fullfill the different required task of the platform. IvozProvider keep track of those NAT windows and keep them alive with *nat-piercing* mechanisms. IvozProvider supports conections from users behind `NAT <https://en.wikipedia.org/wiki/Network_address_translation>`_. The task of each of this software will be deeply detailed in the block :ref:`architecture`. The greatest strengths of IvozProvide can help to decide if the solution feeds your needs: The following sections will serve as general introduction to IvozProvider: Developers mailing list: dev@lists-ivozprovider.irontec.com Users mailing list: users@lists-ivozprovider.irontec.com Company Logos. **Media-relay** servers handle audio frames for the already established calls: **Application serves** are in charge of processing the configurad logi The unstrusted origins access can be filtered out by integrated firewall The resource consuming elements that limit the service of VoIP solutions use to be: Multilevel Multilevel, multitenant Nothing better than an image to show all the software that its integrated into IvozProvider: Don't hesitate to contact us for any kind of feedback :) We can not stress enough our gratitude to the developers and communities of this projects. Getting help Provider oriented PCMA (*alaw*) PCMU (*ulaw*) PseudoSBC: open to Internet They scale horizontally: new Application Serves can be installed and added to the pool if you feel the need. Access from IP addresses or networks can be filtered to avoid any kind of Phishing. You can join media-relay in groups, and force some companies to use a group if you want. You can setup media-relays near the final users, to minimize network latencies in the calls. You can use as many media-relays as you need. Geographic distribution of elements to warranty high availability in caseof CPD failure. About this document Only the required services will be exposed to Internet. TCP TLS As showed in the installation proces, **IvozProvider is designed to serve users directly from Internet**. Althoughit can be used in local enviroments, IvozProvider is designed to use public IP addresses for its services, removing the need of VPN or IPSec tunnels that connect the infrastructure with the final users IP Telephony Themes and *skins* for corporative colours. Twitter: `@irontec <https://twitter.com/irontec>`_ UDP Customized URLs with the Brand or Company domain. A **distributed installation** allows to distribute the correct amount of resources to each task, but also: Every call is handled by the least busy Appliction Server VoIP: SIP Websockets `OPUS <http://opus-codec.org/>`_ Who should use IvozProvider? What is IvoProvider? What is inside IvozProvider? 