# Ticket 001 - Access denied en carpeta Pedidos

## Usuario afectado

Cocinero Pedidos

## Equipo

W11-CL01

## Recurso afectado

\\DC01\Pedidos

## Descripción

El usuario indica que no puede acceder a la carpeta compartida Pedidos desde el equipo cliente W11-CL01.

Al intentar abrir el recurso compartido, el sistema muestra un mensaje de acceso denegado.

## Diagnóstico

Se verificó que el equipo cliente W11-CL01 estaba unido correctamente al dominio `monicalab.local`.

También se comprobó que el usuario había iniciado sesión con una cuenta de dominio.

Se ejecutaron los siguientes comandos en el cliente:

- `whoami`
- `hostname`
- `whoami /groups`

Resultado inicial:

- Usuario: `monicalab\cocinero.pedidos`
- Equipo: `W11-CL01`
- El grupo `MONICALAB\GG_CocinaPedidos_RW` no aparecía cargado en la sesión.

Desde el servidor DC01 se comprobó que el usuario sí pertenecía al grupo `GG_CocinaPedidos_RW`.

## Causa

El usuario pertenecía al grupo correcto en Active Directory, pero el grupo no estaba cargado todavía en la sesión del cliente.

Esto puede ocurrir cuando se añade un usuario a un grupo y el usuario ya tenía la sesión iniciada.

## Solución

Se cerró sesión completamente en el equipo W11-CL01.

Después se volvió a iniciar sesión con el usuario de dominio:

`MONICALAB\cocinero.pedidos`

Se ejecutó de nuevo:

`whoami /groups`

Esta vez el grupo `MONICALAB\GG_CocinaPedidos_RW` apareció correctamente en la sesión.

## Resultado

El usuario pudo acceder correctamente a la carpeta compartida:

`\\DC01\Pedidos`

También pudo crear el archivo de prueba:

`pedido-prueba.txt`

## Evidencias

- `../screenshots/22-domain-user-login.png`: inicio de sesión con usuario de dominio.
- `../screenshots/23-pedidos-access-success.png`: acceso correcto a la carpeta Pedidos.
- `../screenshots/24-cocinero-finanzas-access-denied.png`: acceso denegado a Finanzas desde Cocinero Pedidos.

## Estado

Resuelto.