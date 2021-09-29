create table person (
    person_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uid UUID REFERENCES car(car_uid),
	UNIQUE(car_id),
	UNIQUE(email)
);

create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL CHECK (price > 0)
);

-- INSERT INTO PERSON
insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth)
values ('Rikki', 'Muncey', 'Genderfluid', 'rmuncey1@symantec.com', '1990-11-03', 'Mexico');

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) 
values ('Myrilla', 'Redmell', 'Polygender', 'mredmell2@businesswire.com', '2000-01-01', 'China');

insert into person (first_name, last_name, gender, email, date_of_birth, country_of_birth) 
values ('Klemens', 'Flannigan', 'Agender', 'kflannigan3@wix.com', '2016-01-16', 'Cameroon');

-- INSERT INTO CAR
insert into car (make, model, price) values ('Land Rover', 'Sterling', '87665.38');
insert into car (make, model, price) values ('GMC', 'Acadia', '17662.69');