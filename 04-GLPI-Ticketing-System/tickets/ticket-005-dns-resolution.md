# Ticket 005 - Problema de resolución DNS

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

DNS / Network

## Prioridad

High

## Estado

Resolved

## Descripción

El usuario indica que no puede acceder al servidor usando el nombre `DC01`.

El acceso por IP puede funcionar, pero al usar nombres como `DC01` o `monicalab.local`, el equipo puede presentar errores de resolución de nombres.

Recursos afectados:

`\\DC01`

`\\DC01\Finanzas`

`monicalab.local`

## Diagnóstico

Se revisa la configuración DNS del equipo cliente W11-CL01.

Se ejecutan los siguientes comandos:

- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`
- `nslookup monicalab.local`

Se comprueba:

- Que el DNS del cliente apunta al servidor DC01.
- Que el cliente puede comunicarse con DC01 por IP.
- Que el nombre DC01 resuelve correctamente.
- Que el dominio `monicalab.local` resuelve hacia la IP correcta.

Configuración esperada:

- DNS del cliente: `192.168.31.10`
- Servidor DC01: `192.168.31.10`
- Dominio: `monicalab.local`

## Causa

El problema podía deberse a una configuración DNS incorrecta en el cliente.

En un entorno de dominio Windows, el equipo cliente debe usar como DNS principal el controlador de dominio.

Si el cliente usa un DNS externo, puede tener conexión a internet pero no resolver correctamente recursos internos del dominio.

## Acción realizada

Se revisó la configuración TCP/IP del cliente.

Se confirmó que el DNS principal estaba configurado como:

`192.168.31.10`

Después se validó la resolución DNS con:

`nslookup monicalab.local`

También se comprobó la resolución del servidor por nombre con:

`ping DC01`

## Escalado

No se escala a segundo nivel.

La incidencia corresponde a Helpdesk L1 porque se resuelve mediante revisión básica de DNS y conectividad.

## Resultado

El cliente W11-CL01 puede resolver correctamente el dominio `monicalab.local`.

También puede resolver el nombre del servidor DC01 hacia la IP:

`192.168.31.10`

La resolución DNS queda validada.

## Comunicación al usuario

Se informa al usuario de que la configuración DNS ha sido revisada y que el equipo puede resolver correctamente los recursos internos del dominio.

## Cierre

Ticket cerrado tras validar resolución DNS correcta.

## Estado final

Resolved / Closed