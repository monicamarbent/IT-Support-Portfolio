# Issue 003 - Safe Update Mode

## Problem

MySQL Workbench prevented an `UPDATE` statement from running.

## Example Error

```text
Error Code: 1175. You are using safe update mode
```

## Cause

The query attempted to update records without using a key column in the `WHERE` clause.

Example:

```sql
UPDATE users
SET account_status = 'Active'
WHERE department = 'Operations';
```

MySQL Workbench safe-update mode helps prevent accidental changes to multiple records.

## Diagnosis

The query was reviewed to identify the exact user that needed to be modified.

The primary key of the `users` table is:

```text
user_id
```

## Resolution

The query was rewritten using the primary key:

```sql
UPDATE users
SET account_status = 'Active'
WHERE user_id = 3;
```

Using a primary key makes the update more precise and reduces the risk of modifying unrelated records.

## Result

The intended user account was updated successfully without affecting other users.

## Learning Point

Use a precise `WHERE` condition, preferably based on a primary key, before running `UPDATE` or `DELETE` statements.