# Active Directory Lab - Windows Server 2022

Este proyecto práctico simula un entorno básico de empresa usando Windows Server 2022 como controlador de dominio, Active Directory, DNS, usuarios, grupos de seguridad, carpetas compartidas y permisos de acceso.

El proyecto está orientado a funciones de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico en entornos Windows.

## Objetivo del proyecto

El objetivo de este laboratorio es practicar tareas habituales de soporte IT en un entorno corporativo Windows.

Durante el proyecto se configuró un dominio con Active Directory, se crearon usuarios y grupos de seguridad, se unió un equipo cliente al dominio y se validó el acceso a carpetas compartidas según permisos.

## Infraestructura

- Servidor: Windows Server 2022
- Nombre del servidor: DC01
- Dominio: monicalab.local
- IP del servidor: 192.168.31.10
- Gateway: 192.168.31.2
- Cliente: Windows 10/11
- Nombre del cliente: W11-CL01
- Entorno: VMware Workstation

## Configuración realizada

1. Configuración inicial del servidor DC01.
2. Configuración de red del servidor.
3. Instalación del rol Active Directory Domain Services.
4. Promoción del servidor a controlador de dominio.
5. Creación del dominio `monicalab.local`.
6. Configuración de DNS.
7. Creación de unidades organizativas.
8. Creación de usuarios de dominio.
9. Creación de grupos de seguridad.
10. Creación de carpetas compartidas.
11. Configuración de permisos NTFS.
12. Configuración de permisos de recurso compartido.
13. Unión del cliente W11-CL01 al dominio.
14. Inicio de sesión con usuarios de dominio.
15. Validación de accesos permitidos y denegados.
16. Documentación de tickets técnicos.

## Usuarios creados

- Cocinero Pedidos: usuario del área de pedidos.
- Ana Gómez: usuario del área de finanzas.
- Luis Pérez: usuario sin permisos específicos.
- Soporte L1: usuario de soporte técnico.
- Monica Admin: usuario administrativo del laboratorio.

## Grupos de seguridad creados

- GG_CocinaPedidos_RW: grupo con permisos de lectura y escritura sobre la carpeta Pedidos.
- GG_Finanzas_RW: grupo con permisos de lectura y escritura sobre la carpeta Finanzas.
- GG_ITSupport: grupo destinado a usuarios de soporte IT.

## Carpetas compartidas

- `\\DC01\Pedidos`
- `\\DC01\Finanzas`

## Permisos configurados

El acceso a las carpetas compartidas se configuró mediante grupos de seguridad.

- El grupo `GG_CocinaPedidos_RW` tiene acceso a `\\DC01\Pedidos`.
- El grupo `GG_Finanzas_RW` tiene acceso a `\\DC01\Finanzas`.

Se aplicó el principio de mínimo privilegio, permitiendo que cada usuario acceda únicamente a los recursos necesarios para su área.

## Pruebas realizadas

### Usuario Cocinero Pedidos

El usuario `monicalab\cocinero.pedidos` pertenece al grupo `GG_CocinaPedidos_RW`.

Resultado de las pruebas:

- Acceso a `\\DC01\Pedidos`: correcto.
- Creación del archivo `pedido-prueba.txt`: correcta.
- Acceso a `\\DC01\Finanzas`: denegado.

### Usuario Ana Gómez

El usuario `monicalab\ana.gomez` pertenece al grupo `GG_Finanzas_RW`.

Resultado de las pruebas:

- Acceso a `\\DC01\Finanzas`: correcto.
- Creación del archivo `finanzas-prueba.txt`: correcta.
- Acceso a `\\DC01\Pedidos`: denegado.

## Capturas incluidas

Las capturas del laboratorio se encuentran en la carpeta `screenshots`.

Capturas principales:

- `19-client-computer-name.png`: nombre del equipo cliente W11-CL01.
- `20-client-network-check.png`: comprobación de red entre cliente y servidor.
- `21-client-joined-domain.png`: cliente unido al dominio monicalab.local.
- `22-domain-user-login.png`: inicio de sesión con usuario de dominio.
- `23-pedidos-access-success.png`: acceso correcto a la carpeta Pedidos.
- `24-cocinero-finanzas-access-denied.png`: acceso denegado a Finanzas desde Cocinero Pedidos.
- `25-ana-gomez-domain-login-groups.png`: comprobación de grupo de Ana Gómez.
- `26-finanzas-access-success.png`: acceso correcto a la carpeta Finanzas.
- `27-ana-pedidos-access-denied.png`: acceso denegado a Pedidos desde Ana Gómez.

## Tickets documentados

La carpeta `tickets` contiene incidencias técnicas documentadas en formato Helpdesk.

Tickets incluidos:

- `ticket-001-access-denied-pedidos.md`: acceso denegado a carpeta Pedidos.
- `ticket-002-password-reset.md`: reseteo de contraseña de usuario de dominio.
- `ticket-003-account-locked.md`: cuenta de usuario bloqueada.
- `ticket-004-shared-folder-access-denied.md`: acceso denegado a carpeta compartida.
- `ticket-005-client-cannot-reach-server.md`: cliente no puede comunicarse con el servidor.
- `ticket-006-domain-join-issue.md`: error al unir equipo cliente al dominio.

## Notas técnicas

La carpeta `notes` contiene documentación técnica del laboratorio.

Archivo incluido:

- `active-directory-lab-notes.md`: resumen técnico, comandos utilizados, errores comunes y aprendizajes clave.

## Comandos utilizados

Durante el laboratorio se usaron comandos básicos de diagnóstico y administración:

- `ipconfig`
- `ipconfig /all`
- `ping`
- `nslookup`
- `hostname`
- `whoami`
- `whoami /groups`
- `gpupdate /force`
- `net user`
- `net group`

## Conocimientos practicados

- Windows Server 2022
- Active Directory
- Domain Controller
- DNS
- Usuarios de dominio
- Grupos de seguridad
- Permisos NTFS
- Permisos de carpetas compartidas
- Principio de mínimo privilegio
- Unión de cliente Windows a dominio
- Diagnóstico de red y autenticación
- Troubleshooting de permisos
- Validación de grupos con `whoami /groups`
- Documentación de tickets técnicos

## Problemas encontrados y solución

Durante las pruebas iniciales, el usuario `cocinero.pedidos` no podía acceder a la carpeta compartida `\\DC01\Pedidos`.

El sistema mostraba un mensaje de acceso denegado.

Diagnóstico realizado:

1. Se comprobó que el cliente W11-CL01 estaba unido correctamente al dominio.
2. Se verificó el inicio de sesión con el usuario de dominio.
3. Se ejecutó el comando `whoami /groups`.
4. Inicialmente, el grupo `MONICALAB\GG_CocinaPedidos_RW` no aparecía cargado en la sesión.
5. Se comprobó desde DC01 que el usuario sí pertenecía al grupo correcto.
6. Se cerró sesión y se volvió a iniciar sesión para refrescar el token de grupos.
7. Finalmente, el grupo apareció correctamente en `whoami /groups`.

Resultado:

Después de actualizar la sesión, el usuario `monicalab\cocinero.pedidos` pudo acceder correctamente a `\\DC01\Pedidos`.

También pudo crear el archivo `pedido-prueba.txt`.

## Resultado final

El laboratorio quedó configurado correctamente.

Se validó que:

- El cliente W11-CL01 puede unirse al dominio `monicalab.local`.
- Los usuarios de dominio pueden iniciar sesión en el cliente.
- Los grupos de seguridad controlan el acceso a carpetas compartidas.
- Los permisos NTFS y de recurso compartido funcionan correctamente.
- Los usuarios solo acceden a los recursos autorizados.
- Se aplica el principio de mínimo privilegio.
- Las incidencias se documentan en formato ticket técnico.

## Conclusión

Este laboratorio demuestra la capacidad de configurar un entorno básico de dominio Windows, gestionar usuarios y grupos en Active Directory, aplicar permisos de acceso a recursos compartidos, validar accesos desde un equipo cliente unido al dominio y documentar incidencias técnicas.

Es una práctica orientada a funciones de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico en entornos Windows.