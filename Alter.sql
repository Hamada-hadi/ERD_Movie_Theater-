-- Adding Alteration to Concession table
ALTER TABLE Concession ADD COLUMN expiration_date DATE;

-- Updating sample data for the new column
UPDATE Concession SET expiration_date = '2024-12-31' WHERE concession_id = 1;
UPDATE Concession SET expiration_date = '2023-06-30' WHERE concession_id = 2;
