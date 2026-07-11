# Ticket 006 - Error al unir equipo cliente al dominio

## Usuario afectado

Administrador del laboratorio

## Equipo

W11-CL01

## Recurso afectado

Dominio `monicalab.local`

## Descripción

Durante la unión del equipo cliente W11-CL01 al dominio `monicalab.local`, el sistema mostró un error relacionado con credenciales, conectividad o resolución del dominio.

## Diagnóstico

Se comprobó que el servidor DC01 estaba encendido y funcionando correctamente como controlador de dominio.

También se revisó la configuración de red del cliente W11-CL01 con los siguientes comandos:

- `ipconfig`
- `ipconfig /all`

Se comprobó la conectividad con el servidor DC01:

- `ping 192.168.31.10`
- `ping DC01`

Se comprobó la resolución DNS:

- `nslookup monicalab.local`
- `nslookup DC01`

También se verificó que las credenciales utilizadas fueran de un usuario con permisos para unir equipos al dominio.

Credenciales válidas:

- `MONICALAB\Administrator`
- `administrator@monicalab.local`

## Causa

El problema podía deberse a una de estas causas:

- Credenciales de administrador incorrectas.
- Contraseña mal escrita.
- DNS incorrecto en el cliente.
- El cliente no podía resolver el dominio `monicalab.local`.
- El servidor DC01 no estaba accesible desde el cliente.

## Solución

Se revisó la configuración de red del cliente W11-CL01.

Se confirmó que el DNS principal del cliente apuntaba al servidor DC01:

`192.168.31.10`

Después se repitió el proceso de unión al dominio desde:

System Properties → Computer Name → Change → Domain

Dominio introducido:

`monicalab.local`

Se introdujeron credenciales correctas de administrador del dominio.

## Resultado

El equipo W11-CL01 se unió correctamente al dominio `monicalab.local`.

El sistema mostró el mensaje de bienvenida al dominio.

Después del reinicio, el equipo pudo iniciar sesión con usuarios del dominio.

## Evidencias

- `../screenshots/19-client-computer-name.png`: nombre del equipo cliente W11-CL01.
- `../screenshots/20-client-network-check.png`: comprobación de red entre cliente y servidor.
- `../screenshots/21-client-joined-domain.png`: equipo cliente unido correctamente al dominio `monicalab.local`.

## Estado

Resuelto.