# GLPI Ticketing System - Helpdesk Workflow Lab

Este proyecto práctico documenta un flujo básico de gestión de incidencias de soporte IT, basado en una metodología tipo GLPI / Service Desk.

El proyecto está orientado a funciones de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico en entornos corporativos.

## Objetivo del proyecto

El objetivo de este laboratorio es practicar el ciclo de vida de un ticket de soporte IT.

Durante el proyecto se documentan incidencias comunes de Helpdesk, incluyendo registro, categorización, priorización, diagnóstico, resolución, escalado y cierre de tickets.

Este proyecto simula el uso de una herramienta de ticketing tipo GLPI, aunque el foco principal está en la documentación y el procedimiento de soporte.

## Flujo de trabajo de un ticket

1. Recepción de la incidencia.
2. Registro del ticket.
3. Identificación del usuario afectado.
4. Identificación del equipo o recurso afectado.
5. Categorización de la incidencia.
6. Asignación de prioridad.
7. Diagnóstico inicial.
8. Resolución en primer nivel si es posible.
9. Escalado a segundo nivel si la incidencia no puede resolverse en Helpdesk L1.
10. Documentación de la solución aplicada.
11. Confirmación con el usuario.
12. Cierre del ticket.

## Categorías utilizadas

- Access / Login
- Active Directory
- Password Reset
- Account Locked
- Network
- DNS
- Shared Folders
- VPN
- Remote Support
- Hardware
- Software
- Escalation

## Prioridades utilizadas

### Low

Incidencia menor que no bloquea el trabajo del usuario.

### Medium

Incidencia que afecta a un usuario, pero existe alternativa temporal.

### High

Incidencia que bloquea el trabajo del usuario y requiere atención prioritaria.

### Critical

Incidencia que afecta a varios usuarios o a un servicio importante.

## Estados del ticket

- New
- In Progress
- Waiting for User
- Escalated
- Resolved
- Closed

## Tickets documentados

La carpeta `tickets` contiene ejemplos de incidencias habituales de soporte IT.

Tickets incluidos:

- `ticket-001-password-reset.md`: reseteo de contraseña.
- `ticket-002-account-locked.md`: cuenta bloqueada.
- `ticket-003-shared-folder-access.md`: acceso a carpeta compartida.
- `ticket-004-network-connectivity.md`: problema de conectividad.
- `ticket-005-dns-resolution.md`: problema de resolución DNS.
- `ticket-006-vpn-access-issue.md`: problema de acceso por VPN.
- `ticket-007-remote-support-session.md`: soporte remoto a usuario.

## Notas técnicas

La carpeta `notes` contiene documentación sobre el flujo de trabajo de Helpdesk y buenas prácticas de ticketing.

Archivo incluido:

- `ticketing-workflow-notes.md`

## Conocimientos practicados

- Registro de incidencias.
- Clasificación de tickets.
- Priorización de incidencias.
- Diagnóstico inicial de soporte.
- Resolución de incidencias de primer nivel.
- Escalado a segundo nivel.
- Documentación técnica.
- Seguimiento de tickets.
- Comunicación con usuarios.
- Cierre de incidencias.
- Buenas prácticas de Helpdesk L1.
- Trabajo orientado a SLA.

## Relación con soporte IT real

Este proyecto simula tareas habituales de un puesto Helpdesk o Service Desk:

- Atender incidencias por teléfono, email o portal.
- Registrar tickets correctamente.
- Categorizar y priorizar incidencias.
- Resolver problemas de primer nivel.
- Escalar incidencias complejas.
- Documentar la solución aplicada.
- Mantener trazabilidad de cada caso.
- Confirmar con el usuario antes del cierre.
- Trabajar siguiendo procedimientos internos y acuerdos de nivel de servicio.

## Ejemplo de estructura de ticket

Cada ticket incluye:

- Usuario afectado.
- Equipo o recurso afectado.
- Categoría.
- Prioridad.
- Estado.
- Descripción de la incidencia.
- Diagnóstico.
- Solución aplicada.
- Escalado si corresponde.
- Resultado.
- Cierre.

## Conclusión

Este laboratorio demuestra capacidad para trabajar con metodología de ticketing, documentar incidencias técnicas y seguir un flujo ordenado de soporte IT.

Es una práctica orientada a puestos de Helpdesk L1, IT Support Junior, Service Desk y soporte técnico corporativo.