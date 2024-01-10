-- Creating Customer table
CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(150),
    billing_info VARCHAR(150)
);

select * from Customer;

-- Creating Movie table
CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    rating VARCHAR(10)
);

select * from Movie;


-- Creating Ticket table
CREATE TABLE Ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    movie_id INT REFERENCES Movie(movie_id),
    seat_number VARCHAR(10)
);

select * from Ticket;


-- Creating Concession table
CREATE TABLE Concession (
    concession_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    name VARCHAR(255),
    price DECIMAL(8,2)
);

select * from Concession;


-- Creating Showtime table
CREATE TABLE Showtime (
    time_id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES Movie(movie_id),
    start_timestamp TIMESTAMP,
    end_timestamp TIMESTAMP
);

select * from Showtime;


-- Creating Review table
CREATE TABLE Review (
    review_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES Customer(customer_id),
    movie_id INT REFERENCES Movie(movie_id),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT
);

select * from Review;




