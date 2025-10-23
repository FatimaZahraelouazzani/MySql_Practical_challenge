--1/ Insert data
insert into authors (name, country) 
values
    ("J.K. Rowling" , "UK"),
    ("George R.R. Martin", "USA"),
    ("Haruki Murakami", "Japan");

insert into books (title, published_year, author_id) 
values 
    (" Harry Potter and the Philosopher' s Stone" ,"1997", 1),
    ("A Game of Thrones","1996", 2),
    ("Kafka on the Shore", "2002", 3), 
    ("Norwegian Wood", "1987", 3);

--2/ Query data
select * from authors;
select * from books;

select title from books where published_year > 1990;

select * from books where author_id = ( select author_id from authors where name = "Haruki Murakami" );

--3/ Update Data

Update authors set published_year = "1989" where title = "Norwegian Wood";
Update books set country = "United Kingdom" where title = "J.K. Rowling";

--4/ Delete data
Delete from book where title = "Kafka on the Shore";

delete from book where title = "George R.R. Martin";
delete from authors where name = "A Game of Thrones";
