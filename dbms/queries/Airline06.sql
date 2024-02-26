CREATE TABLE aircraft_model(
model_id int NOT NULL,
manufacturer_id int NOT NULL,
model_name varchar(45) not null,

PRIMARY KEY (model_id),
FOREIGN KEY (manufacturer_id) REFERENCES manufacturer(manufacturer_id)
);
