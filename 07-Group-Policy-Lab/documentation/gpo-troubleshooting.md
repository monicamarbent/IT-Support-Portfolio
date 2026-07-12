# GPO Troubleshooting Report

## Incident Summary

The Group Policy Object `FIN-Disable-Control-Panel` was linked to the `Finanzas` Organizational Unit, but the user `Ana Gomez` could still open Control Panel on the client computer.

## Environment

- Domain: `monicalab.local`
- Domain Controller: `DC01`
- Client: `W11-CL01`
- User: `MONICALAB\ana.gomez`
- GPO: `FIN-Disable-Control-Panel`
- Target OU: `Departamentos/Finanzas`

## Symptoms

- Control Panel opened normally.
- The restriction message did not appear.
- `gpresult /r` showed no applied user GPOs.
- `Applied Group Policy Objects` displayed `N/A`.

## Investigation

The following command was executed on the client:

```cmd
gpresult /r
```

The result showed that the user account was located in:

```text
CN=Ana Gomez,OU=Usuarios,DC=monicalab,DC=local
```

However, the GPO was linked to:

```text
OU=Finanzas,OU=Departamentos,DC=monicalab,DC=local
```

The user belonged to the security group `GG_Finanzas_RW`, but security-group membership does not automatically move a user into an Organizational Unit or make an OU-linked GPO apply.

## Root Cause

The user account was located in the wrong Organizational Unit.

Because `Ana Gomez` was stored in the `Usuarios` OU, the user was outside the scope of the GPO linked to the `Finanzas` OU.

## Resolution

1. Opened Active Directory Users and Computers on `DC01`.
2. Located `Ana Gomez` in the `Usuarios` OU.
3. Moved the user to:

```text
Departamentos
└── Finanzas
```

4. Updated Group Policy on `W11-CL01`:

```cmd
gpupdate /force
```

5. Logged off the user:

```cmd
shutdown /l
```

6. Signed back in as:

```text
MONICALAB\ana.gomez
```

7. Verified the applied GPO:

```cmd
gpresult /r
```

8. Confirmed that the following appeared under `Applied Group Policy Objects`:

```text
FIN-Disable-Control-Panel
```

9. Tested the restriction:

```cmd
control
```

Windows displayed a restrictions message and blocked access to Control Panel.

## Result

The GPO applied successfully after the user was moved to the correct Organizational Unit.

## Key Lessons

- OU-linked GPOs apply only to users or computers inside the linked OU or its child OUs.
- Security-group membership and OU placement are separate concepts.
- `gpresult /r` is useful for confirming which GPOs were applied or filtered out.
- `gpupdate /force` refreshes policy, but logging off may still be required for user policies.
- Distinguished Names help verify the exact location of an Active Directory object.