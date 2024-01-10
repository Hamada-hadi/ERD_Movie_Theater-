-- Inserting sample data into Customer
INSERT INTO Customer (first_name, last_name, address, billing_info) VALUES
    ('John', 'Doe', '123 Main St', 'Credit Card'),
    ('Jane', 'Smith', '456 Oak Ave', 'PayPal');

-- Inserting sample data into Movie
INSERT INTO Movie (title, genre, rating) VALUES
    ('Inception', 'Sci-Fi', 'PG-13'),
    ('The Shawshank Redemption', 'Drama', 'R');

-- Inserting sample data into Ticket
INSERT INTO Ticket (customer_id, movie_id, seat_number) VALUES
    (1, 1, 'A1'),
    (2, 2, 'B3');

-- Inserting sample data into Concession
INSERT INTO Concession (customer_id, name, price) VALUES
    (1, 'Popcorn', 5.99),
    (2, 'Soda', 2.99);

-- Inserting sample data into Showtime
INSERT INTO Showtime (movie_id, start_timestamp, end_timestamp) VALUES
    (1, '2024-01-10 18:00:00', '2024-01-10 21:00:00'),
    (2, '2024-01-10 19:30:00', '2024-01-10 22:30:00');

-- Inserting sample data into Review
INSERT INTO Review (customer_id, movie_id, rating, comment) VALUES
    (1, 1, 4, 'Great movie!'),
    (2, 2, 5, 'Fantastic performance!');
   
