# Ticket 003 - Cliente no puede comunicarse con el servidor

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Comunicación con el servidor DC01.

## Descripción

El usuario indica que no puede acceder a recursos ubicados en el servidor DC01.

El problema puede afectar a carpetas compartidas, autenticación de dominio o aplicaciones internas.

## Diagnóstico

Se comprobó la conectividad entre el cliente W11-CL01 y el servidor DC01.

Se ejecutaron los siguientes comandos:

- `ipconfig`
- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`

Se revisaron los siguientes elementos:

- IP del cliente.
- Máscara de subred.
- Gateway.
- DNS configurado.
- Respuesta del servidor por IP.
- Respuesta del servidor por nombre.

Configuración esperada:

- Cliente W11-CL01: `192.168.31.20`
- Servidor DC01: `192.168.31.10`
- Gateway: `192.168.31.2`
- DNS: `192.168.31.10`

## Causa

El problema podía deberse a una de estas causas:

- IP incorrecta en el cliente.
- DNS incorrecto.
- Gateway incorrecto.
- Servidor DC01 apagado o no disponible.
- Problema de conectividad entre cliente y servidor.

## Solución

Se revisó la configuración TCP/IP del cliente W11-CL01.

Se confirmó que el cliente tenía una IP válida dentro de la misma red que DC01.

Después se comprobó la conectividad con el servidor usando:

`ping 192.168.31.10`

El servidor respondió correctamente.

También se comprobó la conectividad por nombre usando:

`ping DC01`

El nombre DC01 resolvió correctamente hacia:

`192.168.31.10`

## Resultado

El cliente W11-CL01 pudo comunicarse correctamente con el servidor DC01 por IP y por nombre.

La comunicación cliente-servidor quedó validada.

## Evidencias

- `../screenshots/01-client-ipconfig.png`: configuración IP básica del cliente.
- `../screenshots/02-client-ipconfig-all.png`: configuración completa de red.
- `../screenshots/03-ping-dc01-ip.png`: conectividad con DC01 por IP.
- `../screenshots/04-ping-dc01-name.png`: conectividad con DC01 por nombre.

## Estado

Resuelto.