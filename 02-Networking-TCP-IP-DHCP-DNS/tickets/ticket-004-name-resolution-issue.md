# Ticket 004 - Problema de resolución de nombres

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Resolución de nombres DNS dentro del dominio `monicalab.local`.

## Descripción

El usuario indica que no puede acceder al servidor usando el nombre `DC01`.

El acceso por IP puede funcionar, pero al usar el nombre del servidor o el nombre del dominio, el equipo puede mostrar errores de resolución de nombres.

Ejemplos afectados:

`\\DC01`

`\\DC01\Pedidos`

`\\DC01\Finanzas`

`monicalab.local`

## Diagnóstico

Se comprobó primero la conectividad por IP hacia el servidor DC01:

`ping 192.168.31.10`

Después se comprobó la resolución por nombre:

`ping DC01`

También se validó la resolución DNS del dominio:

`nslookup monicalab.local`

Se revisó la configuración DNS del cliente con:

`ipconfig /all`

Campo revisado:

- DNS Servers

Configuración esperada:

- DNS del cliente: `192.168.31.10`
- Servidor DNS: DC01
- Dominio: `monicalab.local`

## Causa

El problema podía deberse a una mala configuración DNS en el cliente.

Cuando un equipo puede hacer ping por IP pero no puede resolver nombres, normalmente el problema está relacionado con DNS.

En un entorno de dominio Windows, el cliente debe usar como DNS principal el controlador de dominio.

## Solución

Se comprobó que el cliente W11-CL01 tenía configurado como DNS principal:

`192.168.31.10`

Después se validó que el nombre `DC01` resolvía correctamente hacia:

`192.168.31.10`

También se validó que el dominio `monicalab.local` resolvía hacia el servidor DC01.

## Resultado

El cliente pudo resolver correctamente el nombre del servidor DC01.

También pudo resolver el dominio `monicalab.local`.

La resolución de nombres quedó validada.

## Evidencias

- `../screenshots/02-client-ipconfig-all.png`: DNS configurado como `192.168.31.10`.
- `../screenshots/04-ping-dc01-name.png`: resolución correcta del nombre DC01.
- `../screenshots/05-nslookup-domain.png`: resolución DNS del dominio `monicalab.local`.

## Estado

Resuelto.