-- DB template for devins erd 10-17-2018
DROP SCHEMA IF EXISTS erd;
CREATE SCHEMA erd;
USE erd;

-- create the 'patient' table
CREATE TABLE patient (
  patient_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  doctor_id SMALLINT UNSIGNED DEFAULT NULL 
  disease_id INT UNSIGNED DEFAULT NULL 
  diagnosis_id INT UNSIGNED DEFAULT NULL 
  room_id SMALLINT UNSIGNED DEFAULT NULL 
  PRIMARY KEY  (patient_id),
  KEY idx_patient_id_last_name (patient_id, last_name)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
)

-- make 'diagnosis' table
CREATE TABLE diagnosis (
  diag_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  diag_name VARCHAR(25) NOT NULL,
  doctor_id SMALLINT UNSIGNED NOT NULL 
  
)

-- make 'disease' table
CREATE TABLE disease (
  disease_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  disease_name VARCHAR(25) NOT NULL,
 
)

--make 'employee' table
CREATE TABLE employee (
  employee_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
    
)

-- make 'role' table
CREATE TABLE role (
  role_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  role_description VARCHAR(25) NOT NULL,
      
)

-- make 'room' table
CREATE TABLE room (
  room_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  room_name VARCHAR(25) NOT NULL,
  room_type VARCHAR(25) NOT NULL,
    
)

-- make 'room_type' table
CREATE TABLE room_type (
  room_type_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
      
)

-- make 'visitor' table
CREATE TABLE visitor (
  visitor_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
    
)

-- make 'symptom' table
CREATE TABLE symptom (
  symptom_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
       
)
