CREATE TABLE member (
    member_id INTEGER PRIMARY KEY,
    member_name VARCHAR(30) NOT NULL,
    member_age INTEGER,
    member_email VARCHAR(50) UNIQUE,
    member_address VARCHAR(50),
    member_phone_number VARCHAR(20) NOT NULL,
    member_sex VARCHAR(10) NOT NULL,
    member_birth DATETIME NOT NULL
);