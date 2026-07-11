# Issue 001 - Duplicate Entry

## Problem

An attempt to insert a user with an email address that already existed in the `users` table produced a duplicate-entry error.

## Example Error

```text
Error Code: 1062. Duplicate entry for key 'users.email'
```

## Cause

The `email` column was configured with the `UNIQUE` constraint.

This means that two users cannot have the same email address.

## Diagnosis

The existing record was checked with:

```sql
SELECT *
FROM users
WHERE email = 'ana.gomez@company.local';
```

## Resolution

A different email address must be used, or the existing user record must be updated instead of inserting another duplicate record.

Example:

```sql
UPDATE users
SET department = 'Accounting'
WHERE email = 'ana.gomez@company.local';
```

## Result

The duplicate-entry error was avoided and the uniqueness of user email addresses was preserved.

## Learning Point

Unique constraints help prevent duplicate data and maintain database integrity.