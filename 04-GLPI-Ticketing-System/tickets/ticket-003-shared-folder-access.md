# Ticket 003 - Acceso a carpeta compartida

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

Shared Folders / Active Directory / Permissions

## Prioridad

High

## Estado

Resolved

## Descripción

El usuario indica que no puede acceder a una carpeta compartida del servidor DC01.

Recurso afectado:

`\\DC01\Finanzas`

El sistema muestra un mensaje de acceso denegado o no permite abrir el recurso compartido.

## Diagnóstico

Se verifica que el usuario ha iniciado sesión correctamente en el dominio `monicalab.local`.

Se ejecutan los siguientes comandos en el equipo cliente:

- `whoami`
- `hostname`
- `whoami /groups`

Se comprueba:

- Usuario conectado: `monicalab\ana.gomez`
- Equipo: `W11-CL01`
- Grupo requerido: `GG_Finanzas_RW`
- Recurso afectado: `\\DC01\Finanzas`

También se revisan los permisos en el servidor DC01:

- Permisos NTFS.
- Permisos de recurso compartido.
- Pertenencia del usuario al grupo correcto en Active Directory.

## Causa

El problema podía deberse a que el usuario no tenía cargado el grupo correcto en la sesión o no pertenecía al grupo autorizado para acceder a la carpeta.

Para acceder a `\\DC01\Finanzas`, el usuario debe pertenecer al grupo:

`GG_Finanzas_RW`

## Acción realizada

Se revisa la pertenencia del usuario Ana Gómez en Active Directory.

Se confirma que pertenece al grupo:

`GG_Finanzas_RW`

Después se solicita al usuario cerrar sesión completamente y volver a iniciar sesión para actualizar el token de grupos.

Se ejecuta de nuevo:

`whoami /groups`

El grupo aparece correctamente cargado en la sesión.

## Escalado

No se escala a segundo nivel.

La incidencia corresponde a Helpdesk L1 porque está relacionada con revisión básica de grupos, permisos y sesión de usuario.

## Resultado

El usuario puede acceder correctamente a:

`\\DC01\Finanzas`

También puede crear un archivo de prueba dentro de la carpeta.

## Comunicación al usuario

Se informa al usuario de que el acceso ha sido revisado y que ya puede entrar correctamente a la carpeta compartida autorizada.

## Cierre

Ticket cerrado tras confirmar acceso correcto al recurso compartido.

## Estado final

Resolved / Closed