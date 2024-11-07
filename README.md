# MySQL-lesson

! Connecting to MySql;
  using the command line:	 
	
	 	   mysql - u username -p

#Creating Database  
  1  -  To Create Database(CREATE Query)-
		
		    CREATE DATABASE Hospital;
			
   2- Show all Database   (SHOW Query)
	 
		    SHOW DATABASES;

  3- Creating the a Patient Table:

		 	CREATE TABLE Patients (
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
![image alt](https://github.com/amanrawa/MySQL-lesson/blob/4e3cc7ec349f5668a032604451d8e94bb59015eb/Screenshot%202024-11-06%20234410.png)
 4- Inserting a New Patient:

 		INSERT INTO patients (patient_name, doctor_name, diagnosis, phone_no, admit_date, discharge_date, gender, address)
			VALUES ('Aryan Singh', 'Dr. Patel', 'Malaria', '9876543210', '2023-11-06', '2023-11-08', 'Male', 'New Delhi, India'),
    				('Aisha Khan', 'Dr. Sharma', 'Dengue Fever', '9876543211', '2023-11-07', '2023-11-09', 'Female', 'Mumbai, Maharashtra, India'),
    				('Ravi Kumar', 'Dr. Gupta', 'Tuberculosis', '9876543212', '2023-11-08', '2023-11-10', 'Male', 'Kolkata, West Bengal, India'),
    				('Priya Patel', 'Dr. Nair', 'Typhoid', '9876543213', '2023-11-09', '2023-11-11', 'Female', 'Chennai, Tamil Nadu, India'),
    				('Rohan Sharma', 'Dr. Iyer', 'Diabetes', '9876543214', '2023-11-10', '2023-11-12', 'Male', 'Bangalore, Karnataka, India');

 5- Select Query (Retrieving All Patients data)

     SELECT *FROM patients;
6- Retrieving Patients by Doctor Name

     SELECT * From patients WHERE doctor_name='Dr.Patel';
7-Retrieving Patients Admitted on a Specific Date

    SELECT * FROM patients WHERE admit_date = '2023-11-06;
8- Retrieving Patients Discharged Between Two Dates

    SELECT * FROM patients WHERE discharge_date BETWEEN '2023-11-01' AND '2023-11-10';

9- Updating a Patient's Phone Number

    UPDATE patients SET phone_no = '987-654-3210' WHERE patient_id = 1;
10-  Deleting a Patient

    DELETE FROM patients WHERE patient_id = 2;

  

	 
