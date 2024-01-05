-- Create Customer table
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20)
    -- Add other attributes as needed
);	

-- Create Movie table
CREATE TABLE Movie (
    MovieID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    Genre VARCHAR(255),
    ReleaseDate DATE,
    Rating VARCHAR(10)
);

-- Create Ticket table
CREATE TABLE Ticket (
    TicketID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    MovieID INT REFERENCES Movie(MovieID),
    SeatNumber VARCHAR(10),
    Price DECIMAL(8, 2)
);

-- Create Concession table
CREATE TABLE Concession (
    ConcessionID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    Item VARCHAR(255),
    Quantity INT,
    Price DECIMAL(8, 2)
);



-- Insert data into Customer table
INSERT INTO Customer (Name, Email, Phone)
VALUES
    ('John Doe', 'john.doe@example.com', '123-456-7890'),
    ('Jane Smith', 'jane.smith@example.com', '987-654-3210'),
    ('Bob Johnson', 'bob.johnson@example.com', '555-123-4567');

-- Insert data into Movie table
INSERT INTO Movie (Title, Genre, ReleaseDate, Rating)
VALUES
    ('The Matrix', 'Action', '1999-03-31', 'R'),
    ('Inception', 'Sci-Fi', '2010-07-16', 'PG-13'),
    ('Titanic', 'Romance', '1997-12-19', 'PG-13');

-- Insert data into Ticket table
INSERT INTO Ticket (CustomerID, MovieID, SeatNumber, Price)
VALUES
    (1, 1, 'A1', 12.99),
    (2, 2, 'B3', 14.99),
    (3, 3, 'C5', 9.99);

-- Insert data into Concession table
INSERT INTO Concession (CustomerID, Item, Quantity, Price)
VALUES
    (1, 'Popcorn', 2, 5.99),
    (2, 'Soda', 1, 2.99),
    (3, 'Candy', 3, 1.99);
   
   
   
