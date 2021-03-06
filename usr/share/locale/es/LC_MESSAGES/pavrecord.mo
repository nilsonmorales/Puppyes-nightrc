��    o      �  �         `	  �  a	  �  �  J  �  	  �  g  �    W  	  _    i  �  k     5     Q  3   T  H  �  #   �     �  =     E   S     �  �   �  Z   `  b   �  
         )  �   J  M   �     *   	   <   B   F   9   �      �      �      �      �      �      !  5   !  $   M!     r!     �!  -   �!  2   �!  j   �!     Y"  @   `"  6   �"     �"     �"  
   #     #      #     4#     J#  "   ^#     �#     �#     �#     �#  #   �#     �#     $     !$  	   9$  A   C$  i   �$  
   �$     �$     %  &   '%  .   N%  .   }%  &   �%     �%  (   �%     &  N   &     m&     r&     w&     &     �&     �&  2   �&  -   �&     '     '  3   '     H'  3   \'  h   �'  m   �'  n   g(     �(     �(     )     )  W   ))     �)  +   �)  ,   �)  ,   �)  !   *  !   0*     R*     q*  $   �*  &   �*     �*     �*     �*     �*  <  �*  �  <,  	  5/  �  ?2  a  ?5  �  �6  E  m8  T  �9  \  <  >  e?  "   �A     �A  7   �A  �  B  /   �C  "   �C  J   D  W   MD  ,   �D  �   �D  l   �E  y   F  
   �F  -   �F  �   �F  \   }G     �G  
   �G  M   �G  @   HH     �H     �H     �H     �H     �H     �H  ?   �H  +    I     LI     cI  8   iI  ?   �I  k   �I     NJ  T   UJ  >   �J  '   �J  #   K     5K     FK     WK     sK     �K  8   �K     �K     L     	L      L  5   4L     jL  !   �L  %   �L     �L  \   �L  |   @M     �M     �M  #   �M  0   N  3   =N  3   qN  0   �N     �N  '   �N     O  T   O     sO     xO     ~O     �O     �O      �O  @   �O  1   �O     %P     -P  =   :P     xP  7   �P  �   �P  x   QQ  w   �Q     BR  "   YR     |R     �R  e   �R     S  H   S  K   bS  J   �S  /   �S  /   )T  &   YT  #   �T  /   �T  5   �T      
U     +U     2U     :U           
   >              5           N   G      g   I          ?   8   W          (       ^   i   )   6   c   R      !   \       A   ]   	   o          U                       O   L      d          Q   =   Z       P   3          _   D       n           k   b   J   '           l   ,       :   E              "   #          ;             .   F      h   `   H   7       X   &             9   a       /   $   K       <   V   M   %      1   +   0                  m   @      e                     2   Y         B   4       [   j   T      C   S      f   -          *    

2. For Microphone recording, you should also activate 'Mic' as the capture device (if using alsamixer use space bar to activate).

3. You should turn up the amplitude setting of the 'Capture' (to around maximum), but be careful you do not unwittingly turn up the Playback Mic volume (which you should inactivate) rather than the Capture one, or you may end up recording sound fed back to your mic from your blaring speakers! If using alsamixer, pressing the Tab key such that you come to the alsamixer Capture window, before setting capture devices, may help you to avoid unnecessarily increasing the playback amplitude controls rather than the record ones.
 

4. As an alternative to recording from the microphone, you could select some other device to capture from (e.g. Line in). If you select 'Mix' (or perhaps 'Mono Mix' as the capture device; depending on what your sound card provides) you can record most anything passing through your sound card (for example: streaming radio as in 01micko pupRadio program).

5. For playback to work you need to activate and turn up PCM and your Master volume control.

6. You will be able to see from the running VU display window if, and when, you have your sound controls correctly set up (but turn off the VU display before actually recording or you will end up with a blank recording!).
 

Commandline Arguments:

rec target_directory outfile [duration] : record to outfile.
pauserec : pause/continue recording (toggle).  
stoprec target_directory outfile : stop recording.
play target_directory infile [duration] : play infile.
pauseplay : pause/continue playback (toggle).
stopplay : stop playback.
quit : clean up all and quit program.
--help : this brief usage help.
-? : this brief usage help.
- : read arguments from stdin (e.g. pipe)

Note that pavrecord automatically keeps
track of the running process IDs.

If no options are entered the pAVrecord GUI
will start.\n 

Playback: 

1. For Playback, you need to turn up the PCM device volume and at least the Master device volume. Note that key 'M' is also used to Mute devices.
-----
Tips:

To keep pAVrecord as the top window, right-click on its window bar, and select 
Layer -> Top 
-----
Section B: Setting up pAVrecord Example:

Select Advanced (big) User Interface.

Select Target Directory: /root

Select Record Duration: 0 for unlimited.
Also set Play Duration to 0.

Enter Audio sync offset (seconds): 1.2

In AUDIO RECORD CONFIGURATION:

Select: mp3, cbr, bitrate 32k

In VIDEO RECORD CONFIGURATION:

Select video encoder: MPEG-4/10

 
-----
Section C: Pscheduler:

If Pscheduler is available, you can Add (or Edit) Task(s) of the form 

  pavrecord rec outfile.avi [duration]

to schedule when a recording session should start.

You can schedule any of the commands described by: pavrecord --help
 
-----
Section D: Alsa setup

Recording:

1. For louder microphone recordings: 

   Press MIXER button to bring up audio mixer and the VU meter. Activate Mic boost. Using it greatly boosts your microphone sound recording level.
   
   If using alsamixer to do this, use the cursor keys, move far over to the right hand side of the alsamixer window, and keep going right (often off the edge of the window). Around that location you may (or should?) find the 'Mic Boost' control (keyboard key 'M' toggles its activation).

 
Enter:
inRate(fps) 30, 
vINPUTFORMAT video4linux2,
vDEVICE /dev/video0 (if that is your video device),
vWidth 320, vHEIGHT 240.
Leave ffmpeg extra v o/p options blank
       
Select container for combined A and V track: avi

For Combine AV auto, select as true. 
For Combine AV del, select as false. 
Note that the alternative true for checkbox del causes the separate A and V tracks to be automatically deleted after the final combined AV is produced.

Press Record button to record the A and V tracks (which, with above setting, are auto-combined into final avi container once Record Stop button is pressed). 

Three files are saved: the date-stamped video track, the date-stamped audio track and the combined AV video whose name begins pAV followed by date stamp.

 -----
To view/hear result:

Method 1: Use button -> to transfer the file name to the play side and press Play button. This method plays the individual video and audio tracks in parallel (allowing you to adjust the Audio sync offset).

Method 2: If audio sync offset set up is already fine, you can simply press the AV Play button (next to Combine AV area) to play final combined AV video in your system video player (assuming Combine AV auto was selected).
 AUDIO RECORD CONFIGURATION: AV Advanced User Interface and pAVrecord configuration After you have configure pavrecord 
via the GUI, you can also control it
from the commandline using:

pavrecord [option] [path to file] [file] [duration]

where [duration] is a time limit for the record
capture or play process:
 
0 means no time limit;
entering no duration results in use of
duration pre-configured for record.
 Audio sync offset and play duration Audio/Video recorder and player Browse and select the target directory for the file to record Browse and select the target directory for the file to record or play Browse for SOURCE File to play Browse, drag and drop, copy and paste, or type name (including path) of the video file to play. Note that, if available, the associated sound track will also be played Browse, drag and drop, copy and paste, or type the target directory for the file to record Browse, drag and drop, copy and paste, or type the target directory for the file to record or play Combine AV Copy Record entry to Play entry1 Drag and drop, copy and paste, or type name of the video file to record. Note that a separate sound track will also be recorded in the background Drag and drop, copy and paste, or type the name of the file to record or play Duration(seconds) Duration: Encapsulate audio and video tracks in selected single AV container Encapsulate audio and video tracks in single AV container File: For example 0.2 For example 240 For example 25 For example 26 For example 320 For example: /dev/video0 if input format video4linux2 For example: video4linux2 for webcam General Configuration Help If you soundcard is not card 0 click checkbox If you soundcard is not subdevice 0 click checkbox InputFormat          Extra I/P options              vDEVICE            W x H             Extra O/P options JPEGS: Offset audio track by this amount. For example: 1.2 (in seconds) Opens Rox filemanager at target directory of recording Output frame rate(fps) PAUSE A and V track play PAUSE play PAUSE record PLAY A and V tracks PLAY combined AV file Play A and V tracks Playback length. 0 = no time limit Pop up MIXER and VU display QUIT RECORD A and V tracks Record A and V tracks Recording length. 0 = no time limit Return to Small GUI Run Pschedule task on time STOP A and V track play STOP play STOP record. If no record in process, pop up MIXER and VU display Section A: Commandline usage

In a console enter command: 
pavrecord --help
for brief commandline usage.
 Setup Help Target Directory VIDEO RECORD CONFIGURATION: Window capture height. For example 768 Window capture position Xoffset. For example 0 Window capture position Yoffset. For example 0 Window capture width. For example 1024 X11 Display. For example :0.0 X11GRAB: WxH and DISPLAY+Xoffset,Yoffset and audio quality for: mp3 vbr, aac_q or ogg_q; compression_level for flac (N1=12) auto card channel del device jpeg sequence for output leave blank or add additional ffmpeg input options leave blank or, for example: -b 200k -bt 240k offset: preview sample rate for wav; bitrate for mp3, aac or ogg_mm select audio format select container for combined audio and video track select for automatically delete the separate audio and video tracks once the combined AV file is created select for automatically encapsulate audio and video tracks in selected container when record stop is pressed select for automatically encapsulate audio and video tracks in single AV container when record stop is pressed select for screencast select for stereo recording select mp3 mode select soundcard select video encoder. (Note: video track is first recorded alone into an avi container) stereo use Average Bit Rate mode when mp3 encoding use Constant Bit Rate mode when mp3 encoding use Variable Bit Rate mode when mp3 encoding use aac bitrate mode encoder type use aac quality mode encoder type use flac lossless encoder type use mp3 encoder type use ogg managed maximum encoder type use ogg unmanaged quality encoder type use wav encoder type video: x11grab x11grab: Project-Id-Version: pavrecord VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-05-27 09:58-0600
PO-Revision-Date: 2013-06-09 23:07-0600
Last-Translator: 
Language-Team: Spanish
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 

2. Para la grabación de micrófono, también debe activar 'Mic' como dispositivo de captura (si está utilizando alsamixer uso barra espaciadora para activar).

3. Usted debe subir el ajuste de amplitud de la 'captura' (a unos máximo), pero tenga cuidado de que no sin querer subir el volumen del Mic de reproducción (que debe inactivar) en lugar de la captura de uno, o usted puede terminar la grabación de sonido alimentado de nuevo a su micrófono de los altavoces a todo volumen! Si utiliza alsamixer, presionando la tecla Tab de tal manera que se llega a la ventana de captura alsamixer, antes de los dispositivos de captura, puede ayudar a evitar el aumento innecesario de la amplitud controles de reproducción en lugar de los registros queridos.
 

4. Como alternativa a la grabación desde el micrófono, puede seleccionar otro dispositivo para capturar a partir de (por ejemplo, Línea de entrada). Si selecciona 'Mix' (o quizá 'Mono Mix' como dispositivo de captura, dependiendo de lo que ofrece la tarjeta de sonido) puede grabar cualquier cosa que pasa a través de la tarjeta de sonido (por ejemplo: streaming de radio en el programa pupRadio 01micko)

5. Para la reproducción del trabajo debes activar y subir PCM y el control de volumen maestro.

6. Usted será capaz de ver desde la ventana de la pantalla VU de ejecución si, y cuando, usted tiene su sonido controla correctamente configurado (pero apagar la pantalla VU antes de efectuar la grabación o el resultado final será con una grabación en blanco!).
 

Argumentos de comandos:

rec directorio_destino archivosalida [Duración]:. record de archivo de salida
pauserec: pausar / reanudar la grabación (conmutación).
stoprec directorio_destino archivo de salida:. detener la grabación
jugar directorio_destino infile [Duración]:. juego infile
pauseplay : pausar/reanudar la reproducción (conmutación)
stopplay : detener la reproducción
dejar de fumar : limpiar todo y salir del programa 
--help : este breve ayuda sobre el uso
-? : Este breve ayuda sobre el uso
- : Leer los argumentos de la entrada estándar (por ejemplo tuberías)

Tenga en cuenta que pavrecord mantiene automáticamente
un registro de los identificadores de proceso en ejecución.

Si no se introducen las opciones pAVrecord GUI
se iniciará.\n 

Reproducción: 

1. Para la reproducción, es necesario subir el volumen del dispositivo PCM y al menos el volumen del dispositivo maestro. Tenga en cuenta que la tecla "M" también se utiliza para dispositivos de Mute.
-----
Consejos:

Para mantener pAVrecord como la ventana superior, haga clic en su barra de la ventana y seleccione 
Capa -> Inicio 
-----
Sección B: Configuración de pAVrecord Ejemplo:

Seleccion avanzada interfaz de usuario (grande).

Seleccionar directorio de destino: /root

Seleccione Grabar Duración:. 0 para ilimitado
También establece Reproducir Duración en 0.

Introduzca Audio sync desplazamiento (segundos): 1,2

En CONFIGUACION DE GRABACION DE AUDIO:

Seleccionar: mp3, cbr, bitrate 32k

En CONFIGURACION DE GRABACION DE VIDEO:

Seleccione codificador de vídeo: MPEG-4/10

 
-----
Sección C: Pscheduler:

Si Pscheduler está disponible, se puede añadir (o Edit) tarea (s) de la forma

   pavrecord rec outfile.avi [duración]

para programar el momento de una sesión de grabación debe comenzar.

Usted puede programar cualquiera de los comandos que se describen a través de: pavrecord --help
 
-----
Sección D: Alsa setup

De grabación:

1. Para las grabaciones de micrófono más fuerte:

    Presione el botón mesa de mezclas para abrir mezclador de audio y el medidor de VU. Activar impulso Mic. Su uso aumenta en gran medida su nivel de grabación de sonido del micrófono.

    Si utiliza alsamixer para ello, utilice las teclas del cursor, vaya ahora a la parte derecha de la ventana de alsamixer, y seguir a la derecha (a menudo en el borde de la ventana). Alrededor de ese lugar que puede (o debe?) Encontrar el control del 'Mic Boost "(tecla" M "cambia su activación).

 
Intro:
inRate(fps) 30, 
vINPUTFORMAT video4Linux2,
vDEVICE /dev/video0 (si ese es su dispositivo de vídeo),
vWidth 320, vHEIGHT 240.
Deja ffmpeg adicional v o/p opciones en blanco

Seleccione contenedor para combinado A y V pista: avi

Para Combine auto AV, seleccione como verdadero.
Para Combine AV del, seleccione como falsa.
Tenga en cuenta que la alternativa real para la casilla del hace que el aparte A y pistas V se eliminen automáticamente después de que se produjo el último combinado AV.

Presione el botón Grabar para grabar las pistas A y V (que, con el ajuste anterior, se auto-combinado en envase final avi vez que se pulsa el botón Detener grabación).

Tres archivos se guardan: la pista de vídeo sellada con la fecha, la pista de audio sellada con la fecha y el video AV combinado cuyo nombre comienza pAV seguida de marca de fecha.

 -----
Para ver/oír resultado:

Método 1: Utilice el botón -> para transferir el nombre de archivo en el lado de reproducción y pulse el botón Play  Este método reproduce el video individual y pistas de audio en paralelo (lo que permite ajustar la compensación de sincronización de audio).

Método 2: Si la sincronización de audio compensa establecido ya está bien, sólo tiene que pulsar el botón AV Play (junto a Combinar área de AV) para reproducir vídeo AV combinado final en el sistema reproductor de vídeo (si se asume fue seleccionado Combine auto AV).
 CONFIGURACIÓN GRABACION DE AUDIO: AV Interfaz de usuario avanzada y configuración pAVrecord Después de configurar pavrecord
a través de la interfaz gráfica de usuario, también puede controlarlo
desde la línea de comandos usando:

pavrecord [opción] [ruta al archivo] [archivo] [Duración]

donde [duración] es un límite de tiempo para el registro
capturar o reproducir proceso:
 
0 significa que no hay límite de tiempo,
entrar sin resultados duración en el uso de
duración pre-configurado para el registro.
 Sinc. de audio offset y duración de grabación Audio/Video grabador y reproductor Examinar y seleccione el directorio de destino para el archivo de registro Examinar y seleccione el directorio de destino para el archivo para grabar o reproducir Buscar el ORIGEN del archivo para reproducir Examinar, arrastrar y soltar, copiar y pegar, o escribe el nombre (incluyendo la ruta) del archivo de vídeo para reproducirlo. Tenga en cuenta que, si está disponible, también se reproducirá la banda sonora asociada Examinar, arrastrar y soltar, copiar y pegar, o escriba el directorio de destino para el archivo de registro Examinar, arrastrar y soltar, copiar y pegar, o escriba el directorio de destino para el archivo para grabar o reproducir Combina AV Copiar entrada grabada para reproducir entry1 Arrastrar y soltar, copiar y pegar, o el nombre de tipo de archivo de vídeo para grabar. Tenga en cuenta que una pista de sonido separada también se registrará en el fondo Arrastrar y soltar, copiar y pegar, o escriba el nombre del archivo para grabar o reproducir Duración (segundos) Duración: Encapsular las pistas de audio y vídeo en un solo recipiente AV seleccionado Encapsular las pistas de audio y vídeo en un solo recipiente AV Archivo: Por ejemplo 0.2 Por ejemplo 240 Por ejemplo 25 Por ejemplo 26 Por ejemplo 320 Por ejemplo: / dev/video0 si el formato de entrada Video4Linux2 Por ejemplo: Video4Linux2 de la cámara web Configuración general Ayuda Si la tarjeta de sonido no es la tarjeta 0 click casilla Si la tarjeta de sonido no está subdispositivo 0 click casilla InputFormat       Opciones I/P adicionales         vDEVICE           W x H               opciones extra O/P JPEGS: Desplazamiento de la pista de audio en esta cantidad. Por ejemplo: 1.2 (en segundos) Abre Rox filemanager al directorio de destino de la grabación Velocidad de fotogramas de salida (fps) PAUSA A y Reproducción de pista V  Reproducir Pausa PAUSA grabación Reproducir las pistas A y V Reproducir archivo AV combinado Reproducir pistas A y V Duración de la reproducción. 0 = sin límite de tiempo Pop up mezclador y pantalla VU SALIR Grabar pistas de A y V Grabar pistas A y V Duración de la grabación. 0 = sin límite de tiempo Regresar a pequeño GUI Ejecutar Pschedule tarea a tiempo DETENER A y Reproducción de pistas V Detener la reproducción Detener la grabación. Si no hay ningún registro en proceso, pop-up mezclador y pantalla VU Sección A: El uso de Línea de comandos

En una consola de comandos escriba:
pavrecord --help
para ver el uso de comandos.
 Configuración Ayuda Directorio de destino CONFIGURACION DE REGISTRO DE VIDEO: Altura de la ventana de captura. Por ejemplo 768 Captura posición de ventana Xoffset. Por ejemplo 0 Captura posición de ventana Yoffset. Por ejemplo 0 Ancho de captura de la ventana. Por ejemplo 1024 Display X11. Por ejemplo: 0.0 X11GRAB: WxH y  MOSTRAR+Xoffset,Yoffset Y calidad de audio para: mp3 vbr, aac_q o ogg_q; compression_level para flac (N1 = 12) auto tarj. canal borrar disp, secuencia de jpeg para la salida dejar en blanco o añadir ffmpeg opciones de entrada adicionales dejar en blanco o, por ejemplo :-b 200k - bt 240k offset: Vista previa frecuencia de muestreo para wav, bitrate de mp3, aac o ogg_mm seleccionar el formato de audio selec. contenedor para combinar audio y pista de vídeo seleccione para eliminar automáticamente las pistas de audio y vídeo por separado una vez que se creó el archivo AV combinado selec. para encapsular automáticamente las pistas de audio y vídeo en un contenedor seleccionado al pulsar stop record seleccione para encapsular automáticamente las pistas de audio y vídeo en un solo recipiente AV al pulsar stop record seleccionar screencast selec. para la grabación estéreo seleccionar el modo de mp3 selec. la tarj. sonido selec. codif. de vídeo.(Nota: La pista de vídeo se reg. por primera vez solos en un contenedor avi) est. utilizar el modo de promedio de la velocidad cuando la codificación mp3 utilizar el modo de velocidad de bits constante cuando la codificación mp3 utilizar el modo de velocidad de bits variable cuando la codificación mp3 utilizar el modo de bitrate aac tipo de encoder utilizar el modo de calidad aac tipo de encoder utilizar flac lossless tipo de encoder utilizar el tipo de codificador mp3 uso ogg administrado tipo de maximo codificador utilizar ogg administrado tipo de calidad codificador utilizar tipo de codificador wav video: x11grab x11grab: 