# Issue 002 - Unknown Column

## Problem

A SQL query referenced a column that did not exist in the selected table.

## Example Error

```text
Error Code: 1054. Unknown column 'user_name' in 'field list'
```

## Cause

The query contained an incorrect column name.

Example:

```sql
SELECT user_name
FROM users;
```

The `users` table does not contain a column called `user_name`.

The correct column name is:

```text
full_name
```

## Diagnosis

The structure of the table was checked with:

```sql
DESCRIBE users;
```

This command displayed the valid columns available in the `users` table.

## Resolution

The query was corrected by replacing the incorrect column name:

```sql
SELECT full_name
FROM users;
```

## Result

The corrected query executed successfully and returned the names stored in the `users` table.

## Learning Point

When MySQL returns an unknown-column error, check the spelling of the column and review the table structure with `DESCRIBE`.