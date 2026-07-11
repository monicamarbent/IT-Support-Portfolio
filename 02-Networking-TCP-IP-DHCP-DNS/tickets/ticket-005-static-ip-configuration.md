# Ticket 005 - Revisión de configuración IP estática

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Recurso afectado

Configuración TCP/IP del equipo cliente.

## Descripción

El usuario indica que el equipo necesita mantener una configuración de red estable para acceder correctamente al dominio, al servidor DC01 y a los recursos compartidos.

Se revisa la configuración IP estática del equipo cliente W11-CL01.

## Diagnóstico

Se comprobó la configuración TCP/IP del equipo cliente usando:

- `ipconfig`
- `ipconfig /all`

Se revisaron los siguientes valores:

- Dirección IPv4.
- Máscara de subred.
- Gateway.
- Servidor DNS.
- Estado de DHCP.

Configuración detectada:

- IP del cliente: `192.168.31.20`
- Máscara de subred: `255.255.255.0`
- Gateway: `192.168.31.2`
- DNS: `192.168.31.10`
- DHCP Enabled: No

## Causa

El equipo cliente estaba configurado con IP estática.

Esta configuración es válida para el laboratorio porque permite mantener una dirección fija y usar el servidor DC01 como DNS principal.

En un entorno corporativo real, la configuración podría depender de DHCP, reservas DHCP o políticas de red internas.

## Solución

Se verificó que la configuración IP estática fuera correcta.

Se comprobó que:

- La IP del cliente pertenece a la misma red que el servidor DC01.
- La máscara de subred es correcta.
- El gateway está configurado.
- El DNS apunta al servidor DC01.
- El cliente puede comunicarse con el servidor por IP.
- El cliente puede resolver el nombre del servidor y el dominio.

Comandos usados para validar:

- `ping 192.168.31.10`
- `ping DC01`
- `nslookup monicalab.local`

## Resultado

La configuración IP estática del cliente W11-CL01 quedó validada.

El equipo puede comunicarse correctamente con DC01 y resolver el dominio `monicalab.local`.

## Evidencias

- `../screenshots/01-client-ipconfig.png`: configuración IP básica del cliente.
- `../screenshots/02-client-ipconfig-all.png`: configuración completa de red y DHCP deshabilitado.
- `../screenshots/03-ping-dc01-ip.png`: conectividad con DC01 por IP.
- `../screenshots/04-ping-dc01-name.png`: conectividad con DC01 por nombre.
- `../screenshots/05-nslookup-domain.png`: resolución DNS del dominio.

## Estado

Resuelto.