USE it_support_lab;

INSERT INTO users (
    full_name,
    email,
    department,
    account_status
)
VALUES
    ('Ana Gomez', 'ana.gomez@company.local', 'Finance', 'Active'),
    ('Luis Perez', 'luis.perez@company.local', 'Sales', 'Active'),
    ('Carlos Ruiz', 'carlos.ruiz@company.local', 'Operations', 'Locked'),
    ('Laura Martin', 'laura.martin@company.local', 'Human Resources', 'Disabled'),
    ('Sofia Torres', 'sofia.torres@company.local', 'IT Support', 'Active');

INSERT INTO tickets (
    user_id,
    title,
    category,
    priority,
    ticket_status,
    description
)
VALUES
    (1, 'Cannot access shared finance folder', 'Permissions', 'High', 'Open',
     'The user receives an access denied message when opening the Finance shared folder.'),

    (2, 'Password reset request', 'Account', 'Medium', 'Resolved',
     'The user forgot the domain password and requested a reset.'),

    (3, 'Account locked after failed login attempts', 'Account', 'High', 'In Progress',
     'The account was locked after several incorrect password attempts.'),

    (4, 'Unable to connect to VPN', 'VPN', 'High', 'Open',
     'The VPN client cannot establish a connection to the company network.'),

    (5, 'DNS name resolution failure', 'Network', 'Critical', 'In Progress',
     'The workstation can ping the server IP but cannot resolve its hostname.'),

    (1, 'Microsoft Outlook not opening', 'Software', 'Medium', 'Closed',
     'Outlook stopped responding during startup and required profile troubleshooting.');