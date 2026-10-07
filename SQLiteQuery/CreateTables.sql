-- 카테고리 테이블 생성
CREATE TABLE IF NOT EXISTS category (
    category_id     INTEGER         PRIMARY KEY,
    name   VARCHAR(30)     NOT NULL UNIQUE
);

-- 북 테이블 생성
CREATE TABLE IF NOT EXISTS book (
    book_id             INTEGER     PRIMARY KEY,
    category_id         INTEGER     NOT NULL,
    author_name         VARCHAR(30) NOT NULL,
    editor_name         VARCHAR(30),
    translator_name     VARCHAR(30),
    publisher_name      VARCHAR(30) NOT NULL,
    name                VARCHAR(30) NOT NULL,

    CONSTRAINT fk_book_category
    FOREIGN KEY (category_id)
    REFERENCES category(category_id)
);

CREATE TABLE IF NOT EXISTS member(
    member_id           INTEGER     PRIMARY KEY,
    name                VARCHAR(30) NOT NULL,
    age                 INTEGER,
    email               VARCHAR(50),
    address             VARCHAR(50),
    phone_number        VARCHAR(20) NOT NULL,
    sex                 VARCHAR(10) NOT NULL,
    birth               DATETIME NOT NULL
);

CREATE TABLE IF NOT EXISTS rental (
    rental_id           INTEGER PRIMARY KEY,
    member_id           INTEGER NOT NULL,
    book_id             INTEGER NOT NULL,
    rental_date         DATETIME NOT NULL,
    rental_due_date     DATETIME NOT NULL,
    returned_date       DATETIME,

    CONSTRAINT fk_rental_member
        FOREIGN KEY (member_id)
        REFERENCES member(member_id),

    CONSTRAINT fk_rental_book
        FOREIGN KEY (book_id)
        REFERENCES book(book_id)
);
