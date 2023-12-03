DROP Database Library_Mgmt_Sys;

CREATE DATABASE Library_Mgmt_Sys;

USE Library_Mgmt_Sys;

CREATE TABLE LibraryUsers (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VarChar (50),
    Password VarChar (20),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    RegistrationDate DATE
);


CREATE TABLE Libraries (
    LibraryID INT AUTO_INCREMENT PRIMARY KEY,
    LibraryName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    EstablishedYear INT,
    Website VARCHAR(255)
);


CREATE TABLE LibraryBooks (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Publication_Year INT,
    Publisher VARCHAR(100),
    Copies_Available INT,
    Total_Copies INT,
    Checked_Out INT,
    LibraryName VARCHAR(255) NOT NULL
   # FOREIGN KEY (LibraryName) REFERENCES Libraries(LibraryName)
);


CREATE TABLE LibraryLoans (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    ISBN VARCHAR(13),
    LoanDate DATE,
    DueDate DATE,
    FOREIGN KEY (UserID) REFERENCES LibraryUsers(UserID),
    FOREIGN KEY (ISBN) REFERENCES LibraryBooks(ISBN)
);


INSERT INTO LibraryUsers (UserID, Username, Password, FirstName, LastName, Email, Phone, Address, City, State, ZipCode, RegistrationDate) VALUES
(1, 'john.doe@example.com','password', 'John', 'Doe', 'john.doe@example.com', '555-123-4567', '123 Main St', 'Los Angeles', 'CA', '90001', '2023-10-01'),
(2, 'alice.smith@example.com', 'password', 'Alice', 'Smith', 'alice.smith@example.com', '555-987-6543', '456 Elm St', 'New York', 'NY', '10001', '2023-10-02'),
(3, 'michael.johnson@example.com', 'password','Michael', 'Johnson', 'michael.johnson@example.com', '555-555-5555', '789 Oak St', 'Chicago', 'IL', '60601', '2023-10-03'),
(4, 'emily.brown@example.com','password','Emily', 'Brown', 'emily.brown@example.com',  '555-111-2222', '321 Pine St', 'Houston', 'TX', '77001', '2023-10-04'),
(5, 'william.davis@example.com', 'password','William', 'Davis', 'william.davis@example.com', '555-444-3333', '567 Birch St', 'Phoenix', 'AZ', '85001', '2023-10-05'),
(6, 'emma.jones@example.com','password','Emma', 'Jones', 'emma.jones@example.com', '555-999-8888', '654 Cedar St', 'Philadelphia', 'PA', '19101', '2023-10-06'),
(7, 'james.wilson@example.com','password', 'James', 'Wilson', 'james.wilson@example.com', '555-777-6666', '432 Redwood St', 'San Antonio', 'TX', '78201', '2023-10-07'),
(8, 'olivia.taylor@example.com','password', 'Olivia', 'Taylor', 'olivia.taylor@example.com', '555-123-7890', '876 Maple St', 'San Diego', 'CA', '92101', '2023-10-08'),
(9, 'alexander.anderson@example.com','password','Alexander', 'Anderson', 'alexander.anderson@example.com', '555-987-6543', '987 Willow St', 'San Francisco', 'CA', '94101', '2023-10-09'),
(10, 'sophia.martinez@example.com','password','Sophia', 'Martinez', 'sophia.martinez@example.com', '555-555-5555', '345 Oakwood St', 'Miami', 'FL', '33101', '2023-10-10'),
(11, 'daniel.hernandez@example.com','password','Daniel', 'Hernandez',  'daniel.hernandez@example.com', '555-111-2222', '567 Palm St', 'Dallas', 'TX', '75201', '2023-10-11'),
(12, 'ava.lopez@example.com','password','Ava', 'Lopez', 'ava.lopez@example.com', '555-444-3333', '234 Cedarwood St', 'Seattle', 'WA', '98101', '2023-10-12'),
(13, 'ethan.garcia@example.com','password','Ethan', 'Garcia', 'ethan.garcia@example.com', '555-999-8888', '123 Birchwood St', 'Denver', 'CO', '80201', '2023-10-13'),
(14, 'isabella.rodriguez@example.com','password','Isabella', 'Rodriguez', 'isabella.rodriguez@example.com', '555-777-6666', '432 Oakdale St', 'Atlanta', 'GA', '30301', '2023-10-14'),
(15, 'mason.smith@example.com','password','Mason', 'Smith', 'mason.smith@example.com', '555-123-7890', '345 Pinewood St', 'Boston', 'MA', '02101', '2023-10-15'),
(16, 'oliver.wilson@example.com','password','Oliver', 'Wilson', 'oliver.wilson@example.com', '555-987-6543', '678 Spruce St', 'Las Vegas', 'NV', '89101', '2023-10-16'),
(17, 'sophia.taylor@example.com','password','Sophia', 'Taylor', 'sophia.taylor@example.com', '555-555-5555', '890 Oakside St', 'Portland', 'OR', '97201', '2023-10-17'),
(18, 'ethan.davis@example.com','password','Ethan', 'Davis', 'ethan.davis@example.com', '555-111-2222', '123 Pineville St', 'Detroit', 'MI', '48201', '2023-10-18'),
(19, 'amelia.martinez@example.com','password','Amelia', 'Martinez', 'amelia.martinez@example.com', '555-444-3333', '789 Fir St', 'Minneapolis', 'MN', '55401', '2023-10-19'),
(20, 'liam.gonzalez@example.com','password','Liam', 'Gonzalez', 'liam.gonzalez@example.com', '555-999-8888', '456 Cedarhill St', 'Cleveland', 'OH', '44101', '2023-10-20'),
(21, 'charlotte.anderson@example.com','password','Charlotte', 'Anderson', 'charlotte.anderson@example.com', '555-777-6666', '654 Oakridge St', 'Orlando', 'FL', '32801', '2023-10-21'),
(22,  'noah.brown@example.com','password','Noah', 'Brown', 'noah.brown@example.com', '555-123-7890', '234 Elmwood St', 'San Jose', 'CA', '95101', '2023-10-22'),
(23, 'amelia.hernandez@example.com', 'password','Amelia', 'Hernandez', 'amelia.hernandez@example.com', '555-987-6543', '987 Redwood St', 'Tampa', 'FL', '33601', '2023-10-23'),
(24, 'aiden.smith@example.com','password','Aiden', 'Smith', 'aiden.smith@example.com', '555-555-5555', '876 Maplewood St', 'New Orleans', 'LA', '70101', '2023-10-24'),
(25, 'mia.wilson@example.com', 'password','Mia', 'Wilson', 'mia.wilson@example.com', '555-111-2222', '345 Pineville St', 'Honolulu', 'HI', '96801', '2023-10-25');


INSERT INTO Libraries (LibraryID, LibraryName, Address, City, State, ZipCode, Phone, Email, EstablishedYear, Website) VALUES
(1, 'Central Library', '123 Main St', 'Los Angeles', 'CA', '90001', '555-123-4567', 'central@example.com', 1990, 'www.examplelibrary.org'),
(2, 'Downtown Public Library', '456 Elm St', 'New York', 'NY', '10001', '555-987-6543', 'downtown@example.com', 1985, 'www.downtownlibrary.org'),
(3, 'City Heights Library', '789 Oak St', 'Chicago', 'IL', '60601', '555-555-5555', 'cityheights@example.com', 2000, 'www.cityheightslibrary.org'),
(4, 'Main Street Library', '321 Pine St', 'Houston', 'TX', '77001', '555-111-2222', 'mainstreet@example.com', 1975, 'www.mainstreetlibrary.org'),
(5, 'Phoenix Public Library', '567 Birch St', 'Phoenix', 'AZ', '85001', '555-444-3333', 'phoenix@example.com', 1965, 'www.phoenixlibrary.org');

INSERT INTO LibraryBooks (ISBN, Title, Author, Genre, Publication_Year, Publisher, Total_Copies, Checked_Out, Copies_Available, LibraryName) VALUES
('9780061120080', 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 'Harper Collins', 5, 2, 3, 'Central Library'),
('9781984819191', '1984', 'George Orwell', 'Science Fiction', 1949, 'Penguin Books', 3, 0, 3, 'Downtown Public Library'),
('9780060935462', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 'Little, Brown and Company',  4, 1, 3, 'City Heights Library'),
('9781400031363', 'One Flew Over the Cuckoo''s Nest', 'Ken Kesey', 'Fiction', 1962, 'Penguin Classics', 2, 0, 2, 'Main Street Library'),
('9780679783264', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 'Vintage Books', 4, 2, 2, 'Phoenix Public Library'),
('9780380002935', 'To the Lighthouse', 'Virginia Woolf', 'Fiction', 1927, 'Doubleday', 3, 1, 2, 'Central Library'),
('9780765377066', 'Dune', 'Frank Herbert', 'Science Fiction', 1965, 'Ace Books', 4, 1, 3, 'Downtown Public Library'),
('9780345803507', 'Gone with the Wind', 'Margaret Mitchell', 'Historical Fiction', 1936, 'Vintage Books', 2, 0,2, 'City Heights Library'),
('9780143039958', 'Middlemarch', 'George Eliot', 'Fiction', 1871, 'Penguin Classics', 4, 1,3, 'Main Street Library'),
('9780553418020', 'The Martian', 'Andy Weir', 'Science Fiction', 2011, 'Broadway Books', 5, 0, 5,'Phoenix Public Library'),
('9780060929873', 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Magical Realism', 1967, 'Harper & Row',  5, 1, 4,'Central Library'),
('9780451524932', 'Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 1953, 'Del Rey Books', 4, 1, 3, 'Downtown Public Library'),
('9780380002934', 'The Metamorphosis', 'Franz Kafka', 'Fiction', 1915, 'Doubleday', 4, 0, 4,'City Heights Library'),
('9780765377068', 'The Time Machine', 'H.G. Wells', 'Science Fiction', 1895, 'Ace Books', 4, 1, 3, 'Main Street Library'),
('9780140445863', 'Crime and Punishment', 'Fyodor Dostoevsky', 'Fiction', 1866, 'Penguin Classics',  4, 1, 3, 'Phoenix Public Library'),
('9780192835467', 'Pride and Prejudice', 'Jane Austen', 'Fiction', 1813, 'Oxford University Press', 5, 1, 4, 'Central Library'),
('9780385515043', 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003, 'Doubleday', 3, 0, 3, 'Downtown Public Library'),
('9780062024028', 'The Hunger Games', 'Suzanne Collins', 'Young Adult', 2008, 'Scholastic', 4, 1, 3, 'City Heights Library'),
('9780451524934', 'Moby-Dick', 'Herman Melville', 'Fiction', 1851, 'Signet Classics', 3, 1, 2, 'Main Street Library'),
('9780345803509', 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 'Houghton Mifflin', 4, 2, 2, 'Phoenix Public Library'),
('9780765377063', 'Brave New World', 'Aldous Huxley', 'Science Fiction', 1932, 'Harper & Brothers', 3, 1, 2, 'Central Library'),
('9780143039955', 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869, 'Penguin Classics',  4, 2, 2, 'Downtown Public Library'),
('9780553418025', 'The Road', 'Cormac McCarthy', 'Post-Apocalyptic', 2006, 'Vintage Books', 5, 1, 4, 'City Heights Library'),
('9780060929875', 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954, 'Houghton Mifflin',  5, 1, 4, 'Main Street Library'),
('9780451524938', 'The Shining', 'Stephen King', 'Horror', 1977, 'Anchor Books', 3, 0, 3, 'Phoenix Public Library'),
('9780679764024', 'The Bell Jar', 'Sylvia Plath', 'Fiction', 1963, 'Harper Perennial Modern Classics', 3, 1, 2, 'Central Library'),
('9780061122411', 'The Hitchhiker''s Guide to the Galaxy', 'Douglas Adams', 'Science Fiction', 1979, 'Del Rey Books', 5, 0, 5, 'Downtown Public Library'),
('9780142000670', 'Life of Pi', 'Yann Martel', 'Adventure', 2001, 'Mariner Books', 4, 1, 3,  'City Heights Library'),
('9780060850524', 'The Kite Runner', 'Khaled Hosseini', 'Fiction', 2003, 'Riverhead Books', 3, 0, 3,  'Main Street Library'),
('9780767908184', 'The Poisonwood Bible', 'Barbara Kingsolver', 'Fiction', 1998, 'Harper Perennial', 5, 1, 4, 'Phoenix Public Library'),
('9781400079270', 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mystery', 2005, 'Vintage Crime/Black Lizard',  5, 2, 3, 'Central Library'),
('9781594480003', 'The Secret Life of Bees', 'Sue Monk Kidd', 'Fiction', 2002, 'Penguin Books', 2, 0, 2, 'Downtown Public Library'),
('9780553382575', 'The Alchemist', 'Paulo Coelho', 'Fantasy', 1988, 'HarperOne',  4, 1, 3,  'City Heights Library'),
('9780385722205', 'The Lovely Bones', 'Alice Sebold', 'Fiction', 2002, 'Back Bay Books', 3, 0, 3, 'Main Street Library'),
('9780307387899', 'The Help', 'Kathryn Stockett', 'Historical Fiction', 2009, 'Penguin Books', 5, 1, 4, 'Phoenix Public Library'),
('9780743273565', 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 'Little, Brown and Company',  4, 0, 4, 'Central Library'),
('9780061122412', 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Science Fiction', 1969, 'Dell Publishing', 3, 1, 2, 'Downtown Public Library'),
('9780140187393', 'One Day in the Life of Ivan Denisovich', 'Aleksandr Solzhenitsyn', 'Historical Fiction', 1962, 'Penguin Classics', 2, 0, 2, 'City Heights Library'),
('9780765377069', 'Neuromancer', 'William Gibson', 'Science Fiction', 1984, 'Ace Books',  3, 1, 2, 'Main Street Library'),
('9780143039477', 'The Grapes of Wrath', 'John Steinbeck', 'Historical Fiction', 1939, 'Penguin Classics',  4, 0, 4, 'Phoenix Public Library'),
('9780061120081', 'Lord of the Flies', 'William Golding', 'Fiction', 1954, 'Perigee Books', 3, 1, 2, 'Central Library'),
('9780451524939', 'The Road Not Taken', 'Robert Frost', 'Poetry', 1916, 'Signet Classics', 5, 2, 3, 'Downtown Public Library'),
('9780141187761', 'The Picture of Dorian Gray', 'Oscar Wilde', 'Fiction', 1890, 'Penguin Classics', 4, 1, 3, 'City Heights Library'),
('9780064407663', 'Charlotte''s Web', 'E.B. White', 'Children''s Literature', 1952, 'HarperCollins',  3, 0, 3, 'Main Street Library'),
('9780142437230', 'The Odyssey', 'Homer', 'Epic Poetry', -800, 'Penguin Classics', 5, 1, 4, 'Phoenix Public Library'),
('9780060935463', 'The Sun Also Rises', 'Ernest Hemingway', 'Fiction', 1926, 'Scribner',  2, 0, 2, 'Central Library'),
('9780399501487', 'The Stand', 'Stephen King', 'Horror', 1978, 'Anchor Books', 4, 1, 3, 'Downtown Public Library'),
('9780345413351', 'A Game of Thrones', 'George R.R. Martin', 'Fantasy', 1996, 'Bantam Books', 5, 0, 5, 'City Heights Library'),
('9780553573404', 'Ender''s Game', 'Orson Scott Card', 'Science Fiction', 1985, 'Tor Books', 3, 1, 2, 'Main Street Library'),
('9780062315007', 'The Fault in Our Stars', 'John Green', 'Young Adult', 2012, 'Dutton Books', 2, 0, 2, 'Phoenix Public Library'),
('9780446310789', 'The Old Man and the Sea', 'Ernest Hemingway', 'Fiction', 1952, 'Scribner', 4, 1, 3, 'Central Library');



INSERT INTO LibraryLoans (UserID, ISBN, LoanDate, DueDate) VALUES
(1, '9780061120080', '2023-10-15', '2023-10-22'),
(2, '9781984819191', '2023-10-16', '2023-10-23'),
(3, '9780060935462', '2023-10-17', '2023-10-24'),
(4, '9781400031363', '2023-10-18', '2023-10-25'),
(5, '9780679783264', '2023-10-19', '2023-10-26'),
(6, '9780380002935', '2023-10-20', '2023-10-27'),
(7, '9780765377066', '2023-10-21', '2023-10-28'),
(8, '9780345803507', '2023-10-22', '2023-10-29'),
(9, '9780143039958', '2023-10-23', '2023-10-30'),
(10, '9780553418020', '2023-10-24', '2023-10-31'),
(11, '9780060929873', '2023-10-25', '2023-11-01'),
(12, '9780451524932', '2023-10-26', '2023-11-02'),
(13, '9780380002934', '2023-10-27', '2023-11-03'),
(14, '9780765377068', '2023-10-28', '2023-11-04'),
(15, '9780140445863', '2023-10-29', '2023-11-05'),
(16, '9780192835467', '2023-10-30', '2023-11-06'),
(17, '9780385515043', '2023-10-31', '2023-11-07'),
(18, '9780062024028', '2023-11-01', '2023-11-08'),
(19, '9780451524934', '2023-11-02', '2023-11-09'),
(20, '9780345803509', '2023-11-03', '2023-11-10'),
(21, '9780765377063', '2023-11-04', '2023-11-11'),
(22, '9780143039955', '2023-11-05', '2023-11-12'),
(23, '9780553418025', '2023-11-06', '2023-11-13'),
(24, '9780060929875', '2023-11-07', '2023-11-14'),
(25, '9780451524938', '2023-11-08', '2023-11-15');
