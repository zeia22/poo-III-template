-- Active: 1698684494189@@127.0.0.1@3306
CREATE TABLE users (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
    created_at TEXT 
);

CREATE TABLE accounts (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    owner_id TEXT NOT NULL,
    balance REAL DEFAULT (0) NOT NULL,
    created_at TEXT,
    FOREIGN KEY (owner_id) REFERENCES users (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO users (id, name, email, password)
VALUES
	('u001', 'Fulano', 'fulano@email.com', 'fulano123'),
	('u002', 'Beltrana', 'beltrana@email.com', 'beltrana00');

INSERT INTO accounts (id, owner_id)
VALUES
	('a001', 'u001'),
	('a002', 'u002');

DROP TABLE users;
SELECT * FROM users;

DROP TABLE accounts;

SELECT * FROM accounts;

