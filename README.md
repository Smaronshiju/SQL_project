/*
===============================================================================
📝 PROJECT: Flight Reservation System (MySQL)
===============================================================================

📚 OVERVIEW:
------------
This project simulates a Flight Reservation System using MySQL.
It includes table creation, sample data insertion, and stored procedures to 
perform essential operations such as managing passengers and querying data 
based on various conditions.

🎯 OBJECTIVES:
--------------
- Create a relational database named `flight_reservation`.
- Store and manage passenger data.
- Use stored procedures to handle database operations like:
    - Adding passengers
    - Updating contact details
    - Filtering passengers
    - Performing basic analytics (e.g., count, oldest person)

🗂️ DATABASE STRUCTURE:
-----------------------
1. TABLE: Passengers
   Columns:
   - PassengerID INT PRIMARY KEY
   - Name VARCHAR(100)
   - DOB DATE
   - Gender VARCHAR(20)
   - Contact VARCHAR(20)
   - Nationality VARCHAR(50)

🔁 STORED PROCEDURES INCLUDED:
------------------------------
1. GetAllPassengers()
2. AddPassenger(name, dob, gender, contact, nationality)
3. UpdatePassengerContact(passengerID, newContact)
4. DeletePassenger(passengerID)
5. GetPassengersByNationality(nationality)
6. GetPassengersBornAfter(date)
7. CountPassengersByGender()
8. GetPassengerByID(passengerID)
9. SearchPassengersByName(namePattern)
10. GetOldestPassenger()

🧪 SAMPLE CALLS:
----------------
CALL GetAllPassengers();
CALL AddPassenger('John Wick', '1985-07-16', 'Male', '+1-888-1234', 'USA');
CALL UpdatePassengerContact(1, '+1-999-5678');
CALL DeletePassenger(5);
CALL GetPassengersByNationality('India');
CALL GetPassengersBornAfter('1990-01-01');
CALL CountPassengersByGender();
CALL GetPassengerByID(3);
CALL SearchPassengersByName('Emma');
CALL GetOldestPassenger();

🚀 HOW TO USE:
--------------
1. Run this SQL script in MySQL Workbench or any MySQL tool.
2. Ensure MySQL server is running.
3. Stored procedures can be executed using `CALL procedure_name();`.

📌 NOTE:
--------
This is a beginner-level database project focused only on the Passengers module.
Additional tables like Flights, Reservations, and Tickets can be added for a 
complete airline management system.




===============================================================================
*/
