CREATE TABLE aircraft_seat(
seat_id int NOT NULL,
seat_class_id int NOT NULL,
aircraft_id int NOT NULL,
PRIMARY KEY (seat_id),
FOREIGN KEY (aircraft_id) REFERENCES aircraft(aircraft_id),
FOREIGN KEY (seat_class_id) REFERENCES seat_class(seat_class_id)
);
