# Ticket 007 - Sesión de soporte remoto

## Usuario afectado

Ana Gómez

## Equipo

W11-CL01

## Categoría

Remote Support / Helpdesk / User Support

## Prioridad

Medium

## Estado

Resolved

## Descripción

El usuario necesita asistencia remota para revisar una incidencia en su equipo.

La incidencia puede estar relacionada con acceso a recursos internos, configuración de red, permisos, aplicaciones o comprobaciones básicas del sistema.

## Diagnóstico

Se contacta con el usuario para confirmar el problema y solicitar autorización para iniciar una sesión de soporte remoto.

Se recopila información inicial:

- Usuario afectado.
- Equipo afectado.
- Descripción del problema.
- Mensaje de error si existe.
- Momento en que empezó la incidencia.
- Si afecta solo a este usuario o a más usuarios.

Se solicita al usuario abrir una herramienta de soporte remoto, como AnyDesk, TeamViewer o Escritorio Remoto, según el procedimiento de la empresa.

## Acción realizada

Se inicia la sesión remota con autorización del usuario.

Durante la sesión se realizan comprobaciones básicas:

- Verificar usuario conectado.
- Revisar configuración de red.
- Comprobar acceso al recurso afectado.
- Ejecutar comandos básicos si es necesario.
- Revisar mensajes de error.
- Aplicar solución si corresponde a primer nivel.

Comandos que pueden utilizarse:

- `whoami`
- `hostname`
- `ipconfig`
- `ipconfig /all`
- `ping`
- `nslookup`

## Buenas prácticas aplicadas

- Se solicita autorización antes de conectarse.
- Se informa al usuario de las acciones realizadas.
- No se accede a información personal innecesaria.
- No se guardan contraseñas del usuario.
- Se documenta la intervención en el ticket.
- Se cierra la sesión remota al finalizar.

## Escalado

No se escala a segundo nivel si la incidencia se resuelve durante la sesión remota.

Se escala si:

- El problema afecta a varios usuarios.
- Requiere permisos avanzados.
- Requiere cambios en servidores.
- Requiere intervención de redes, sistemas o seguridad.
- No se puede resolver con procedimientos de Helpdesk L1.

## Resultado

La incidencia se revisa durante la sesión remota.

El problema queda resuelto o documentado para su escalado.

El usuario confirma que puede continuar trabajando correctamente.

## Comunicación al usuario

Se informa al usuario de las acciones realizadas y del resultado de la intervención.

También se le indica que puede volver a contactar con soporte si el problema se repite.

## Cierre

Ticket cerrado tras confirmar con el usuario que la incidencia ha quedado resuelta.

## Estado final

Resolved / Closed