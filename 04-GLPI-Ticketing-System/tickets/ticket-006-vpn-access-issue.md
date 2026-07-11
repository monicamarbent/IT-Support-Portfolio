# Ticket 006 - Problema de acceso por VPN

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

VPN / Remote Access / Network

## Prioridad

High

## Estado

Escalated / Resolved

## Descripción

El usuario indica que no puede acceder a recursos internos de la empresa cuando trabaja en remoto.

La VPN parece conectarse, pero el usuario no puede acceder correctamente a recursos internos como carpetas compartidas, aplicaciones internas o servidores del dominio.

Recursos afectados:

`\\DC01\Finanzas`

`monicalab.local`

## Diagnóstico

Se realizan comprobaciones básicas desde el equipo del usuario.

Se revisa:

- Estado de conexión de la VPN.
- Usuario y credenciales utilizadas.
- Conectividad a internet.
- Conectividad con recursos internos.
- Resolución DNS interna.
- Acceso a carpetas compartidas.
- Posibles mensajes de error del cliente VPN.

Comandos utilizados:

- `ipconfig`
- `ipconfig /all`
- `ping 192.168.31.10`
- `ping DC01`
- `nslookup monicalab.local`

Se comprueba si el equipo puede resolver nombres internos y comunicarse con el servidor DC01.

## Causa

El problema podía deberse a una de estas causas:

- Credenciales incorrectas.
- VPN no conectada correctamente.
- Problema de DNS al estar conectado por VPN.
- Falta de permisos sobre el recurso interno.
- Configuración incorrecta del cliente VPN.
- Incidencia en el servicio VPN corporativo.

## Acción realizada

Se verifica primero que el usuario tenga conexión a internet.

Después se solicita al usuario reconectar la VPN y confirmar que no aparece ningún error de autenticación.

Se revisa la configuración de red con:

`ipconfig /all`

Se comprueba si el equipo recibe configuración de red adecuada al conectarse por VPN.

También se prueba la resolución DNS interna con:

`nslookup monicalab.local`

Y la conectividad con el servidor:

`ping DC01`

## Escalado

La incidencia se escala a segundo nivel si después de las comprobaciones básicas la VPN sigue sin permitir acceso a recursos internos.

Motivo del escalado:

- Posible problema de configuración VPN.
- Posible problema de rutas internas.
- Posible problema de DNS corporativo por VPN.
- Posible incidencia del servicio VPN.

## Resultado

Se realizaron comprobaciones iniciales de Helpdesk L1 y se documentaron los resultados.

Si el problema se resuelve tras reconectar VPN y validar credenciales, el ticket se cierra en primer nivel.

Si el problema persiste, se escala a segundo nivel con la información recopilada.

## Comunicación al usuario

Se informa al usuario de que se han revisado las comprobaciones básicas de conexión, credenciales y DNS.

Si la incidencia requiere revisión avanzada de VPN, se comunica que será escalada a segundo nivel para análisis técnico.

## Cierre

Ticket cerrado o escalado según resultado de las pruebas.

## Estado final

Escalated / Resolved