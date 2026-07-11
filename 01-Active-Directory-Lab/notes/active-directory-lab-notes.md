# Notas técnicas - Active Directory Lab

## Resumen

Este laboratorio se realizó con Windows Server 2022 como controlador de dominio y un equipo cliente Windows unido al dominio `monicalab.local`.

El objetivo fue practicar tareas básicas de soporte IT en un entorno corporativo Windows, incluyendo Active Directory, DNS, usuarios, grupos, carpetas compartidas, permisos y troubleshooting.

## Infraestructura

- Servidor: DC01
- Sistema operativo del servidor: Windows Server 2022
- Dominio: monicalab.local
- IP del servidor: 192.168.31.10
- Cliente: W11-CL01
- Entorno: VMware Workstation

## Elementos configurados

- Active Directory Domain Services
- Controlador de dominio
- DNS
- Usuarios de dominio
- Grupos de seguridad
- Carpetas compartidas
- Permisos NTFS
- Permisos de recurso compartido
- Cliente Windows unido al dominio

## Usuarios creados

- cocinero.pedidos
- ana.gomez
- luis.perez
- soporte.l1
- monica.admin

## Grupos creados

- GG_CocinaPedidos_RW
- GG_Finanzas_RW
- GG_ITSupport

## Recursos compartidos

- `\\DC01\Pedidos`
- `\\DC01\Finanzas`

## Comandos utilizados

### Comprobar configuración de red

```cmd
ipconfig
ipconfig /all