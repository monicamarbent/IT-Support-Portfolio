# Ticket 005 - Cliente no puede comunicarse con el servidor

## Usuario afectado

Usuario de dominio

## Equipo

W11-CL01

## Recurso afectado

Comunicación con el servidor DC01 y acceso a recursos compartidos.

## Descripción

El usuario indica que no puede acceder a recursos compartidos del servidor DC01.

Las rutas afectadas pueden ser:

`\\DC01\Pedidos`

`\\DC01\Finanzas`

Al intentar acceder, el sistema puede mostrar un error relacionado con red, nombre de servidor o imposibilidad de encontrar el recurso.

## Diagnóstico

Se revisó la configuración de red del equipo cliente W11-CL01.

Se ejecutaron los siguientes comandos:

- `ipconfig`
- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`
- `nslookup DC01`
- `nslookup monicalab.local`

Se comprobaron los siguientes elementos:

- Dirección IP del cliente.
- Máscara de subred.
- Puerta de enlace.
- Servidor DNS configurado.
- Conectividad con el servidor DC01.
- Resolución de nombre del dominio `monicalab.local`.

Configuración esperada:

- Servidor DC01: `192.168.31.10`
- Gateway: `192.168.31.2`
- DNS principal del cliente: `192.168.31.10`

## Causa

El problema podía deberse a una configuración DNS incorrecta en el cliente.

En un entorno de dominio, el cliente debe usar como DNS principal la IP del controlador de dominio DC01 para poder resolver correctamente el dominio `monicalab.local`.

## Solución

Se revisó la configuración TCP/IP del cliente W11-CL01.

Se confirmó que el servidor DNS principal apuntaba a DC01:

`192.168.31.10`

Después se comprobó la conectividad con el servidor usando:

`ping 192.168.31.10`

También se comprobó la resolución de nombres usando:

`nslookup DC01`

y:

`nslookup monicalab.local`

## Resultado

El cliente W11-CL01 pudo comunicarse correctamente con DC01.

El nombre del servidor y el dominio resolvieron correctamente.

El equipo quedó preparado para acceder a recursos compartidos del dominio según los permisos asignados.

## Evidencias

- `../screenshots/20-client-network-check.png`: comprobación de red entre cliente y servidor.
- `../screenshots/21-client-joined-domain.png`: equipo cliente unido correctamente al dominio `monicalab.local`.

## Estado

Resuelto.