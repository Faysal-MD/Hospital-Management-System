CREATE DATABASE hospital_management

create table Doctor
(
doctor_id int identity (1,1) primary key,
doctor_name varchar(50),
doctor_dept varchar(50),
doctor_phone varchar(15),
doctor_address varchar(50)
);


create table Nurse
(
nurse_id int identity (1,1) primary key,
nurse_name varchar(50),
nurse_phone varchar(20)
);


create table Cabin
(
cabin_id int primary key CHECK (cabin_id<51),
cabin_type varchar(30)
);


create table Medicine
(
medicine_id int identity (1,1) primary key,
medicine_name varchar(30),
medicine_cost int);




create table Disease
(
disease_id int identity(1,1) primary key,
disease_name varchar(50),
disease_treatment_cost int
);


create table Patient
(
patient_id int identity (1,1) primary key,
patient_name varchar(50),
patient_age int,
patient_blood_group varchar(5),
patient_phone varchar(15),
patient_doctor_id int NOT NULL FOREIGN KEY REFERENCES Doctor(doctor_id),
patient_nurse_id int NOT NULL FOREIGN KEY REFERENCES Nurse(nurse_id),
patient_cabin_id int NOT NULL FOREIGN KEY REFERENCES Cabin(cabin_id),
patient_disease_id int NOT NULL FOREIGN KEY REFERENCES Disease(disease_id),
patient_discharge varchar(3) default 'no',
);
drop table Patient
create table Bill
(
bill_id int identity (1,1) primary key,
bill_patient_id int NOT NULL FOREIGN KEY REFERENCES Patient(patient_id),
bill_medicine_cost int NOT NULL,
bill_treatment_cost int NOT NULL,
bill_total_cost int NOT NULL,
);
drop table Bill

select * from Patient
select *from Doctor
select * from Nurse
select * from Disease
select * from Cabin
select * from Medicine
select * from Bill
