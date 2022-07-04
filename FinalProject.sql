# create a table named Authors
CREATE TABLE Authors (
	AuthorID INTEGER PRIMARY KEY auto_increment, 
    FullName VARCHAR(100) NOT NULL, 
    BirthCountry VARCHAR(100) NOT NULL
  );
  
  insert into Authors(FullName,BirthCountry)
  values
	("Jane Austen", "England"),
	("Charles Dickens", "England"),
	("Mark Twain", "United States");
    
select * from Authors;


CREATE TABLE Books(
BookID INTEGER PRIMARY KEY AUTO_INCREMENT, 
Name VARCHAR(100) NOT NULL, 
AuthorId INTEGER,
FOREIGN KEY (AuthorId )REFERENCES Authors(AuthorId));

insert into Books (Name, AuthorId)
values
("Pride and Prejudice",	1),
("Sense and Sensibility", 1),
("The Pickwick Papers",	2);

select * from Books;

select
	Books.Name AS "Book Title",
    Authors.FullName AS "Author's Name",
    Authors.BirthCountry AS "Author's Birth Country"
from
	Books inner join 
    Authors using (AuthorId);
    
create view AuthorBooks
AS
select
	Authors.FullName AS AuthorName,
    Books.Name AS BookName
from
	Books inner join 
    Authors using (AuthorId)
order by
	AuthorName;
    
Select * from authorbooks;