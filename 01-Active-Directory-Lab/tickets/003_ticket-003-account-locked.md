# Ticket 003 - Cuenta de usuario bloqueada

## Usuario afectado

Cocinero Pedidos

## Equipo

W11-CL01

## Recurso afectado

Inicio de sesión en el dominio `monicalab.local`

## Descripción

El usuario indica que no puede iniciar sesión en el equipo cliente W11-CL01.

El sistema muestra un error relacionado con credenciales incorrectas o posible cuenta bloqueada.

## Diagnóstico

Se revisó la cuenta del usuario en Active Directory Users and Computers desde el servidor DC01.

Ruta revisada:

Server Manager → Tools → Active Directory Users and Computers → monicalab.local → Usuarios → Cocinero Pedidos

Se comprobó:

- Que la cuenta `cocinero.pedidos` existía en Active Directory.
- Que la cuenta no estuviera deshabilitada.
- Que la cuenta no estuviera bloqueada.
- Que la contraseña no estuviera caducada.
- Que el usuario estuviera usando el formato correcto de inicio de sesión.

Formato correcto:

`MONICALAB\cocinero.pedidos`

También se revisó la pestaña Account de las propiedades del usuario.

## Causa

La causa más probable fue que la cuenta quedó bloqueada por varios intentos fallidos de inicio de sesión o por introducir una contraseña incorrecta varias veces.

## Solución

Desde DC01 se accedió a Active Directory Users and Computers.

Se seleccionó el usuario Cocinero Pedidos.

Se verificó que la cuenta estuviera activa y desbloqueada.

También se realizó un reseteo de contraseña para permitir el acceso de nuevo.

Después se pidió al usuario cerrar sesión e iniciar sesión otra vez en W11-CL01 usando:

`MONICALAB\cocinero.pedidos`

## Resultado

El usuario pudo iniciar sesión correctamente en el equipo W11-CL01 con su cuenta de dominio.

Después del inicio de sesión se comprobó la identidad del usuario con:

`whoami`

Resultado esperado:

`monicalab\cocinero.pedidos`

## Evidencias

- `../screenshots/21-client-joined-domain.png`: equipo cliente unido correctamente al dominio `monicalab.local`.
- `../screenshots/22-domain-user-login.png`: inicio de sesión correcto con usuario de dominio.

## Estado

Resuelto.