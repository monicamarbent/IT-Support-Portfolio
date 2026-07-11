# Ticket 002 - Reseteo de contraseña de usuario de dominio

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Inicio de sesión en el dominio `monicalab.local`

## Descripción

El usuario indica que no puede iniciar sesión en el equipo cliente W11-CL01 porque no recuerda su contraseña de dominio.

## Diagnóstico

Se verificó que el equipo W11-CL01 estaba unido correctamente al dominio `monicalab.local`.

También se comprobó en Active Directory Users and Computers que la cuenta del usuario existía y estaba activa.

Ruta revisada en DC01:

Server Manager → Tools → Active Directory Users and Computers → monicalab.local → Usuarios → Ana Gómez

Se comprobó:

- Que la cuenta `ana.gomez` existía en Active Directory.
- Que la cuenta no estaba deshabilitada.
- Que el usuario pertenecía al dominio correcto.
- Que el usuario estaba usando el formato correcto de inicio de sesión.

Formato correcto:

`MONICALAB\ana.gomez`

## Causa

El usuario no recordaba la contraseña de su cuenta de dominio.

## Solución

Desde el servidor DC01 se accedió a Active Directory Users and Computers.

Se seleccionó el usuario Ana Gómez y se realizó un reseteo de contraseña.

Se asignó una contraseña temporal para la prueba.

Después se pidió al usuario iniciar sesión de nuevo en W11-CL01 usando:

`MONICALAB\ana.gomez`

## Resultado

El usuario pudo iniciar sesión correctamente en W11-CL01 con su cuenta de dominio.

Después del inicio de sesión se comprobó la identidad del usuario con:

`whoami`

Resultado esperado:

`monicalab\ana.gomez`

## Evidencias

- `../screenshots/21-client-joined-domain.png`: equipo cliente unido correctamente al dominio `monicalab.local`.
- `../screenshots/25-ana-gomez-domain-login-groups.png`: inicio de sesión y comprobación del usuario Ana Gómez en el dominio.

## Estado

Resuelto.