select count(*) from Track;
select count(*) from Artist;

SELECT Track.Name AS Title, Genre.Name AS Style
FROM Track
INNER JOIN Genre ON Track.GenreId=Genre.GenreId
WHERE Genre.Name = 'Jazz';

SELECT Track.Name, Genre.Name, MediaType.Name
from ((Track
INNER JOIN Genre ON Track.GenreId=Genre.GenreId)
INNER JOIN MediaType ON Track.MediaTypeId=MediaType.MediaTypeId)
WHERE MediaType = "Protected AAC audio file";

SELECT Customer.FirstName, Customer.LastName AS CustName, Invoice.InvoiceDate, Invoice.Total
FROM Customer
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
ORDER BY Total desc, InvoiceDate;

INSERT INTO Track (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES ("I Will Follow", 348, 2, 1, "U2", 250000, 1235, 0.99),
("Twilight", 348, 2, 1, "U2", 250000, 1235, 0.99),
("An Cat Dubh", 348, 2, 1, "U2", 250000, 1235, 0.99),
("Into the Heart", 348, 2, 1, "U2", 250000, 1235, 0.99),
("Out of Control", 348, 2, 1, "U2", 250000, 1235, 0.99),
("Stories for Boys", 348, 2, 1, "U2", 250000, 1235, 0.99),
("The Ocean", 348, 2, 1, "U2", 250000, 1235, 0.99),
("A Day Without Me", 348, 2, 1, "U2", 250000, 1235, 0.99);