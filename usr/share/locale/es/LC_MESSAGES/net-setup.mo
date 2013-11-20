## Some rules used:
#- All localization variables start with L_
#- The (possible) second part is all-caps and indicates the type of widget etc.
#- The rest gives a rough description of what the message is (content/location)
#- They appear in the order in which they exist in the script -- not running order
#  +(except for the general ones that are used in different places)
#- Hard quotes ('') should be kept when used and variables ($INTERFACE) not touched

# update: Mar. 19th '09: expanded the "function: giveNoWPADialog" section
# update: Mar. 29th: add "function: waitForPCMCIA" section

##  The command to use with the "help" button ("net_setup" can be changed for a 
##+ different help file, eg. "net_setup.de", for a file /usr/share/doc/net_setup.de.htm)
HELP_COMMAND="man 'net_setup'"

############### General text ###############
L_TITLE_Puppy_Network_Wizard="Asistente de Redes de Puppy"
L_TITLE_Network_Wizard="Asistente de Redes"
L_TITLE_Netwiz_Static_IP="Asistente de Redes Puppy: IP Estática"
L_BUTTON_Exit="Salir"
L_BUTTON_Save="Guardar"
L_BUTTON_Load="Cargar"
L_BUTTON_Unload="Descargar"
L_BUTTON_Back="Regresar"
L_BUTTON_Blacklist="Lista Negra"
L_BUTTON_No="No"

############### end General text ###############



############### net-setup.sh ###############
# function: refreshMainWindowInfo
L_LABEL_Interface_Tree_Header="Interface|Tipo|Módulo|Descripción del Dispositivo"

L_ECHO_No_Interfaces_Message="Puppy no puede ver ninguna interface de red activa.

Si tiene mas de un adaptador de red (interfaces) en la PC y desea usarlos, then driver modules will have to be loaded. This is supposed to be autodetected and the correct driver loaded when Puppy boots up, but it hasn't happened in this case. Never mind, you can do it manually!"
L_ECHO_One_Interface_Message="Puppy ha identificado las siguientes interfaces de red en tu computador, pero necesita ser configurada.
Para probar o configurarla, haga click en ese botón."
L_ECHO_Multiple_Interfaces_Message="Puppy ha identificado las siguientes interfaces de red en tu computador, pero necesita ser configurada.
Para probar o configurarla, haga click en ese botón."

# function: buildMainWindow
L_FRAME_Interfaces="Interfaces"
L_FRAME_Network_Modules="Módulos de Red"

# function: showLoadModuleWindow
L_TITLE_Load_Network_Module="Cargar un módulo de red"
L_NOTEBOOK_Modules_Header="Seleccionar módulo|Ndiswrapper|Más"

L_TEXT_Select_Module_Tab="Si usted mira un módulo a continuación que coincida con el hardware (y no se carga aún ...), seleccionelo y pulse el botón 'Cargar'.
Si no es (o no está seguro), vaya a la pestaña 'Más'."
L_LABEL_Module_Tree_Header="Módulo|Tipo|Descripción"

L_TEXT_Ndiswrapper_Tab="<b>Ndiswrapper</b> es un mecanismo que 'envuelve' un controlador Windows y permite usarlo bajo Linux.

Para usarlo, todo lo que necesita hacer es conocer la ubicación del archivo de información del conductor (.INF) para el controlador de Windows (normalmente en el directorio del controlador de la instalación de Windows ...).

Tenga en cuenta que Ndiswrapper <b>no</b> trabaja con controladores Windows Vista.
"
L_BUTTON_Use_Ndiswrapper="Use Ndiswrapper"

L_TEXT_More_Tab="Haga click en <b>Específicar</b> para elegir un módulo que no está en la lista, o especificar un módulo seguido de parámetros (que podría ser obligatorio para las tarjetas ISA, ver ejemplos a continuación).
Haga click en <b>Descargar</b> para descargar un módulo cargado actualmente (para que luego se puede cargar uno alternativo).
Haga click en <b>Auto-probar</b> para tratar cargando TODOS los módulos en la lista.

Ejemplo1: ne io=0x000, 
Ejemplo2: arlan  io=0x300 irq=11
(Ejemplo1 funciona para la mayoría de tarjetas ISA y hace algunos autopruebas de io e irq)"
L_BUTTON_Specify="Especificar"
L_BUTTON_Autoprobe="Auto-probar"

L_TOPMSG_Load_Module_None_Selected="INFORME SOBRE LA CARGA DEL MÓDULO: ningún módulo fue seleccionado"
L_TOPMSG_Load_Module_Cancel="INFORME SOBRE LA CARGA DEL MÓDULO: no se ha cargado ningún módulo"

L_MESSAGE_One_New_Interface="Se encontrarón las siguientes nuevas interfaces"
L_MESSAGE_Multiple_New_Interfaces="Las siguientes nuevas interfaces fueron encontradas"

L_FRAME_New_Interfaces="Interfaces Nuevas"
L_LABEL_New_Interfaces_Tree_Header="Interface|Tipo|Módulo|Descripción del Dispositivo"
L_TEXT_New_Interfaces_p1="Haga click en el botón 'Guardar' para guardar la selección, que Puppy automaticamente cargará"
L_TEXT_New_Interfaces_p2="en el arranque.
\\Haga click en Cancelar para regresar y configurar la interface."

L_TEXT_No_New_Interfaces1="No se detectaron nuevas interfaces."
L_TEXT_No_New_Interfaces2="Haga click en el botón 'Descargar' para descargar el módulo nuevo y probar cargando otro."

L_TITLE_New_Module_Loaded="Módulos nuevos cargados"
L_TEXT_New_Module_Loaded="El siguiente módulo nuevo ha sido cargado:"

L_TOPMSG_New_Module_Save="Información de nuevos módulos guardado"
L_TOPMSG_New_Module_Unload="Nuevos módulos descargados"
L_TOPMSG_New_Module_Cancelled="Cancelado"

L_TOPMSG_Load_Module_None_Loaded="INFORME SOBRE LA CARGA DEL MÓDULO: no se ha cargado ningún módulo"

# function: tryLoadModule
L_TITLE_Netwiz_Hardware="Asistente de Redes de Puppy: hardware"
L_MESSAGE_Driver_Loaded="El controlador ya esta cargado.\nEso no significa que funcionará realmente bien!\nDespués de hacer clic en Aceptar, se verá una nueva interfaz\nque se ha detectado."
L_MESSAGE_Driver_Success_p1="Módulo"
L_MESSAGE_Driver_Success_p2="se ha cargado exitosamente.
No significa que vaya a trabajar bien!
Después de hacer clic en Aceptar, verá si una nueva interface
fue detectada."

L_MESSAGE_Driver_Failed_p1="Cargando "
L_MESSAGE_Driver_Failed_p2="falló con el siguiente mensaje:
"
L_MESSAGE_Driver_Failed_p3="Quiza deba probar con un controlador diferente.
"

# function: giveAcxDialog
L_TEXT_Acx_Module_p1="La interface que usted seleccionó usa el módulo"
L_TEXT_Acx_Module_p2="
Descarge este módulo si sabe que causa que el sistema se vuelva inestable y Ndiswrapper lo más probable es que no funcione.

Se recomienda mandar a la lista negra el módulo y reiniciar el sistema, a continuación, Ndiswrapper se puede utilizar sin temor.

¿Le gustaría mandar a la lista negra el módulo, por lo que todo lo que tiene que hacer es reiniciar el sistema, o va a atreverse y tratar de descargarlo?
"

# function: askWhichInterfaceForNdiswrapper
L_TEXT_Ask_Which_Interface_For_Ndiswrapper="<b>Una cosa mas antes de usar Ndiswrapper:</b>
La tarjeta de red sólo se puede utilizar con un controlador a la vez. Esto significa que si ya existe un controlador úselo (es decir, había una interfaz correspondiente en el cuadro de diálogo principal), tendremos que descargar el controlador antes de que podamos usar Ndiswrapper.

Para ello, sólo tiene que pulsar el botón correspondiente de la interfaz correspondiente. Si no coincide con la interfaz de hardware, pulse 'ninguno'.
"
L_BUTTON_None="ninguno"

L_MESSAGE_Remove_Module_Failed_p1="Error!
Falló al cargar módulo"
L_MESSAGE_Remove_Module_Failed_p2="
Fue devuelto siguiente error:"

# function: loadNdiswrapperModule
L_MESSAGE_Blacklist_Nativemod_p1="El módulo"
L_MESSAGE_Blacklist_Nativemod_p2="fue previamente cargado y tenía
que ser removido para que ndiswrapper trabajara.
Te gustaría tener este módulo añadido a la lista
de los módulos de la lista negra, por lo que no
cargará al arrancar?
Tenga en cuenta, que puede ser modificado posteriormente, mediante la ejecución del
BootManager (véase el menú del sistema)"

# function: loadSpecificModule
L_TITLE_Load_A_Module="Cargar un Módulo"
L_TEXT_Load_A_Module="Por favor escriba el nombre de un módulo específico para cargar
(parámetros adicionales permitidos, pero no escriba caracteres tab)."

# function: autoLoadModule
L_MESSAGE_Success_Loading_Module_p1="Éxito de la carga del"
L_MESSAGE_Success_Loading_Module_p2="módulo. Eso no significa que funcionará realmente bien!
Después de hacer clic en Aceptar, de nuevo en la ventana principal, si usted verá una nueva interfaz activa
proceda a configurarlo.

NOTA: es posible que un módulo cargue bien, pero en golpe falso, es decir, que
en realidad no funciona con el adaptador de red. En ese caso, intente autoprueba de nuevo.
Este script recordará los intentos anteriores (hasta que salga de este script) y se
saltar sobre ellos.
Si usted tiene golpes falsos, háganoslo saber acerca de ello en el Foro de Discusión de Puppy!"

L_MESSAGE_No_Module_Loaded="Ningún módulo cargado correctamente.

Tenga en cuenta sin embargo, que estos módulos ya están cargados:"

# function: offerToBlacklistModule
L_TEXT_Blacklist_Module_p1="Módulo"
L_TEXT_Blacklist_Module_p2="removido con éxito.

Le gustaría mandarlo a la lista negra, por lo que en 
el futuro no se cargará durante el arranque?
"

# function: unloadSpecificModule
L_MESSAGE_No_Loaded_Items="Error!
Parece que no hay módulos de red cargados actualmente...
"

L_TITLE_Unload_A_Module="Descargar un Módulo"
L_TEXT_Unload_A_Module="Por favor, seleccione el módulo que
desea descargar y pulse 'Descargar'..."
L_COMBO_Module="Module:"

# function: findLoadedModules
L_PROGRESS_Checking_Loaded_Modules="Revisando módulos cargados"

# function: testInterface
L_MESSAGE_Failed_Raise_Interface_p1="Error!
No se ha podido subir la interfaz"
L_MESSAGE_Failed_Raise_Interface_p2="Error de comando era:"
L_MESSAGE_Failed_Raise_Interface_p3="Error devuelto fue:"

L_PROGRESS_Testing_Interface="Probando Interface"

L_TOPMSG_Report_On_Test='REPORTE EN PRUEBA DE $INTERFACE CONEXION:'
L_TOPMSG_Unplugged_Wireless="'No se puede conectar a una red inalámbrica'
Compruebe que la red Wi-Fi esta habilitada y
que nos ha proporcionado los parámetros inalámbricos correctos."
L_TOPMSG_Unplugged_Wired="'No se puede conectar a la red'
Compruebe que la red está disponible y
que el cable Ethernet está conectado.."
L_TOPMSG_Network_Alive="'Puppy fue capaz de encontrar una red viva'
Puede proceder a adquirir una dirección IP."

# function: showConfigureInterfaceWindow
L_TOPMSG_Configuration_Cancelled='CONFIGURACION DE RED DE $INTERFACE CANCELADA!'
L_BUTTON_Done="Hecho"

L_TOPMSG_Configuration_Unsuccessful='CONFIGURACION DE RED DE $INTERFACE INFRUCTUOSO!'
L_TOPMSG_Configuration_Offer_Try_Again="Inténtelo de nuevo, haga clic en 'Volver' para tratar una interfaz diferente o haga clic en 'Hecho' para renunciar por el momento."
L_TOPMSG_Configuration_Successful='CONFIGURACION DE RED DE $INTERFACE EXITOSA!'
L_TOPMSG_Configuration_Offer_To_Save="
Desea guardar esta configuración?

Si desea guardar esta configuración para el siguiente arranque: haga click en 'Aceptar'.
Si solo desea usar esta configuracion en esta sesión: haga click en 'Cancelar'."
L_TOPMSG_Configuration_Offer_To_Finish="
Si no hay más interfaces para instalar y configurar, simplemente haga clic en 'Hecho' para salir."
L_TOPMSG_Configuration_Not_Saved="La configuración no fue guardada para el siguiente arranque.

Si no hay más interfaces para instalar y configurar, simplemente haga clic en 'Hecho' para salir."

# function: buildConfigureInterfaceWindow
L_TITLE_Configure_Interface='Configurar interface de red $INTERFACE'
L_FRAME_Test_Interface="Probar interface"
L_BUTTON_Test_Interface='Probar $INTERFACE'
L_FRAME_Configure_Interface="Configurar interface"
L_BUTTON_Auto_DHCP="Auto DHCP"
L_BUTTON_Static_IP="IP Estática"

# function: initializeConfigureInterfaceWindow
L_TOPMSG_Initial_Lets_try="OK, tratemos de configurar"
L_TESTMSG_Initial_p1="Puedes probar si"
L_TESTMSG_Initial_p2="está conectado a una red 'viva'.
Después de confirmar eso, puede configurar la interfaz."
L_DHCPMSG_Initial="La forma más fácil de configurar la red es mediante un servidor DHCP (por lo general proporcionado por la red). Esto permitirá habilitar a Puppy consultar el servidor en el arranque y automáticamente se le asigna una dirección IP. El programa demonio 'dhcpcd' es lanzado y el acceso a red sucede automaticamente."
L_STATICMSG_Initial="Si un servidor DHCP no está disponible, usted tendrá que hacer todo manualmente mediante el establecimiento de una dirección IP estática, pero este script hará que sea fácil."

L_FRAME_Configure_Wireless="Configurar redes inalambricas"
L_TEXT_Configure_Wireless_p1="Puppy encontró que"
L_TEXT_Configure_Wireless_p2="es una interface activa.
Para conectarse a una red inalámbrica, debe configurar primero los parámetros de red inalámbrica, haga clic en el boton 'Inalambrico', a continuación, asignar una dirección IP a la misma, ya sea con DHCP o IP estático (véase más adelante)."
L_BUTTON_Wireless="Inalambrico"

# function: configureWireless
L_TOPMSG_Wireless_Config_Failed_p1="CONFIGURACIÓN INALÁMBRICA DE"
L_TOPMSG_Wireless_Config_Failed_p2="FALLO!
Es posible que desee intentar usar un perfil diferente. "
L_TOPMSG_Wireless_Config_Cancelled_p1="CONFIGURACIÓN INALÁMBRICA DE"
L_TOPMSG_Wireless_Config_Cancelled_p2="CANCELADA!
Para conectarse a una red inalámbrica tu tienes que tiene que seleccionar el perfil que desea utilizar. "

# function: buildStaticIPWindow
L_TITLE_Set_Static_IP="Configurar IP estática"
L_TEXT_Set_Static_IP="Por favor introduzca sus parámetros de IP estática:
- Si utiliza un router, compruebe su página de estado para estos valores. 
- Si se conecta directamente al módem, necesitará
para obtener estos valores de su ISP.
(Para conectar directamente dos computadoras: ajuste todos, pero la IP y
Máscara de red en 0.0.0.0)

Utilice sólo el formato decimal con puntos quad (xxx.xxx.xxx.xxx).
No se reconocerán otros formatos.
"
L_FRAME_Static_IP_Parameters="Parámetros IP estáticas"
L_ENTRY_IP_Address="Dirección IP:"
L_ENTRY_Net_Mask="Mascara de Red:"
L_ENTRY_Gateway="Compuerta:"
L_FRAME_DNS_Parameters="Parámetros DNS"
L_ENTRY_DNS_Primary="Primario:"
L_ENTRY_DNS_Secondary="Secundario:"

# function: validateStaticIP
L_ERROR_Invalid_IP="Dirección IP no válida"
L_ERROR_Invalid_Netmask="Máscara de red no válido"
L_ERROR_Invalid_Gateway="Dirección de puerta de enlace no válido"
L_ERROR_Invalid_DNS1="Direccion del servidor DNS 1 no valido"
L_ERROR_Invalid_DNS2="Direccion del servidor DNS 2 no valido"

L_MESSAGE_Bad_addresses="Error!
Algunas de las direcciones indicadas no son válidas."

L_MESSAGE_Bad_Netmask="WARNING:
Su máscara de red no se corresponde con la clase de dirección de red.

Esta seguro que es correcto?"

L_MESSAGE_Bad_Gateway_p1="Error!
la puerta de enlace"
L_MESSAGE_Bad_Gateway_p2="no esta en la red.
(Es posible que haya entrado en su dirección, puerta de enlace o la máscara de red incorrecta.)
"

# function: setupStaticIP
L_MESSAGE_Route_Set='Establecer ruta por defecto a través de $GATEWAY.'
L_MESSAGE_Route_Failed_p1="Error!
No se pudo establecer ruta por defecto a través de"
L_MESSAGE_Route_Failed_p2="Tenga en cuenta que Puppy ha intentado hacer esto:"
L_MESSAGE_Route_Failed_p3="y recibió el siguiente mensaje de error:"

L_MESSAGE_Ifconfig_Failed_p1="Error! Configuración de interfaz falló.

Puppy sólo ha tratado de hacer esto:"
L_MESSAGE_Ifconfig_Failed_p2="y recibió el siguiente mensaje de error:"
L_MESSAGE_Ifconfig_Failed_p3="
Si usted piensa que esto es incorrecto para su sistema
y se puede llegar a algo más que trabaja,
por favor, publicarlo en el foro, para que podamos mejorar el asistente."

# function: saveNewModule
L_TOPMSG_Module_Saved_p1="MODULO"
L_TOPMSG_Module_Saved_p2="REGISTRADO EN /etc/ethernetmodules
Puppy leerá esto al arrancar."

# function: unloadNewModule
L_TOPMSG_Module_Unloaded_p1="MODULO"
L_TOPMSG_Module_Unloaded_p2="DESCARGADO.
Also,"
L_TOPMSG_Module_Unloaded_p3="removido desde /etc/ethernetmodules (si estaba ahi)."

# function: setDefaultMODULEBUTTONS
L_TEXT_Default_Module_Buttons="Si aparece el módulo controlador para un adaptador de red y no está cargado, o si desea uno diferente (por ejemplo, un controlador de Windows con Ndiswrapper), haga clic en el botón 'Cargar módulo'."
L_BUTTON_Load_Module="Cargar módulo"

# function: findInterfaceInfo
L_INTTYPE_Wireless="Inalambrico"
L_INTTYPE_Ethernet="Ethernet"
L_INFO_Eth_Firewire="Ethernet a través de firewire"

L_TOPMSG_Initial="Hola, las redes no siempre es fácil de configurar, pero vamos a darle una oportunidad!"

############### end net-setup.sh ###############


############### wag-profiles.sh ###############
L_FRAME_Progress="Progreso"
L_BUTTON_Abort="Abortar"
L_BUTTON_Retry="Reintentar"

# function: setupDHCP
L_TEXT_Dhcpcd_Progress='Conectando al servidor DHCP... tiempo de espera es de $MAX_TIME segundos.'

# function: giveNoWPADialog
L_TEXT_No_Wpa_p1="Nota: La interfaz ha seleccionado utiliza el "
L_TEXT_No_Wpa_p2=" El módulo, que no está incluido en nuestra lista de los módulos de soporte de encriptación WPA.."
L_BUTTON_Add_WPA="Añadir a la lista"
L_TEXT_No_Wpa_Ask="Sin embargo, si sabe que es hecho que <i>soporta</i> WPA, o desea probar que lo hace (la única diferencia es que se ofrecen más opciones en el cuadro de diálogo de configuración ...), haga click en el botón '$L_BUTTON_Add_WPA'. Esto agregará el módulo al archivo de configuración para usos futuros."
L_TEXT_Wpa_Add_p1="Los siguientes detalles serán agregados al archivo de configuración, "
L_TEXT_Wpa_Add_p2="."
L_ENTRY_Wpa_Add_Module="Módulo:"
L_ENTRY_Wpa_Add_WEXT="Controlador wpa_supplicant:"

# function: buildProfilesWindow
L_TEXT_Profiles_Window="Por favor, seleccione un perfil de red que desea utilizar.
Para crear un nuevo perfil, comience por un escaneo de 
redes y seleccione el que desea configurar. 
Creación de perfiles nuevos deben ser <b>guardados</b> con el fin de ser utilizados."
L_BUTTON_Scan="Escanear"
L_FRAME_Load_Existing_Profile="Cargar un perfil existente"
L_TEXT_Select_Profile="Seleccione un perfil para cargar:"
L_FRAME_Edit_Profile="Editar perfil"
L_TEXT_Encryption="Encriptación:    "
L_BUTTON_Open="Abrir"
L_TEXT_Profile_Nmae="Nombre del
Perfil:   "
L_TEXT_Essid="ESSID:    "
L_TEXT_Mode="Modo:"
L_CHECKBOX_Managed="administrado"
L_CHECKBOX_Adhoc="Ad-hoc "
L_TEXT_Security="Seguridad: "
L_CHECKBOX_Open="Abrir"
L_CHECKBOX_Restricted="Restringido"
L_BUTTON_Delete="Borrar"
L_BUTTON_Use_Profile="Use este perfil"
L_BUTTON_New_Profile="Nuevo Perfil"

# function: setWepFields
L_TEXT_Key="Contraseña:"

# function: setWpaFields
L_TEXT_AP_Scan="Escaneo AP:"
L_CHECKBOX_Hidden_SSID="SSID Oculto"
L_CHECKBOX_Broadcast_SSID="Broadcast SSID"
L_CHECKBOX_Driver="Controlador"
L_TEXT_Shared_Key="Contraseña compartida:"

# function: setAdvancedFields
L_LABEL_Advanced="Avanzado"
L_LABEL_Basic="Basico"
L_TEXT_Frequency="Frequencia:"
L_TEXT_Channel="Canal:"
L_TEXT_AP_MAC="Punto de Acceso
     MAC:"

# function: saveProfiles
L_MESSAGE_Bad_Profile="Error!
El perfil no tenía una red asociada a ella.
Debe ejecutar una exploración inalámbrica y seleccionar una
red, a continuación, crear un perfil para ello. "

# function: getWpaPSK
L_MESSAGE_Bad_PSK="Error!
falló contraseña wpa para generar su clave psk
y SSID!
Por favor, informe esto en el foro, para que
podamos tratar de encontrar el problema.
"

# function: cleanUpInterface
L_MESSAGE_Failed_To_Raise_p1="Error!
No se ha podido plantear la interfaz "
L_MESSAGE_Failed_To_Raise_p2=".
Error de comando era:"
L_MESSAGE_Failed_To_Raise_p3="Error devuelto fue:"

# function: useIwconfig / useWlanctl
L_MESSAGE_Configuring_Interface_p1="Configurando interface "
L_MESSAGE_Configuring_Interface_p2=" 
a la red "

# function: validateWpaAuthentication
L_ECHO_Status_p1="Time: "
L_ECHO_Status_p2="	Status: "

# function: useWpaSupplicant
L_MESSAGE_No_Wpaconfig_p1="Error!
No se pudo encontrar el archivo de configuración de wpa_supplicant:"
L_MESSAGE_No_Wpaconfig_p2="
Recuerde que debe guardar el perfil antes de poder usarlo!"

L_TEXT_WPA_Progress_p1="Adquiriendo "
L_TEXT_WPA_Progress_p2=" conexión desde "
L_TEXT_WPA_Progress_p3="...(30 sec. tiempo estimado)"

L_ECHO_Starting="Iniciando"
L_ECHO_Initializing_Wpa="Inicializando wpa_supplicant"

L_MESSAGE_WPA_Failed="No se puede establecer conexión WPA"
L_BUTTON_Details="Detalles"

L_FRAME_Connection_Info="Info de conexión"
L_FRAME_wpa_cli_Outeput="salida del "
L_BUTTON_Refresh="Refrescar"

# function: waitForPCMCIA
L_PROGRESS_Waiting_For_PCMCIA="Esperando dispositivo pcmcia para resolver"

# function: showScanWindow
L_PROGRESS_Scanning_Wireless="Escaneo de las redes inalámbricas"

# function: buildScanWindow
L_SCANWINDOW_Encryption="Encriptación:"
L_SCANWINDOW_Channel="Canal:"
L_SCANWINDOW_Frequency="Frecuencia:"
L_SCANWINDOW_AP_MAC="AP MAC:"
L_SCANWINDOW_Strength="intensidad:"

L_TEXT_Scanwindow="Seleccione una de las redes disponibles
Mueve el ratón por encima para ver más detalles."

# function: createNoNetworksDialog
L_TEXT_No_Networks_Detected="No se detectaron redes.

Quiza tu router esta apagado?
Tal vez hay un interruptor de conexión inalámbrica en su portátil
que necesita ser activado?"

# function: createRetryScanDialog
L_TEXT_No_Networks_Retry=" No se detectaron redes. 
¿Te gustaría probar y analizar de nuevo?
"

# function: createRetryPCMCIAScanDialog
L_TEXT_No_Networks_Retry_Pcmcia="No se detectaron redes.
Sin embargo, parece que el uso de un dispositivo PCMCIA,
que pueden requerir reajuste para escanear
¿Desea restablecer la tarjeta y vuelva a escanear?
"

# function: buildPrismScanWindow (many used from buildScanWindow above)
L_SCANWINDOW_Hidden_SSID="(SSID oculta)"
L_TEXT_Prism_Scan="Seleccione una de las redes disponibles
Mueve el ratón por encima para ver más detalles."

# function: setupScannedProfile
L_TEXT_Provide_Key="Proporcionar una clave"

############### end wag-profiles.sh ###############



############### ndiswrapperGUI.sh ###############
L_TITLE_Netwiz_Ndiswrapper="Asistente de redes de Puppy: Ndiswrapper"
L_TEXT_Ndiswrapper_Chooser="Por favor, seleccione el archivo de información del controlador (.INF)."

L_MESSAGE_Bad_Inf_Name="
Error!
El nombre del archivo debe terminar en .inf
Por favor intente de nuevo.
"

############### end ndiswrapperGUI.sh ###############


############### rc.network ###############
L_TITLE_Success="Exito"
L_MESSAGE_Success="Exito"
L_TITLE_Failure="Fallo"
L_MESSGAE_Failed="Fallo"

L_MESSAGE_Failed_To_Connect="
   No se pudo conectar a ninguna red.
   Si aún no ha configurado las interfaces de red,
   debe hacerlo con el Asistente de red.
   (mensajes de depuración se pueden encontrar en /tmp/network-connect.log)"

############### end rc.network ###############
