# Notas técnicas - Networking TCP/IP DHCP DNS

## Resumen

Este laboratorio documenta pruebas básicas de red realizadas desde el cliente Windows W11-CL01 dentro del dominio `monicalab.local`.

El objetivo es practicar diagnóstico de conectividad, configuración TCP/IP y resolución DNS en un entorno Windows corporativo.

## Infraestructura

- Cliente: W11-CL01
- Usuario utilizado: monicalab\ana.gomez
- Servidor: DC01
- Dominio: monicalab.local
- IP del cliente: 192.168.31.20
- IP del servidor: 192.168.31.10
- Gateway: 192.168.31.2
- DNS: 192.168.31.10
- Máscara de subred: 255.255.255.0

## Conceptos clave

### Dirección IP

La dirección IP identifica a un equipo dentro de una red.

En este laboratorio, el cliente W11-CL01 usa:

`192.168.31.20`

### Máscara de subred

La máscara define qué parte de la dirección IP corresponde a la red.

En este laboratorio:

`255.255.255.0`

### Gateway

El gateway permite que el equipo pueda comunicarse con otras redes.

En este laboratorio:

`192.168.31.2`

### DNS

El DNS permite traducir nombres a direcciones IP.

En este laboratorio, el cliente usa como DNS el servidor DC01:

`192.168.31.10`

Esto permite resolver nombres como:

- `DC01`
- `monicalab.local`

## Comandos utilizados

### Ver configuración IP básica

```cmd
ipconfig
```

Sirve para revisar:

- IPv4 Address
- Subnet Mask
- Default Gateway

### Ver configuración completa

```cmd
ipconfig /all
```

Sirve para revisar:

- Host Name
- DNS Suffix
- DHCP Enabled
- DNS Servers
- IPv4 Address
- Default Gateway

### Comprobar conectividad por IP

```cmd
ping 192.168.31.10
```

Sirve para comprobar si el cliente puede comunicarse con el servidor DC01 usando su dirección IP.

### Comprobar conectividad por nombre

```cmd
ping DC01
```

Sirve para comprobar si el cliente puede resolver el nombre del servidor y comunicarse con él.

### Comprobar DNS

```cmd
nslookup monicalab.local
```

Sirve para comprobar si el dominio resuelve correctamente hacia la IP del servidor.

## Resultados obtenidos

### ipconfig

El cliente mostró:

- IPv4 Address: 192.168.31.20
- Subnet Mask: 255.255.255.0
- Default Gateway: 192.168.31.2

### ipconfig /all

El cliente mostró:

- Host Name: W11-CL01
- Primary DNS Suffix: monicalab.local
- DNS Servers: 192.168.31.10
- DHCP Enabled: No

### ping por IP

El comando `ping 192.168.31.10` respondió correctamente.

Resultado:

- 4 paquetes enviados.
- 4 paquetes recibidos.
- 0 paquetes perdidos.

### ping por nombre

El comando `ping DC01` resolvió correctamente:

`DC01.monicalab.local [192.168.31.10]`

Resultado:

- 4 paquetes enviados.
- 4 paquetes recibidos.
- 0 paquetes perdidos.

### nslookup

El comando `nslookup monicalab.local` resolvió:

`monicalab.local -> 192.168.31.10`

Apareció `Server: Unknown`, lo cual indica que no hay resolución inversa PTR configurada para el servidor DNS.

La resolución directa funciona correctamente, porque el dominio resuelve hacia la IP del servidor DC01.

## Errores comunes de red

### Cliente sin conexión

Posibles causas:

- Adaptador de red desconectado.
- IP incorrecta.
- Gateway incorrecto.
- Máquina virtual mal configurada.
- Adaptador de red deshabilitado.

### DNS incorrecto

Posibles causas:

- El cliente usa un DNS externo.
- El cliente no apunta al controlador de dominio.
- El servidor DNS no responde.
- El dominio no resuelve correctamente.

### No se puede acceder al servidor por nombre

Posibles causas:

- DNS mal configurado.
- El cliente no tiene suffix DNS correcto.
- El servidor DC01 no está resolviendo.
- Problema de conectividad con el DNS.

### Ping por IP funciona pero ping por nombre falla

Esto suele indicar un problema de DNS.

Ejemplo:

- `ping 192.168.31.10` funciona.
- `ping DC01` falla.

Posible causa:

- DNS incorrecto en el cliente.

## Aprendizajes clave

- `ipconfig` permite revisar la configuración IP básica.
- `ipconfig /all` muestra información completa de red.
- `ping` permite comprobar conectividad.
- `nslookup` permite comprobar resolución DNS.
- En un dominio Windows, el DNS del cliente debe apuntar al controlador de dominio.
- Si el cliente no resuelve el dominio, pueden fallar el inicio de sesión, las carpetas compartidas y la unión al dominio.
- El hecho de que `nslookup` muestre `Server: Unknown` no significa necesariamente que DNS no funcione.
- Si la resolución directa funciona, el dominio puede resolver correctamente aunque no exista registro PTR inverso.

## Conclusión técnica

Este laboratorio permite practicar troubleshooting básico de red en Windows.

Las pruebas realizadas demuestran que el cliente W11-CL01 tiene configuración TCP/IP válida, puede comunicarse con el servidor DC01 y puede resolver el dominio `monicalab.local` mediante DNS.