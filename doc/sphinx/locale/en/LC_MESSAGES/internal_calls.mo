��    ^                    �  	   �               &  U   ;     �     �     �     �  
   �  �   �  e   }  \   �  c   @  �   �  '   (	  "   P	      s	     �	  1   �	  V   �	     7
  /   W
     �
  �   �
  �   <    �  �   �     �     �  �   �  �   a  �   "  W   �  i   *  p   �  r        x     �  �   �  �   %  [   �  �   &  R     �   i  ^   �  �   O  a   �  �   Q  �   %  �   �     c  z   �     ^     j     �  �  �  �   P  X   6  �   �  {     a  �  �   �  >   �  (      �   +   �   �   �   �!  5   "     I"     Y"  �   k"     0#  y   K#     �#     �#  S   �#  b   G$  �   �$  "  X%  
   {&  �   �&  l   )'  �   �'  S   i(  �   �(  n   r)  }   �)  6   _*     �*  P   �*     �*  �   +  r  �+  	   -     -     $-     ;-  U   P-     �-     �-     �-     �-  
   �-  �   �-  e   �.  \   �.  c   U/  �   �/  '   =0  "   e0      �0     �0  1   �0  V   �0     L1  /   l1     �1  �   �1  �   Q2    �2  �   �3     �4     �4  �   �4  �   v5  �   76  W   �6  i   ?7  p   �7  r   8     �8     �8  �   �8  �   :9  [   �9  �   ;:  R   +;  �   ~;  ^   <  �   d<  a   =  �   f=  �   :>  �   �>     x?  z   �?     s@     @     �@  �  �@  �   eB  X   KC  �   �C  {   %D  a  �D  �   F  >   �F  (   G  �   @G  �   H  �   �H  5   (I     ^I     nI  �   �I     EJ  y   `J     �J     �J  S   K  b   \K  �   �K  "  mL  
   �M  �   �M  l   >N  �   �N  S   ~O  �   �O  n   �P  }   �P  6   tQ     �Q  P   �Q     R  �   %R   **ALICE** **BOB** **Contraseña**: alice **Contraseña**: bob **Dominio**: users.democompany.com (o la IP si hemos hecho :ref:`el truco <dnshack>`) **Usuario**: alice **Usuario**: bob 2 extensiones 2 terminales 2 usuarios A diferencia de los Proxies, estos Asterisk no están expuestos al exterior, por lo que en una instalación standalone solo habrá uno y escuchará en 127.0.0.1. A pesar de no ser un dominio, al estar usándose como tal, aparecerá en la sección de **Dominios**: Al seleccionar la marca DemoBrand, el icono cambia y muestra la marca que se está emulando: Antes de pasar a la siguiente sección, es importante entender el concepto de **Emular una marca**: Aparte de ese bloque, también ves los bloques **Configuración de marca** y **Configuración de empresa** que tienen este aspecto: Atención especial al siguiente botón: Bloque 'Configuración de Empresa' Bloque 'Configuración de Marca' Bloque 'Gestión General' Como era de esperar, también tenemos 2 usuarios: Como operador global, tienes acceso al bloque **Gestión general**, que solo ve *God*. Configuración global estándar Configuración personalizada en la instalación Configurar terminales SIP Cualquiera de las 2 IPs públicas configuradas en la instalación servirá para acceder al panel web. Las credenciales por defecto son *admin / changeme*. De hecho, al acceder a la sección **Empresas**, vemos que ya existe una compañía *DemoCompany* que podremos utilizar para cumplir nuestro ansiado objetivo :) Decir exactamente es mucho decir, ya que el operador global ve campos en ciertas secciones del bloque **Configuración de marca** que el operador de marca no ve. e.g. Al editar una empresa *God* ve 'Servidores de media' y 'AS', que el operador de marca no ve. Desde el momento en el que se añade otro Servidor de Aplicación, se intentará contar con él a la hora de repartir la carga. Si éste no responde, se desactivará automáticamente. Dominio SIP de la compañía Dominios SIP El objetivo de este bloque será configurar IvozProvider para realizar llamadas internas, partiendo de la instalación base descrita en la sección anterior. El proceso de emulación de empresa es idéntico al de emulación de marca, con la diferencia de que filtra el bloque 'Configuración de Empresa' en lugar del bloque 'Configuración de Marca'. El proceso de instalación incluye otros valores globales que son iguales en toda instalación de IvozProvider (standalone) y que también se pueden ver desde la interfaz web. El puerto en el que escuchan no se recoge en el campo, ya que siempre será 6060 (UDP). El registro DNS puede ser de tipo A (soportado por todos los hardphones/softphones) o del tipo NAPTR+SRV. El valor mostrado en la sección **Proxy de Salida** reflejará la IP introducida en el proceso de instalación. El valor mostrado en la sección **Proxy de Usuarios** reflejará la IP introducida en el proceso de instalación. Emular la empresa Demo Emular la marca Demo En el proceso de instalación se pregunta al administrador dos direcciones IP, con el fin de arrancar los siguientes 2 procesos: En esta sección haremos referencia a todo lo relativo al rol operador global, configurable en el bloque **Gestión general** del panel web (solo visible para God): En la sección **Dominios** se muestran los dominios SIP que apuntan a las 2 IPs públicas: En la sección **Servidores de Aplicación** se listan las direcciones IP donde escuchan los distintos Asterisk que componen la solución que, tal y como se ha mencionado, escalan horizontalmente para adaptarse a la carga de la plataforma. En una instalación standalone, no obstante, solo existe un grupo de media-relays: Es el proxy SIP expuesto al mundo exterior al que hablarán los Operadores IP con los que el operador de marca decida hacer *peering*. Es el proxy SIP expuesto al mundo exterior al que se registran los terminales de los usuarios. Es fundamental entender este bloque, sin un registro DNS correctamente configurado apuntando a la IP del Proxy de Usuarios, ¡fracasaremos en nuestro objetivo! Es importante entender que este truco solo es válido para la primera empresa de la plataforma ;) Es posible que el usuario y el dominio se nos pida junto, tendremos que introducir alice@users.democompany.com y bob@users.democompany.com, respectivamente (o con la IP si hemos hecho :ref:`el truco <dnshack>`). Esta es una buena señal para el dominio que acabamos de configurar, siempre y cuando en lugar de 10.10.3.10 aparezca la IP pública configurada en :ref:`proxyusers`. Estamos cerca de hacer nuestra primera llamada en nuestro flamente nuevo IvozProvider, solo queda crear 6 cosas dentro de nuestra empresa DemoCompany: Estos 2 valores pueden editarse desde la web, pero siempre tienen que tener la dirección IP a la que escuchan dichos procesos. Estos dominios se utilizan internamente y el servidor de DNS incorporado en la solución los resuelve a las IPs concretas. Extensiones IP de Proxy de Salida IP de Proxy de Usuarios La asignación de grupos de media-relays concretos a empresas concretas permite asignar recursos estáticos a empresas que requieren tener garantizado unos recursos concretos. Pero, lo más útil de este tipo de configuración es que estos **grupos de media-relays pueden estar en ubicaciones geográficas cercanas al emplazamiento de la empresa** (y lejanas al resto de la plataforma) para **reducir las latencias** en sus conversaciones. La dirección que aparece es la dirección del socket de control, no la dirección que se acaba incluyendo en los SDPs de negociación de sesión. Por defecto, este único media-relay utiliza la misma IP que el Proxy de Usuarios. La parte superior derecha de la página también muestra la marca que se está emulando: Llegados a este punto y sin necesidad de tocar nada en este bloque, ya tenemos todo listo para hacer una llamada de Alice a Bob. Lo único que nos falta es disponer de 2 terminales SIP (hardphone, softphone, Android/IOS APP) y configurarlos como sigue: Los media-relays se organizan en grupos con el fin de poder asignar un grupo concreto a una empresa concreta. Cada elemento del grupo tiene una **métrica** que permite repartos de carga desiguales dentro de un mismo grupo (e.g. media-relay1 métrica 1; media-relay2 métrica 2: media-relay2 gestionará el audio del doble de llamadas que media-relay1). Los media-relays son los que mueven el tráfico RTP en una llamada establecida y, al igual que ocurre con los Servidores de Aplicación, permiten un escalado horizontal para adaptarse a la carga de la plataforma. Nada por hacer en esta sección tampoco, ¡vamos a la última! No tengo tiempo para crear registros DNS Para conseguir conseguir que Alice llame a Bob, tendremos que realizar labores de 3 niveles descritos en :ref:`operation_roles`, de ahí la organización del siguiente índice en esos 3 bloques: Para conseguir que esta DemoBrand tenga una compañía con 2 usuarios que se puedan llamar entre sí, vamos a tener que hacer muy poco en este bloque. Pero la primera empresa de la plataforma es especial y puede apoderarse de la IP del Proxy de Usuarios y usarla como si de un DNS se tratara: Por defecto, este grupo solo contiene un media-relay: Proxy de Salida Proxy de Usuarios Que **todo lo que se ve en el bloque 'Configuración de marca' es relativo a esa marca** y es *exactamente* lo mismo que lo que ve el operador de marca cuando entra con sus credenciales de acceso. Realizar llamadas internas Seguimos por tanto en la sección de extensiones, pero se nos han adelantado y ya tenemos 2 extensiones para nuestro uso: Servidores de Media Servidores de aplicación Solo le falta una cosa a esta empresa, marcado con **EDIT** en la captura anterior. Solo se explicita la dirección IP, ya que el puerto siempre será 5060 (5061 para SIP sobre TLS). Tal y como se introdujo en la sección anterior, es **imprescindible** que cada empresa tenga un dominio público que resuelva a la IP configurada para el :ref:`proxyusers`. Tal y como se verá en la sección :ref:`domain_per_company`, cada compañía necesitará un DNS que apunte a la IP del Proxy de Usuarios. Una vez configurado, el dominio aparecerá en esta sección para que el operador global sepa los dominios configurados para cada empresa de un vistazo. Terminales Todo lo contado hasta este punto es verídico: a medida que vayamos creando marcas y éstas vayan creando empresas, cada una de ellas necesitará un registro DNS. Tras configurar los terminales, Alice debería de poder llamar a Bob sin más que marcar 102 en su terminal. Tras la instalación inicial, la plataforma incluye una marca pre-creada llamada DemoBrand, que es la que utilizaremos para el fin que nos ocupa: tener 2 teléfonos registrados y que se puedan llamar entre sí. Tras una instalación inicial existen 2 dominios, uno para queda una de esas 2 IPs: Una vez configurado el dominio (por medio de procedimientos que escapan al objetivo de este documento), bastará con escribir el parámetro en el campo adecuado de nuestra empresa: Una vez emulada la empresa, la parte superior derecha de la pantalla mostrará que vamos por el buen camino :) Una vez guardada la empresa, este dominio aparecerá en la sección descrita :ref:`en la sección anterior <god_sipdomains>`: Una vez pulsado, muestra una ventana flotante tal que: Usuarios Vamos a la sección terminales y... voilà! Ya tenemos 2 terminales pre-creados: ¿Qué implica esta emulación? ¿Se ha insistido suficiente en que sin un registro DNS correctamente configurado apuntando a la IP del Proxy de Usuarios no funcionará nada? Project-Id-Version: IvozProvider 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-13 19:41+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 **ALICE** **BOB** **Contraseña**: alice **Contraseña**: bob **Dominio**: users.democompany.com (o la IP si hemos hecho :ref:`el truco <dnshack>`) **Usuario**: alice **Usuario**: bob 2 extensiones 2 terminales 2 usuarios A diferencia de los Proxies, estos Asterisk no están expuestos al exterior, por lo que en una instalación standalone solo habrá uno y escuchará en 127.0.0.1. A pesar de no ser un dominio, al estar usándose como tal, aparecerá en la sección de **Dominios**: Al seleccionar la marca DemoBrand, el icono cambia y muestra la marca que se está emulando: Antes de pasar a la siguiente sección, es importante entender el concepto de **Emular una marca**: Aparte de ese bloque, también ves los bloques **Configuración de marca** y **Configuración de empresa** que tienen este aspecto: Atención especial al siguiente botón: Bloque 'Configuración de Empresa' Bloque 'Configuración de Marca' Bloque 'Gestión General' Como era de esperar, también tenemos 2 usuarios: Como operador global, tienes acceso al bloque **Gestión general**, que solo ve *God*. Configuración global estándar Configuración personalizada en la instalación Configurar terminales SIP Cualquiera de las 2 IPs públicas configuradas en la instalación servirá para acceder al panel web. Las credenciales por defecto son *admin / changeme*. De hecho, al acceder a la sección **Empresas**, vemos que ya existe una compañía *DemoCompany* que podremos utilizar para cumplir nuestro ansiado objetivo :) Decir exactamente es mucho decir, ya que el operador global ve campos en ciertas secciones del bloque **Configuración de marca** que el operador de marca no ve. e.g. Al editar una empresa *God* ve 'Servidores de media' y 'AS', que el operador de marca no ve. Desde el momento en el que se añade otro Servidor de Aplicación, se intentará contar con él a la hora de repartir la carga. Si éste no responde, se desactivará automáticamente. Dominio SIP de la compañía Dominios SIP El objetivo de este bloque será configurar IvozProvider para realizar llamadas internas, partiendo de la instalación base descrita en la sección anterior. El proceso de emulación de empresa es idéntico al de emulación de marca, con la diferencia de que filtra el bloque 'Configuración de Empresa' en lugar del bloque 'Configuración de Marca'. El proceso de instalación incluye otros valores globales que son iguales en toda instalación de IvozProvider (standalone) y que también se pueden ver desde la interfaz web. El puerto en el que escuchan no se recoge en el campo, ya que siempre será 6060 (UDP). El registro DNS puede ser de tipo A (soportado por todos los hardphones/softphones) o del tipo NAPTR+SRV. El valor mostrado en la sección **Proxy de Salida** reflejará la IP introducida en el proceso de instalación. El valor mostrado en la sección **Proxy de Usuarios** reflejará la IP introducida en el proceso de instalación. Emular la empresa Demo Emular la marca Demo En el proceso de instalación se pregunta al administrador dos direcciones IP, con el fin de arrancar los siguientes 2 procesos: En esta sección haremos referencia a todo lo relativo al rol operador global, configurable en el bloque **Gestión general** del panel web (solo visible para God): En la sección **Dominios** se muestran los dominios SIP que apuntan a las 2 IPs públicas: En la sección **Servidores de Aplicación** se listan las direcciones IP donde escuchan los distintos Asterisk que componen la solución que, tal y como se ha mencionado, escalan horizontalmente para adaptarse a la carga de la plataforma. En una instalación standalone, no obstante, solo existe un grupo de media-relays: Es el proxy SIP expuesto al mundo exterior al que hablarán los Operadores IP con los que el operador de marca decida hacer *peering*. Es el proxy SIP expuesto al mundo exterior al que se registran los terminales de los usuarios. Es fundamental entender este bloque, sin un registro DNS correctamente configurado apuntando a la IP del Proxy de Usuarios, ¡fracasaremos en nuestro objetivo! Es importante entender que este truco solo es válido para la primera empresa de la plataforma ;) Es posible que el usuario y el dominio se nos pida junto, tendremos que introducir alice@users.democompany.com y bob@users.democompany.com, respectivamente (o con la IP si hemos hecho :ref:`el truco <dnshack>`). Esta es una buena señal para el dominio que acabamos de configurar, siempre y cuando en lugar de 10.10.3.10 aparezca la IP pública configurada en :ref:`proxyusers`. Estamos cerca de hacer nuestra primera llamada en nuestro flamente nuevo IvozProvider, solo queda crear 6 cosas dentro de nuestra empresa DemoCompany: Estos 2 valores pueden editarse desde la web, pero siempre tienen que tener la dirección IP a la que escuchan dichos procesos. Estos dominios se utilizan internamente y el servidor de DNS incorporado en la solución los resuelve a las IPs concretas. Extensiones IP de Proxy de Salida IP de Proxy de Usuarios La asignación de grupos de media-relays concretos a empresas concretas permite asignar recursos estáticos a empresas que requieren tener garantizado unos recursos concretos. Pero, lo más útil de este tipo de configuración es que estos **grupos de media-relays pueden estar en ubicaciones geográficas cercanas al emplazamiento de la empresa** (y lejanas al resto de la plataforma) para **reducir las latencias** en sus conversaciones. La dirección que aparece es la dirección del socket de control, no la dirección que se acaba incluyendo en los SDPs de negociación de sesión. Por defecto, este único media-relay utiliza la misma IP que el Proxy de Usuarios. La parte superior derecha de la página también muestra la marca que se está emulando: Llegados a este punto y sin necesidad de tocar nada en este bloque, ya tenemos todo listo para hacer una llamada de Alice a Bob. Lo único que nos falta es disponer de 2 terminales SIP (hardphone, softphone, Android/IOS APP) y configurarlos como sigue: Los media-relays se organizan en grupos con el fin de poder asignar un grupo concreto a una empresa concreta. Cada elemento del grupo tiene una **métrica** que permite repartos de carga desiguales dentro de un mismo grupo (e.g. media-relay1 métrica 1; media-relay2 métrica 2: media-relay2 gestionará el audio del doble de llamadas que media-relay1). Los media-relays son los que mueven el tráfico RTP en una llamada establecida y, al igual que ocurre con los Servidores de Aplicación, permiten un escalado horizontal para adaptarse a la carga de la plataforma. Nada por hacer en esta sección tampoco, ¡vamos a la última! No tengo tiempo para crear registros DNS Para conseguir conseguir que Alice llame a Bob, tendremos que realizar labores de 3 niveles descritos en :ref:`operation_roles`, de ahí la organización del siguiente índice en esos 3 bloques: Para conseguir que esta DemoBrand tenga una compañía con 2 usuarios que se puedan llamar entre sí, vamos a tener que hacer muy poco en este bloque. Pero la primera empresa de la plataforma es especial y puede apoderarse de la IP del Proxy de Usuarios y usarla como si de un DNS se tratara: Por defecto, este grupo solo contiene un media-relay: Proxy de Salida Proxy de Usuarios Que **todo lo que se ve en el bloque 'Configuración de marca' es relativo a esa marca** y es *exactamente* lo mismo que lo que ve el operador de marca cuando entra con sus credenciales de acceso. Realizar llamadas internas Seguimos por tanto en la sección de extensiones, pero se nos han adelantado y ya tenemos 2 extensiones para nuestro uso: Servidores de Media Servidores de aplicación Solo le falta una cosa a esta empresa, marcado con **EDIT** en la captura anterior. Solo se explicita la dirección IP, ya que el puerto siempre será 5060 (5061 para SIP sobre TLS). Tal y como se introdujo en la sección anterior, es **imprescindible** que cada empresa tenga un dominio público que resuelva a la IP configurada para el :ref:`proxyusers`. Tal y como se verá en la sección :ref:`domain_per_company`, cada compañía necesitará un DNS que apunte a la IP del Proxy de Usuarios. Una vez configurado, el dominio aparecerá en esta sección para que el operador global sepa los dominios configurados para cada empresa de un vistazo. Terminales Todo lo contado hasta este punto es verídico: a medida que vayamos creando marcas y éstas vayan creando empresas, cada una de ellas necesitará un registro DNS. Tras configurar los terminales, Alice debería de poder llamar a Bob sin más que marcar 102 en su terminal. Tras la instalación inicial, la plataforma incluye una marca pre-creada llamada DemoBrand, que es la que utilizaremos para el fin que nos ocupa: tener 2 teléfonos registrados y que se puedan llamar entre sí. Tras una instalación inicial existen 2 dominios, uno para queda una de esas 2 IPs: Una vez configurado el dominio (por medio de procedimientos que escapan al objetivo de este documento), bastará con escribir el parámetro en el campo adecuado de nuestra empresa: Una vez emulada la empresa, la parte superior derecha de la pantalla mostrará que vamos por el buen camino :) Una vez guardada la empresa, este dominio aparecerá en la sección descrita :ref:`en la sección anterior <god_sipdomains>`: Una vez pulsado, muestra una ventana flotante tal que: Usuarios Vamos a la sección terminales y... voilà! Ya tenemos 2 terminales pre-creados: ¿Qué implica esta emulación? ¿Se ha insistido suficiente en que sin un registro DNS correctamente configurado apuntando a la IP del Proxy de Usuarios no funcionará nada? 