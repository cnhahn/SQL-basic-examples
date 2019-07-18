DROP SCHEMA Lab1 CASCADE; 							
CREATE SCHEMA Lab1;									

ALTER ROLE cnhahn SET SEARCH_PATH to Lab1;

CREATE TABLE Authors(
authorID integer,
authorName varchar(30),
address varchar(30),
numBooksWritten integer,
mostRecentPubDate date,
PRIMARY key(authorID)
);

CREATE TABLE Books(
bookID char(6),
authorID integer,
bookName varchar(30),
publisherID integer,
pubDate date,
price decimal(6,2),
category char(1),
lastOrderDate date,
totalOrdered integer,
PRIMARY key(bookID)
);

CREATE TABLE Publishers(
publisherID integer,
publisherName varchar(30),
address varchar(30),
PRIMARY key(publisherID)
);

CREATE TABLE Members(
memberID integer,
memberName varchar(30),
joinDate date,
renewalDate date,
isCurrentMember boolean,
PRIMARY key(memberID)
);

CREATE TABLE Orders(
memberID integer,
bookID char(6),
orderDate date,
quantity integer,
PRIMARY key(memberID, bookID, orderDate)
);

CREATE TABLE Reviews(
reviewerID integer,
bookID char(6),
reviewDate date,
reviewStars integer,
PRIMARY key(reviewerID, bookID)
);
