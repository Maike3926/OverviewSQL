CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    active BOOLEAN
);

CREATE VIEW active_users_view AS
SELECT id, name, email
FROM users
WHERE active = true;
