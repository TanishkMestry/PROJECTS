create database tanishk;
use tanishk;

#Q1. Create Table

create table Books
(BookID int primary key,
 Title varchar(50),
 Author varchar(50),
 PublicationYear year,
 Genre varchar(30));
 select * from Books;
 
 create table Members
 (MemberID int primary key,
 FirstName varchar(30),
 LastName varchar(30),
 Email varchar(30),
 MembershipDate date);
 select * from Members;
 
create table Loans
 (LoanID int primary key,
 BookID int,
 MemberID int,
 LoanDate date,
 ReturnDate date,
 foreign key (BookID) references Books(BookID),
 foreign key (MemberID) references Members(MemberID));
 select * from Loans; 
 describe Loans;
 
create table Authors
 (AuthorID int primary key,
 AuthorName varchar(30),
 BirthYear year);
 select * from Authors; 
 
create table BookAuthors
 (BookID int,
 AuthorID int,
 foreign key (BookID) references Books(BookID),
 foreign key (AuthorID) references Authors(Authorid));
 select * from BookAuthors; 
 describe Bookauthors;
 
  create table Fines
 (FineID int primary key,
 LoanID int,
 FineAmount decimal(8,2),
 PaidDate date,
 foreign key (LOanID) references Loans(LoanID));
 select * from Fines; 
 describe FInes;
 
 #2. Insert Records:
 INSERT INTO Books (BookID, Title, Author, PublicationYear, Genre) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
(3, '1984', 'George Orwell', 1949, 'Dystopian'),
(4, 'Moby Dick', 'Herman Melville', 1851, 'Adventure'),
(5, 'War and Peace', 'Leo Tolstoy', 1869, 'Historical'),
(6, 'Pride and Prejudice', 'Jane Austen', 1813, 'Romance'),
(7, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction'),
(8, 'The Odyssey', 'Homer', -800, 'Epic'),
(9, 'Brave New World', 'Aldous Huxley', 1932, 'Dystopian'),
(10, 'The Hobbit', 'J.R.R. Tolkien', 1937, 'Fantasy'),
(11, 'The Teaching of Science', 'John Smith', 1999, 'Educational'),
(12, 'Physics for Beginners', 'Isaac Newton', 2001, 'Science'),
(13, 'The Art of SQL', 'John Doe', 2006, 'Technical');

INSERT INTO Members (MemberID, FirstName, LastName, Email, MembershipDate) VALUES
(101, 'John', 'Doe', 'john.doe@example.com', '2023-01-01'),
(102, 'Jane', 'Smith', 'jane.smith@example.com', '2022-05-15'),
(103, 'Michael', 'Johnson', 'michael.johnson@example.com', '2024-03-11'),
(104, 'Emily', 'Williams', 'emily.williams@example.com', '2023-07-09'),
(105, 'David', 'Jones', 'david.jones@example.com', '2024-06-14'),
(106, 'Sarah', 'Brown', 'sarah.brown@example.com', '2023-02-20'),
(107, 'Chris', 'Davis', 'chris.davis@example.com', '2024-09-08'),
(108, 'Olivia', 'Martinez', 'olivia.martinez@example.com', '2023-11-13'),
(109, 'James', 'Garcia', 'james.garcia@example.com', '2024-01-27'),
(110, 'Sophia', 'Miller', 'sophia.miller@example.com', '2022-08-30'),
(111, 'Daniel', 'Wilson', 'daniel.wilson@example.com', '2024-04-04'),
(112, 'Grace', 'Anderson', 'grace.anderson@example.com', '2024-08-21'),
(113, 'Alice', 'Wonder', 'alice.wonder@example.com', '2023-09-09');

INSERT INTO Loans (LoanID, BookID, MemberID, LoanDate, ReturnDate) VALUES
(201, 1, 101, '2024-01-10', '2024-01-20'),
(202, 2, 101, '2024-02-05', NULL),
(203, 3, 101, '2024-03-11', '2024-03-20'),
(204, 4, 101, '2024-04-15', '2024-04-25'),
(205, 5, 101, '2024-05-18', NULL),
(206, 6, 101, '2024-06-22', '2024-06-30'),
(207, 1, 102, '2024-01-05', '2024-01-15'),
(208, 2, 102, '2024-03-10', NULL),
(209, 3, 102, '2024-04-15', '2024-04-25'),
(210, 4, 102, '2024-05-18', '2024-06-01'),
(211, 5, 102, '2024-07-20', '2024-08-05'),
(212, 6, 102, '2024-08-25', NULL),
(213, 1, 103, '2024-02-15', '2024-02-25'),
(214, 1, 104, '2024-03-12', '2024-03-20'),
(215, 1, 105, '2024-04-20', NULL),
(216, 1, 106, '2024-05-15', '2024-05-25'),
(217, 1, 107, '2024-06-12', '2024-06-22'),
(218, 2, 103, '2024-01-12', '2024-01-22'),
(219, 2, 104, '2024-02-18', '2024-02-28'),
(220, 2, 105, '2024-04-25', NULL),
(221, 3, 106, '2024-05-10', '2024-05-20'),
(222, 4, 107, '2024-06-15', '2024-06-25'),
(223, 5, 108, '2024-07-12', '2024-07-22'),
(224, 6, 109, '2024-08-10', '2024-08-20');

INSERT INTO Authors (AuthorID, AuthorName, BirthYear) VALUES
(301, 'F. Scott Fitzgerald', 1896),
(302, 'Harper Lee', 1926),
(303, 'George Orwell', 1903),
(304, 'Herman Melville', 1819),
(305, 'Leo Tolstoy', 1828),
(306, 'Jane Austen', 1775),
(307, 'J.D. Salinger', 1919),
(308, 'Homer', -800),
(309, 'Aldous Huxley', 1894),
(310, 'J.R.R. Tolkien', 1892),
(311, 'John Smith', 1950),
(312, 'Isaac Newton', 1643),
(313, 'John Doe', 1965);

INSERT INTO BookAuthors (BookID, AuthorID) VALUES
(1, 301), (2, 302), (3, 303), (4, 304), (5, 305),
(6, 306), (7, 307), (8, 308), (9, 309), (10, 310),
(11, 311), (12, 312), (13, 313);

INSERT INTO Fines (FineID, LoanID, FineAmount, PaidDate) VALUES
(401, 201, 5.00, '2024-01-25'),
(402, 202, 0.00, NULL),
(403, 203, 7.50, '2024-03-25'),
(404, 204, 3.00, NULL),
(405, 205, 0.00, '2024-05-01'),
(406, 206, 6.00, '2024-07-01'),
(407, 207, 1.50, '2024-02-20'),
(408, 208, 4.00, '2024-03-15'),
(409, 209, 0.00, '2024-04-01'),
(410, 210, 5.00, '2024-06-10'),
(411, 211, 2.50, '2024-07-01'),
(412, 212, 3.00, NULL);



#3
SELECT * FROM books 
where Publicationyear<2000;

#4
SELECT * from loans
where year(Loandate)=2024 and ReturnDate is null;

#5
select * from books 
where title like "%science%";

#6
select Title,
case
when LoanID is not null and ReturnDate is null then 'Checked Out'
else 'Available'
end as Availability
from Books
left join Loans on Books.BookID = Loans.BookID;

#7
select memberid 
from members
 where memberid in(
 select memberid 
 from loans 
group by memberid
having count(bookid) >5);

#8
select memberid, 
count(bookid) as TotalBorrowed 
from loans 
group by memberID;

#9
select loanid, sum(fineamount) as totalfine
from fines
group by loanid
having sum(fineamount)>10;

#10
select books.title, count(loans.bookid) as "Frequently Borrowed Books"
from books 
join loans on books.bookid=loans.bookid
group by books.title
order by "Frequently Borrowed Books" desc limit 5;

#11
select b.Title, l.Loandate, l.Returndate
 from 
 loans l 
 inner join 
 books b on l.bookid=b.bookid;
 
 #12
 select b.bookid,
 b.Title, b.PublicationYear, l.LoanDate, l.Returndate from books b
 left join loans l on
 b.bookid=l.bookid;