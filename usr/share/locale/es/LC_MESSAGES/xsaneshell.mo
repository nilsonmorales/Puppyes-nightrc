��          �      �       0  0   1  #   b  -   �      �  1   �       �        �     �     �  0   �  l   .  =  �  :   �  ,     8   A  #   z  0   �     �  �   �     �     �  O  �  6   	  m   8	                                            	      
        1. Run 'sane-find-scanner' in a terminal window. 2. Make sure 'sg' module is loaded. 3. Specify the device on the commandline, ex: 4. or maybe a symbolic link, ex: Do you have a parallel-port, USB or SCSI scanner? Frontend for Xsane If your scanner is one of these, then Xsane will not auto-detect it.
-- in that case, click 'QUIT' button and open 'dll.conf' in a text
   editor and uncomment the appropriate entry. NOTE: QUIT The list of supported drivers is in text file /etc/sane.d/dll.conf
When Xsane starts, your scanner (if it is connected and turned on)
should be autodetected. However, some entries in 'dll.conf' are
commented-out. Here is the list of SANE drivers that are commented
-out in file 'dll.conf' To continue and run Xsane, answer this question: Xsane may be a bit 'insane' when detecting a SCSI scanner. There are
various things that you may have to do: Project-Id-Version: xsaneshell VERSION
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-05-26 14:51-0600
PO-Revision-Date: 2013-05-26 15:05-0600
Last-Translator: 
Language-Team: Spanish
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 1. Ejecute 'sane-find-scanner "en una ventana de terminal. 2- Asegurese que el modulo 'sg' esta cargado 3- Especifique el dispositivo por linea de comandos. ej: 4- o quiza un enlace simbolico, ej: Tiene un escaner de puerto-paralelo. USB o SCSI? Frontend para Xsane Si tu escaner es uno de estos. Entonces Xsane no sera auto-detectado.
-- en ese caso, haga click en el boton 'QUIT' y abra 'dll.conf' en un editor
   de texto y descomente la entrada apropiada. NOTA: SALIR El listado de controladores soportados esta en el archivo de texto /etc/sane.d/dll.conf
Cuando Xsane arranca, tu escaner (si es que esta conectado y encendido)
deberia ser autodetectado. Sin embargo, algunas entradas en 'dll.conf' estan
comentadas. Aqui esta la lista de controladores SANE que estan comentadas
en el archivo 'dll.conf' Para continuar y correr Xsane, responda esta pregunta: Xsane puede ser un poco "loco" al detectar un escáner SCSI. Hay
varias cosas que usted pueden tener que ver: 