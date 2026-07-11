# Ticket 001 - Cliente sin conectividad de red

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Conectividad de red del equipo cliente.

## Descripción

El usuario indica que no puede acceder a recursos de red desde el equipo W11-CL01.

El problema puede afectar al acceso a carpetas compartidas, dominio, aplicaciones internas o recursos ubicados en el servidor DC01.

## Diagnóstico

Se revisó la configuración TCP/IP del equipo cliente W11-CL01.

Se ejecutaron los siguientes comandos:

- `ipconfig`
- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`

Se comprobaron los siguientes elementos:

- Dirección IP del cliente.
- Máscara de subred.
- Gateway.
- Servidor DNS configurado.
- Conectividad con el servidor DC01.
- Resolución del nombre DC01.

Configuración esperada:

- IP del cliente: `192.168.31.20`
- Máscara de subred: `255.255.255.0`
- Gateway: `192.168.31.2`
- DNS: `192.168.31.10`
- Servidor DC01: `192.168.31.10`

## Causa

El problema podía deberse a una configuración incorrecta de red, gateway incorrecto, DNS incorrecto o falta de conectividad con el servidor.

## Solución

Se revisó la configuración de red del cliente.

Se confirmó que el equipo tenía una IP válida dentro de la red del laboratorio y que el DNS apuntaba al servidor DC01.

Después se comprobó la conectividad con:

`ping 192.168.31.10`

También se comprobó la resolución por nombre con:

`ping DC01`

## Resultado

El cliente W11-CL01 pudo comunicarse correctamente con el servidor DC01.

La conectividad de red quedó validada.

## Evidencias

- `../screenshots/01-client-ipconfig.png`: configuración IP básica del cliente.
- `../screenshots/02-client-ipconfig-all.png`: configuración completa de red.
- `../screenshots/03-ping-dc01-ip.png`: conectividad con DC01 por IP.
- `../screenshots/04-ping-dc01-name.png`: conectividad con DC01 por nombre.

## Estado

Resuelto.