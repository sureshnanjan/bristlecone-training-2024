CREATE TABLE booking_leg(
booking_leg_id int NOT NULL,
booking_id int NOT NULL,
leg_id int NOT NULL,
seat_id int NOT NULL,

PRIMARY KEY (booking_leg_id),
FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
FOREIGN KEY (leg_id) REFERENCES leg(leg_id),
FOREIGN KEY (seat_id) REFERENCES aircraft_seat(seat_id)
);
