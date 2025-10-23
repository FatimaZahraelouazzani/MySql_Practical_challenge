-- join authors and books;
Select Title As "Book Title" , name as "Author name" , country
from Books b join Authors a
on  b.author_id = a.author_id;

-- count books per authors
Select name as "Author name" , count(book_id) as "Book Count"
from books b join authors a
on a.author_id = b.author_id group by name;

-- Find authors with multiple books
Select name as "Author name" , count(book_id) as "Book Count"
from books b join authors a
on a.author_id = b.author_id 
group by name
having count(book_id)>1;

-- Oldest book
Select Title As "Book Title" ,min(published_year) as "Published Year"
from books; 

-- Average Publication Year
select avg(published_year) as "Average Published Year"
from books;

--Groupe per country
Select Country , count(author_id) as "Author Count"
from authors group by country;


