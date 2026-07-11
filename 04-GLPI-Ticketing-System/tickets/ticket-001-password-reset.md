# Ticket 001 - Reseteo de contraseña

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

Password Reset / Access

## Prioridad

High

## Estado

Resolved

## Descripción

El usuario indica que no puede iniciar sesión en el equipo W11-CL01 porque no recuerda su contraseña de dominio.

El acceso afecta a su capacidad para trabajar con recursos internos del dominio `monicalab.local`.

## Diagnóstico

Se verifica que el usuario existe en Active Directory.

Cuenta revisada:

`ana.gomez`

Se comprueba:

- Que la cuenta existe.
- Que la cuenta no está deshabilitada.
- Que el usuario pertenece al dominio correcto.
- Que el equipo W11-CL01 está unido al dominio.
- Que el usuario está usando el formato correcto de inicio de sesión.

Formato correcto:

`MONICALAB\ana.gomez`

## Acción realizada

Se realiza un reseteo de contraseña desde Active Directory Users and Computers en el servidor DC01.

Ruta utilizada:

Server Manager → Tools → Active Directory Users and Computers → monicalab.local → Usuarios → Ana Gómez → Reset Password

Se asigna una contraseña temporal y se solicita al usuario iniciar sesión de nuevo.

## Escalado

No se escala a segundo nivel.

La incidencia corresponde a Helpdesk L1.

## Resultado

El usuario puede iniciar sesión correctamente en W11-CL01 con su cuenta de dominio.

Se confirma el acceso con:

`whoami`

Resultado esperado:

`monicalab\ana.gomez`

## Comunicación al usuario

Se informa al usuario de que la contraseña ha sido restablecida correctamente y que debe iniciar sesión con la nueva contraseña temporal.

## Cierre

Ticket cerrado tras confirmar que el usuario puede iniciar sesión correctamente.

## Estado final

Resolved / Closed