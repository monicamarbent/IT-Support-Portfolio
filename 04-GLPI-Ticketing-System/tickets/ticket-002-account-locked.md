# Ticket 002 - Cuenta de usuario bloqueada

## Usuario afectado

Cocinero Pedidos

## Equipo

W11-CL01

## Categoría

Account Locked / Active Directory

## Prioridad

High

## Estado

Resolved

## Descripción

El usuario indica que no puede iniciar sesión en el equipo W11-CL01.

El sistema muestra un error relacionado con credenciales incorrectas o posible cuenta bloqueada.

## Diagnóstico

Se revisa la cuenta del usuario en Active Directory Users and Computers desde el servidor DC01.

Cuenta revisada:

`cocinero.pedidos`

Se comprueba:

- Que la cuenta existe en Active Directory.
- Que la cuenta no está deshabilitada.
- Que la cuenta no está bloqueada.
- Que la contraseña no está caducada.
- Que el usuario está usando el formato correcto de inicio de sesión.

Formato correcto:

`MONICALAB\cocinero.pedidos`

## Causa

La causa probable fue que el usuario introdujo varias veces una contraseña incorrecta, provocando el bloqueo de la cuenta.

## Acción realizada

Desde Active Directory Users and Computers se revisa la pestaña Account del usuario.

Se verifica el estado de la cuenta y se desbloquea si aparece bloqueada.

También se realiza un reseteo de contraseña para permitir el acceso de nuevo.

Después se solicita al usuario cerrar sesión e iniciar sesión otra vez en W11-CL01.

## Escalado

No se escala a segundo nivel.

La incidencia corresponde a Helpdesk L1.

## Resultado

El usuario puede iniciar sesión correctamente en el equipo W11-CL01 con su cuenta de dominio.

Se confirma la sesión con:

`whoami`

Resultado esperado:

`monicalab\cocinero.pedidos`

## Comunicación al usuario

Se informa al usuario de que la cuenta ha sido revisada, desbloqueada y que puede iniciar sesión con la contraseña actualizada.

## Cierre

Ticket cerrado tras confirmar que el usuario puede iniciar sesión correctamente.

## Estado final

Resolved / Closed