

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name VARCHAR(100),
    doctor_name VARCHAR(100),
    diagnosis VARCHAR(255),
    phone_no VARCHAR(20),
    admit_date DATE,
    discharge_date DATE,
    gender ENUM('Male', 'Female', 'Other'),
    address VARCHAR(255)
);

INSERT INTO patients (patient_name, doctor_name, diagnosis, phone_no, admit_date, discharge_date, gender, address)
VALUES
    ('Aryan Singh', 'Dr. Patel', 'Malaria', '9876543210', '2023-11-06', '2023-11-08', 'Male', 'New Delhi, India'),
    ('Aisha Khan', 'Dr. Sharma', 'Dengue Fever', '9876543211', '2023-11-07', '2023-11-09', 'Female', 'Mumbai, Maharashtra, India'),
    ('Ravi Kumar', 'Dr. Gupta', 'Tuberculosis', '9876543212', '2023-11-08', '2023-11-10', 'Male', 'Kolkata, West Bengal, India'),
    ('Priya Patel', 'Dr. Nair', 'Typhoid', '9876543213', '2023-11-09', '2023-11-11', 'Female', 'Chennai, Tamil Nadu, India'),
    ('Rohan Sharma', 'Dr. Iyer', 'Diabetes', '9876543214', '2023-11-10', '2023-11-12', 'Male', 'Bangalore, Karnataka, India'),
    ('Neha Gupta', 'Dr. Singh', 'Heart Disease', '9876543215', '2023-11-11', '2023-11-13', 'Female', 'Hyderabad, Telangana, India'),
    ('Amit Kumar', 'Dr. Sharma', 'Kidney Stones', '9876543216', '2023-11-12', '2023-11-14', 'Male', 'Pune, Maharashtra, India'),
    ('Anika Patel', 'Dr. Nair', 'Asthma', '9876543217', '2023-11-13', '2023-11-15', 'Female', 'Ahmedabad, Gujarat, India'),
    ('Rahul Sharma', 'Dr. Gupta', 'Depression', '9876543218', '2023-11-14', '2023-11-16', 'Male', 'Jaipur, Rajasthan, India'),
    ('Rani Singh', 'Dr. Patel', 'Anxiety', '9876543219', '2023-11-15', '2023-11-17', 'Female', 'Lucknow, Uttar Pradesh, India');



select patient_name , age from patients 
order by age ASC;








select *From patients; #all data show in patients

SELECT * From patients   #only show where doctor_name  is Dr. Patel
WHERE doctor_name='Dr. Patel'; 

SELECT * FROM patients WHERE admit_date = '2023-11-06'; 

SELECT * FROM patients WHERE discharge_date BETWEEN '2023-11-01' AND '2023-11-10';

UPDATE patients SET phone_no = '987-004-3210' WHERE patient_id = 1;

CREATE TABLE doctors1 (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    doctor_name VARCHAR(100),
    specialization VARCHAR(100)
);

INSERT INTO doctors1 (doctor_name, specialization)
VALUES
    ('Dr. Patel', 'General Physician',5),
    ('Dr. Sharma', 'Cardiologist',8),
    ('Dr. Gupta', 'Pediatrician',9),
    ('Dr. Nair', 'Dermatologist',10),
    ('Dr. Iyer', 'Orthopedician',7);
    

SELECT p.patient_name, d.doctor_name, p.diagnosis   #Inner Join
FROM patients p
INNER JOIN doctors1 d ON p.doctor_name = d.doctor_name;


  SELECT p.patient_name, d.doctor_name                   #left join
  FROM patients p
      LEFT JOIN doctors1 d ON p.doctor_name = d.doctor_name;
      
      
      
 SELECT p.patient_name, d.doctor_name                 #Right Join
 FROM patients p
 RIGHT JOIN doctors1 d ON p.doctor_name = d.doctor_name;
 
 
##



SELECT p.patient_name, d.doctor_name,p.gender,p.diagnosis,p.admit_date     #Full Outer Join
from patients p
Left Join doctors1 d ON p.patient_name=d.doctor_name
UNION
select p.patient_name, d.doctor_name,p.gender,p.diagnosis,p.admit_date
from patients p
right Join doctors1 d ON p.patient_name=d.doctor_name






