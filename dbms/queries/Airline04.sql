CREATE TABLE booking(
booking_id int NOT NULL,
airline_id int NOT NULL,
customer_id int NOT NULL,
PRIMARY KEY (booking_id),
FOREIGN KEY (airline_id) REFERENCES airline(airline_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);