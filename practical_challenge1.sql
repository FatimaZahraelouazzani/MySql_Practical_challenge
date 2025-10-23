--practical challenge 1

--1/ create database
CREATE DATABASE bookstore;

--2/ Switch to the Bookstore database.
USE bookstore;

--3/ Create a table Authors
CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name varchar(100) NOT null,
    country varchar(100)
);

--3/ Create a table Books
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title varchar(150) NOT null,
    published_year Integer,
    author_id int ,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

-- 4/ Show the structure of both tables
desc Authors;
desc Books;

--5/ Drop the Books table, then re-create it.
Drop TABLE Books;
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title varchar(150) NOT null,
    published_year Integer,
    author_id int ,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

--6/ Drop the entire Bookstore database
drop DATABASE bookstore;