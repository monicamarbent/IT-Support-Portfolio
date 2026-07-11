# Networking TCP/IP DHCP DNS Lab

Este proyecto práctico documenta tareas básicas de diagnóstico de red en un entorno Windows con un equipo cliente unido a dominio y un servidor Windows Server 2022.

El proyecto está orientado a funciones de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico en entornos corporativos.

## Objetivo del proyecto

El objetivo de este laboratorio es practicar conceptos básicos de red utilizados en soporte IT.

Durante el proyecto se revisó la configuración TCP/IP de un equipo cliente, la conectividad con el servidor, la resolución DNS, el gateway, la configuración IP y errores comunes relacionados con red.

## Infraestructura

- Servidor: DC01
- Sistema operativo del servidor: Windows Server 2022
- Dominio: monicalab.local
- IP del servidor: 192.168.31.10
- Gateway: 192.168.31.2
- Cliente: W11-CL01
- IP del cliente: 192.168.31.20
- Máscara de subred: 255.255.255.0
- DNS del cliente: 192.168.31.10
- Usuario utilizado: monicalab\ana.gomez
- Entorno: VMware Workstation

## Conceptos practicados

- TCP/IP
- Dirección IP
- Máscara de subred
- Gateway
- DNS
- Resolución de nombres
- Conectividad cliente-servidor
- Configuración IP estática
- Diagnóstico básico de red
- Troubleshooting de conectividad

## Comandos utilizados

Durante el laboratorio se usaron comandos básicos de diagnóstico de red:

- `ipconfig`
- `ipconfig /all`
- `ping`
- `nslookup`

## Pruebas realizadas

### 1. Comprobación básica de IP del cliente

Se ejecutó:

`ipconfig`

Resultado validado:

- IPv4 Address: 192.168.31.20
- Subnet Mask: 255.255.255.0
- Default Gateway: 192.168.31.2

### 2. Comprobación completa de red

Se ejecutó:

`ipconfig /all`

Resultado validado:

- Host Name: W11-CL01
- Primary DNS Suffix: monicalab.local
- IPv4 Address: 192.168.31.20
- Default Gateway: 192.168.31.2
- DNS Servers: 192.168.31.10
- DHCP Enabled: No

### 3. Conectividad con el servidor por IP

Se ejecutó:

`ping 192.168.31.10`

Resultado:

- 4 paquetes enviados.
- 4 paquetes recibidos.
- 0 paquetes perdidos.

Esto confirma que el cliente puede comunicarse con el servidor DC01 usando su dirección IP.

### 4. Conectividad con el servidor por nombre

Se ejecutó:

`ping DC01`

Resultado:

- DC01 resolvió como `DC01.monicalab.local`.
- IP resuelta: 192.168.31.10
- 4 paquetes enviados.
- 4 paquetes recibidos.
- 0 paquetes perdidos.

Esto confirma que la resolución de nombre del servidor funciona correctamente.

### 5. Resolución DNS del dominio

Se ejecutó:

`nslookup monicalab.local`

Resultado:

- El dominio `monicalab.local` resolvió hacia `192.168.31.10`.

Durante la prueba apareció `Server: Unknown`, lo cual indica que no existe una resolución inversa PTR configurada para el servidor DNS. Sin embargo, la resolución directa funciona correctamente porque el dominio resuelve hacia la IP del servidor DC01.

## Capturas incluidas

Las capturas del laboratorio se encuentran en la carpeta `screenshots`.

Capturas principales:

- `01-client-ipconfig.png`: configuración IP básica del cliente.
- `02-client-ipconfig-all.png`: configuración completa de red del cliente.
- `03-ping-dc01-ip.png`: conectividad con DC01 por IP.
- `04-ping-dc01-name.png`: conectividad con DC01 por nombre.
- `05-nslookup-domain.png`: resolución DNS del dominio `monicalab.local`.

## Tickets documentados

La carpeta `tickets` contiene incidencias técnicas relacionadas con problemas comunes de red.

Tickets incluidos:

- `ticket-001-client-without-network.md`: cliente sin conectividad de red.
- `ticket-002-wrong-dns-configuration.md`: configuración DNS incorrecta.
- `ticket-003-cannot-reach-server.md`: cliente no puede comunicarse con el servidor.
- `ticket-004-name-resolution-issue.md`: problema de resolución de nombres.
- `ticket-005-static-ip-configuration.md`: revisión de configuración IP estática.

## Conocimientos practicados

- Diagnóstico de red en Windows.
- Revisión de configuración TCP/IP.
- Identificación de IP, máscara, gateway y DNS.
- Comprobación de conectividad con `ping`.
- Comprobación de resolución DNS con `nslookup`.
- Diferencia entre conectar por IP y conectar por nombre.
- Importancia del DNS en entornos de dominio.
- Documentación técnica de incidencias de red.

## Resultado final

El cliente W11-CL01 quedó correctamente configurado dentro de la red del laboratorio.

Se validó que:

- El cliente tiene una IP válida dentro de la red.
- El gateway está configurado correctamente.
- El DNS apunta al servidor DC01.
- El cliente puede comunicarse con DC01 por IP.
- El cliente puede resolver el nombre DC01.
- El dominio `monicalab.local` resuelve correctamente hacia el servidor.
- La conectividad cliente-servidor funciona correctamente.

## Conclusión

Este laboratorio demuestra conocimientos básicos de diagnóstico de red en entornos Windows, incluyendo TCP/IP, DNS, gateway, conectividad cliente-servidor y resolución de nombres.

Es una práctica orientada a tareas de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico en entornos corporativos.