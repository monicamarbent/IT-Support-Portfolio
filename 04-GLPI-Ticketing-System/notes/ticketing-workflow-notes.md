# Notas técnicas - Helpdesk Ticketing Workflow

## Resumen

Este documento recoge conceptos básicos sobre el flujo de trabajo de un sistema de ticketing tipo GLPI / Service Desk.

El objetivo es practicar cómo registrar, clasificar, priorizar, resolver, escalar y cerrar incidencias técnicas en un entorno de soporte IT.

## Ciclo de vida de un ticket

1. Recepción de la incidencia.
2. Registro del ticket.
3. Identificación del usuario afectado.
4. Identificación del equipo o recurso afectado.
5. Categorización de la incidencia.
6. Asignación de prioridad.
7. Diagnóstico inicial.
8. Resolución en primer nivel si es posible.
9. Escalado a segundo nivel si es necesario.
10. Documentación de la solución.
11. Confirmación con el usuario.
12. Cierre del ticket.

## Información mínima de un ticket

Un ticket debe incluir:

- Usuario afectado.
- Equipo afectado.
- Categoría.
- Prioridad.
- Estado.
- Descripción clara del problema.
- Pruebas realizadas.
- Solución aplicada.
- Resultado final.
- Si fue resuelto o escalado.

## Categorías habituales

- Access / Login
- Password Reset
- Account Locked
- Active Directory
- Network
- DNS
- Shared Folders
- VPN
- Remote Support
- Hardware
- Software
- Email
- Printer
- Escalation

## Prioridades

### Low

Incidencia menor. No bloquea el trabajo del usuario.

Ejemplo:

- Consulta general.
- Petición sin urgencia.
- Cambio menor.

### Medium

Afecta a un usuario, pero existe alternativa temporal.

Ejemplo:

- Problema con una aplicación no crítica.
- Acceso lento a un recurso.
- Incidencia individual sin bloqueo total.

### High

Bloquea el trabajo del usuario y requiere atención rápida.

Ejemplo:

- Usuario no puede iniciar sesión.
- No puede acceder a una carpeta necesaria.
- No puede conectarse por VPN para trabajar.

### Critical

Afecta a varios usuarios o a un servicio importante.

Ejemplo:

- Varios usuarios sin red.
- Caída de servidor.
- Servicio corporativo no disponible.

## Estados del ticket

### New

El ticket ha sido creado, pero todavía no se ha empezado a trabajar.

### In Progress

El técnico está revisando o diagnosticando la incidencia.

### Waiting for User

Se necesita respuesta o confirmación del usuario.

### Escalated

La incidencia se ha derivado a segundo nivel o a otro equipo técnico.

### Resolved

La incidencia ha sido resuelta técnicamente.

### Closed

El ticket se ha cerrado después de confirmar la solución.

## Buenas prácticas de documentación

- Escribir de forma clara y objetiva.
- No usar lenguaje informal.
- Indicar qué comandos o pruebas se realizaron.
- Documentar la causa si se conoce.
- Explicar la solución aplicada.
- Indicar si hubo escalado.
- Confirmar el resultado final.
- Evitar cerrar tickets sin comprobar con el usuario si el problema está resuelto.

## Ejemplo de descripción correcta

El usuario indica que no puede acceder a la carpeta compartida `\\DC01\Finanzas` desde el equipo W11-CL01. Se comprueba inicio de sesión, pertenencia a grupos y conectividad con el servidor.

## Ejemplo de mala descripción

No funciona la carpeta.

## Escalado a segundo nivel

Una incidencia debe escalarse cuando:

- El problema supera los permisos o conocimientos de Helpdesk L1.
- Afecta a servidores, infraestructura o servicios críticos.
- Requiere cambios en producción.
- Requiere intervención de redes, sistemas, seguridad o desarrollo.
- No se puede resolver con procedimientos conocidos.

## Ejemplo de escalado

El usuario no puede acceder a una aplicación interna. Se comprueba conectividad, credenciales y navegador. El problema persiste y afecta a varios usuarios. Se escala a segundo nivel para revisión del servicio.

## SLA

SLA significa Service Level Agreement.

Es el acuerdo que define tiempos de respuesta y resolución para las incidencias.

Ejemplo:

- Prioridad Low: resolución en varios días.
- Prioridad Medium: resolución durante la jornada.
- Prioridad High: atención prioritaria.
- Prioridad Critical: atención inmediata.

## Comunicación con el usuario

La comunicación debe ser clara, educada y orientada a resolver.

Ejemplo:

Hola, hemos revisado la incidencia. El problema estaba relacionado con la pertenencia a grupos de Active Directory. Hemos actualizado la sesión y confirmado que ya puedes acceder al recurso. Cerramos el ticket, pero si vuelve a ocurrir puedes responder a este mensaje.

## Aprendizajes clave

- Un ticket debe tener trazabilidad.
- La documentación es parte del trabajo técnico.
- No basta con resolver; hay que dejar constancia de lo realizado.
- La prioridad depende del impacto y la urgencia.
- No todo se resuelve en primer nivel.
- Escalar correctamente también es una habilidad técnica.
- Un buen ticket ayuda al siguiente técnico si el problema se repite.

## Conclusión técnica

Este flujo de trabajo permite simular tareas reales de Helpdesk L1 y Service Desk, especialmente relacionadas con registro de incidencias, diagnóstico inicial, comunicación con usuarios, escalado y cierre documentado de tickets.