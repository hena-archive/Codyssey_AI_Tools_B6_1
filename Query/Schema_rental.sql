CREATE TABLE rental (
    rental_id INTEGER PRIMARY KEY,
    rental_member_id INTEGER NOT NULL,
    rental_book_id INTEGER NOT NULL,
    rental_date DATETIME NOT NULL,
    rental_due_date DATETIME NOT NULL,

    CONSTRAINT fk_rental_member
        FOREIGN KEY (rental_member_id)
        REFERENCES member(member_id),

    CONSTRAINT fk_rental_book
        FOREIGN KEY (rental_book_id)
        REFERENCES book(book_id)
);

ALTER TABLE rental
ADD COLUMN returned_date DATETIME;