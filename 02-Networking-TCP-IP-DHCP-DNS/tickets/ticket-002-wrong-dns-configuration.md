# Ticket 002 - Configuración DNS incorrecta

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Resolución DNS y acceso a recursos del dominio `monicalab.local`.

## Descripción

El usuario indica que no puede acceder correctamente a recursos del dominio o al servidor por nombre.

El equipo puede tener conectividad por IP, pero fallar al intentar acceder usando nombres como:

`DC01`

o:

`monicalab.local`

## Diagnóstico

Se revisó la configuración DNS del equipo cliente W11-CL01.

Se ejecutaron los siguientes comandos:

- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`
- `nslookup monicalab.local`

Se comprobó especialmente el campo:

- DNS Servers

Configuración esperada:

- DNS del cliente: `192.168.31.10`
- Servidor DNS: DC01
- Dominio: `monicalab.local`

## Causa

El problema podía deberse a que el cliente tenía configurado un DNS incorrecto.

En un entorno de dominio Windows, el cliente debe usar como DNS principal el controlador de dominio.

En este laboratorio, el DNS correcto es:

`192.168.31.10`

Si el cliente usa un DNS externo, como `8.8.8.8`, puede tener internet pero no resolver correctamente el dominio interno `monicalab.local`.

## Solución

Se revisó la configuración TCP/IP del adaptador de red del cliente.

Se confirmó que el DNS principal apuntaba al servidor DC01:

`192.168.31.10`

Después se validó la resolución DNS con:

`nslookup monicalab.local`

También se comprobó la resolución del servidor por nombre con:

`ping DC01`

## Resultado

El cliente pudo resolver correctamente el dominio `monicalab.local`.

También pudo resolver el nombre del servidor DC01 hacia la IP:

`192.168.31.10`

La resolución DNS quedó validada.

## Evidencias

- `../screenshots/02-client-ipconfig-all.png`: DNS configurado como `192.168.31.10`.
- `../screenshots/04-ping-dc01-name.png`: resolución correcta del nombre DC01.
- `../screenshots/05-nslookup-domain.png`: resolución DNS del dominio `monicalab.local`.

## Estado

Resuelto.