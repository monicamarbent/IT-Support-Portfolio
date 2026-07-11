USE it_support_lab;

-- 1. Show open tickets
SELECT *
FROM tickets
WHERE ticket_status = 'Open';

-- 2. Show high and critical priority tickets
SELECT *
FROM tickets
WHERE priority IN ('High', 'Critical')
ORDER BY priority;

-- 3. Show locked or disabled accounts
SELECT *
FROM users
WHERE account_status IN ('Locked', 'Disabled');

-- 4. Show each ticket with the affected user
SELECT
    tickets.ticket_id,
    users.full_name,
    users.department,
    tickets.title,
    tickets.category,
    tickets.priority,
    tickets.ticket_status
FROM tickets
INNER JOIN users
    ON tickets.user_id = users.user_id
ORDER BY tickets.ticket_id;