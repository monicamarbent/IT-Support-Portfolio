# Ticket 004 - Problema de conectividad de red

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

Network / Connectivity

## Prioridad

High

## Estado

Resolved

## Descripción

El usuario indica que no puede acceder a recursos internos de red desde el equipo W11-CL01.

El problema puede afectar al acceso a carpetas compartidas, servidor DC01 o servicios internos del dominio `monicalab.local`.

## Diagnóstico

Se revisa la configuración de red del equipo cliente.

Se ejecutan los siguientes comandos:

- `ipconfig`
- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`

Se comprueba:

- Dirección IP del cliente.
- Máscara de subred.
- Gateway.
- Servidor DNS configurado.
- Conectividad con DC01 por IP.
- Conectividad con DC01 por nombre.

Configuración esperada:

- Cliente W11-CL01: `192.168.31.20`
- Servidor DC01: `192.168.31.10`
- Gateway: `192.168.31.2`
- DNS: `192.168.31.10`

## Causa

El problema podía deberse a una configuración incorrecta de red, pérdida de conectividad con el servidor, DNS incorrecto o gateway mal configurado.

## Acción realizada

Se revisa la configuración TCP/IP del cliente W11-CL01.

Se confirma que el equipo tiene una IP válida dentro de la red.

Después se comprueba conectividad con el servidor DC01 usando:

`ping 192.168.31.10`

También se comprueba conectividad por nombre usando:

`ping DC01`

El servidor responde correctamente por IP y por nombre.

## Escalado

No se escala a segundo nivel.

La incidencia corresponde a Helpdesk L1 porque se resuelve con diagnóstico básico de conectividad.

## Resultado

El cliente W11-CL01 puede comunicarse correctamente con el servidor DC01.

La conectividad de red queda validada.

## Comunicación al usuario

Se informa al usuario de que la conectividad con el servidor ha sido comprobada y que el equipo puede acceder correctamente a la red interna.

## Cierre

Ticket cerrado tras validar conectividad con el servidor.

## Estado final

Resolved / Closed