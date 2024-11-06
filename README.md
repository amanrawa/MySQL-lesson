# MySQL-lesson

! Connecting to MySql;
  using the command line:	 
	
	 	   mysql - u username -p

#Creating Database  
  1  -  To Create Database(CREATE Query)-
		
		    CREATE DATABASE Hospital;
			
   2- Show all Database   (SHOW Query)
	 
		    SHOW DATABASES;

  3- Creating a Table:

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
 4- Inserting a Neq Patient:

 		INSERT INTO patients (patient_name, doctor_name, diagnosis, phone_no, admit_date, discharge_date, gender, address)
			VALUES ('Aryan Singh', 'Dr. Patel', 'Malaria', '9876543210', '2023-11-06', '2023-11-08', 'Male', 'New Delhi, India'),
    				('Aisha Khan', 'Dr. Sharma', 'Dengue Fever', '9876543211', '2023-11-07', '2023-11-09', 'Female', 'Mumbai, Maharashtra, India'),
    				('Ravi Kumar', 'Dr. Gupta', 'Tuberculosis', '9876543212', '2023-11-08', '2023-11-10', 'Male', 'Kolkata, West Bengal, India'),
    				('Priya Patel', 'Dr. Nair', 'Typhoid', '9876543213', '2023-11-09', '2023-11-11', 'Female', 'Chennai, Tamil Nadu, India'),
    				('Rohan Sharma', 'Dr. Iyer', 'Diabetes', '9876543214', '2023-11-10', '2023-11-12', 'Male', 'Bangalore, Karnataka, India');
	 

	 
