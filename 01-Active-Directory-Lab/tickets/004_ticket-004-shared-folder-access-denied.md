# Ticket 004 - Acceso denegado a carpeta compartida

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

\\DC01\Pedidos

## Descripción

El usuario Ana Gómez indica que no puede acceder a la carpeta compartida Pedidos desde el equipo cliente W11-CL01.

Al intentar abrir el recurso compartido, el sistema muestra un mensaje de acceso denegado.

## Diagnóstico

Se verificó que el equipo W11-CL01 estaba unido correctamente al dominio `monicalab.local`.

También se comprobó que el usuario había iniciado sesión con una cuenta de dominio.

Se ejecutaron los siguientes comandos en el cliente:

- `whoami`
- `hostname`
- `whoami /groups`

Resultado esperado:

- Usuario: `monicalab\ana.gomez`
- Equipo: `W11-CL01`
- Grupo cargado: `MONICALAB\GG_Finanzas_RW`

Se comprobó que Ana Gómez pertenece al grupo de Finanzas, pero no pertenece al grupo autorizado para la carpeta Pedidos.

Grupo requerido para acceder a Pedidos:

`GG_CocinaPedidos_RW`

## Causa

El acceso fue denegado porque el usuario Ana Gómez no pertenece al grupo `GG_CocinaPedidos_RW`.

La carpeta `\\DC01\Pedidos` está configurada para permitir acceso únicamente a usuarios autorizados del área de pedidos.

## Solución

No se concedió acceso a Ana Gómez porque no corresponde a su área de trabajo.

Se mantuvo la configuración de permisos existente para respetar el principio de mínimo privilegio.

La usuaria Ana Gómez conserva acceso únicamente a la carpeta autorizada:

`\\DC01\Finanzas`

## Resultado

El acceso a `\\DC01\Pedidos` fue denegado correctamente para Ana Gómez.

Esto confirma que los permisos de grupo y los permisos NTFS/recurso compartido están funcionando correctamente.

## Evidencias

- `../screenshots/25-ana-gomez-domain-login-groups.png`: comprobación del usuario Ana Gómez y grupo cargado en la sesión.
- `../screenshots/26-finanzas-access-success.png`: acceso correcto de Ana Gómez a Finanzas.
- `../screenshots/27-ana-pedidos-access-denied.png`: acceso denegado de Ana Gómez a Pedidos.

## Estado

Resuelto.