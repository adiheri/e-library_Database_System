CREATE TABLE Libraries (
    library_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location TEXT NOT NULL
);

CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL
);

CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    category_id INT NOT NULL,
    quantity INT NOT NULL,
    CONSTRAINT fk_author
        FOREIGN KEY(author_id) 
        REFERENCES Authors(author_id),
    CONSTRAINT fk_category
        FOREIGN KEY(category_id) 
        REFERENCES Categories(category_id)
);

CREATE TABLE LibraryBooks (
    library_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (library_id, book_id),
    CONSTRAINT fk_library
        FOREIGN KEY(library_id) 
        REFERENCES Libraries(library_id),
    CONSTRAINT fk_book
        FOREIGN KEY(book_id) 
        REFERENCES Books(book_id)
);

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Loans (
    loan_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    library_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT fk_user
        FOREIGN KEY(user_id) 
        REFERENCES Users(user_id),
    CONSTRAINT fk_library
        FOREIGN KEY(library_id) 
        REFERENCES Libraries(library_id),
    CONSTRAINT fk_book
        FOREIGN KEY(book_id) 
        REFERENCES Books(book_id)
);

CREATE TABLE Holds (
    hold_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    library_id INT NOT NULL,
    book_id INT NOT NULL,
    hold_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    CONSTRAINT fk_user
        FOREIGN KEY(user_id) 
        REFERENCES Users(user_id),
    CONSTRAINT fk_library
        FOREIGN KEY(library_id) 
        REFERENCES Libraries(library_id),
    CONSTRAINT fk_book
        FOREIGN KEY(book_id) 
        REFERENCES Books(book_id)
);
