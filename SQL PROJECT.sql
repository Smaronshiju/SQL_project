create database flight_reservation;
use flight_reservation;



CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender VARCHAR(20),
    Contact VARCHAR(20),
    Nationality VARCHAR(50)
);

INSERT INTO Passengers (PassengerID, Name, DOB, Gender, Contact, Nationality) VALUES
(1, 'John Doe', '1990-05-15', 'Male', '+1-555-1234', 'USA'),
(2, 'Alice Smith', '1985-09-20', 'Female', '+44-777-5678', 'UK'),
(3, 'Robert Brown', '1992-07-12', 'Male', '+61-432-6789', 'Australia'),
(4, 'Sophia Wilson', '1995-11-30', 'Female', '+91-98765-4321', 'India'),
(5, 'David Johnson', '1988-03-22', 'Male', '+49-170-2345', 'Germany'),
(6, 'Emily Davis', '1993-06-18', 'Female', '+33-645-9987', 'France'),
(7, 'James Miller', '1996-01-05', 'Male', '+81-55-1234-5678', 'Japan'),
(8, 'Olivia Taylor', '1982-12-10', 'Female', '+39-340-8765', 'Italy'),
(9, 'Michael Clark', '1987-09-28', 'Male', '+34-678-3456', 'Spain'),
(10, 'Emma Hall', '1991-04-25', 'Female', '+86-135-7654', 'China'),
(11, 'William Martinez', '1994-07-08', 'Male', '+55-99999-8888', 'Brazil'),
(12, 'Sophia Lopez', '1998-02-13', 'Female', '+52-88888-7777', 'Mexico'),
(13, 'Daniel Gonzalez', '1993-08-19', 'Male', '+54-77777-6666', 'Argentina'),
(14, 'Ava Hernandez', '1989-10-30', 'Female', '+31-66666-5555', 'Netherlands'),
(15, 'Ethan White', '1995-01-14', 'Male', '+47-55555-4444', 'Norway'),
(16, 'Charlotte Lee', '1983-09-05', 'Female', '+82-44444-3333', 'South Korea'),
(17, 'Benjamin Harris', '1996-12-07', 'Male', '+65-33333-2222', 'Singapore'),
(18, 'Mia Robinson', '1986-04-20', 'Female', '+27-22222-1111', 'South Africa'),
(19, 'Lucas Young', '1990-11-12', 'Male', '+45-11111-9999', 'Denmark'),
(20, 'Amelia Walker', '1993-06-17', 'Female', '+41-99999-8888', 'Switzerland'),
(21, 'Harper King', '1984-07-22', 'Female', '+60-88888-7777', 'Malaysia'),
(22, 'Mason Scott', '1991-03-28', 'Male', '+62-77777-6666', 'Indonesia'),
(23, 'Evelyn Lewis', '1995-09-15', 'Female', '+92-66666-5555', 'Pakistan'),
(24, 'Logan Hall', '1988-02-24', 'Male', '+20-55555-4444', 'Egypt'),
(25, 'Alexander Allen', '1992-11-30', 'Male', '+30-44444-3333', 'Greece'),
(26, 'Scarlett Young', '1997-05-10', 'Female', '+55-33333-2222', 'Brazil'),
(27, 'Henry Nelson', '1990-08-06', 'Male', '+64-22222-1111', 'New Zealand'),
(28, 'Victoria Carter', '1986-12-18', 'Female', '+48-11111-9999', 'Poland'),
(29, 'Daniel Mitchell', '1993-07-14', 'Male', '+90-99999-8888', 'Turkey'),
(30, 'Lily Perez', '1998-09-25', 'Female', '+7-88888-7777', 'Russia'),
(31, 'Sebastian Roberts', '1987-03-09', 'Male', '+34-77777-6666', 'Spain'),
(32, 'Avery Collins', '1996-10-31', 'Female', '+52-66666-5555', 'Mexico'),
(33, 'Jack Edwards', '1994-06-02', 'Male', '+44-55555-4444', 'UK'),
(34, 'Madison Stewart', '1991-05-11', 'Female', '+1-44444-3333', 'USA'),
(35, 'Samuel Brooks', '1989-01-30', 'Male', '+61-33333-2222', 'Australia'),
(36, 'Zoe Bennett', '1995-07-07', 'Female', '+82-22222-1111', 'South Korea'),
(37, 'Elijah Ross', '1983-09-28', 'Male', '+81-11111-9999', 'Japan'),
(38, 'Nora Rivera', '1992-02-21', 'Female', '+31-99999-8888', 'Netherlands'),
(39, 'Matthew Parker', '1985-11-16', 'Male', '+33-88888-7777', 'France'),
(40, 'Grace Foster', '1990-12-05', 'Female', '+49-77777-6666', 'Germany');
select*from passengers;

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    Airline VARCHAR(100) NOT NULL,
    FlightNumber VARCHAR(20) UNIQUE NOT NULL,
    Source VARCHAR(100) NOT NULL,
    Destination VARCHAR(100) NOT NULL,
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    Status VARCHAR(100)
);



INSERT INTO Flights (FlightID, Airline, FlightNumber, Source, Destination, DepartureTime, ArrivalTime, Status)
 VALUES(101, 'Delta Airlines', 'DL256', 'New York', 'Los Angeles', '2025-06-10 08:30:00', '2025-06-10 11:30:00', 'Scheduled'),
(102, 'Emirates', 'EK501', 'Dubai', 'London', '2025-06-15 14:00:00', '2025-06-15 18:30:00', 'Scheduled'),
(103, 'Lufthansa', 'LH789', 'Frankfurt', 'Tokyo', '2025-06-20 09:45:00', '2025-06-20 18:00:00', 'Delayed'),
(104, 'Qatar Airways', 'QR202', 'Doha', 'Sydney', '2025-07-01 21:00:00', '2025-07-02 07:45:00', 'Scheduled'),
(105, 'British Airways', 'BA450', 'London', 'New York', '2025-07-05 12:15:00', '2025-07-05 15:30:00', 'Cancelled'),
(106, 'Singapore Airlines', 'SQ305', 'Singapore', 'Paris', '2025-07-08 23:55:00', '2025-07-09 07:00:00', 'Scheduled'),
(107, 'American Airlines', 'AA178', 'Los Angeles', 'Chicago', '2025-07-12 16:20:00', '2025-07-12 18:50:00', 'Scheduled'),
(108, 'Air India', 'AI101', 'Delhi', 'San Francisco', '2025-07-15 06:30:00', '2025-07-15 14:30:00', 'Delayed'),
(109, 'Turkish Airlines', 'TK212', 'Istanbul', 'Berlin', '2025-07-18 19:45:00', '2025-07-18 22:15:00', 'Scheduled'),
(110, 'Etihad Airways', 'EY789', 'Abu Dhabi', 'Toronto', '2025-07-21 02:00:00', '2025-07-21 10:30:00', 'Scheduled'),
(111, 'Japan Airlines', 'JL405', 'Tokyo', 'Bangkok', '2025-07-25 13:00:00', '2025-07-25 16:30:00', 'Scheduled'),
(112, 'KLM Royal Dutch', 'KL117', 'Amsterdam', 'Rome', '2025-07-28 17:20:00', '2025-07-28 19:45:00', 'Scheduled'),
(113, 'Cathay Pacific', 'CX900', 'Hong Kong', 'Seoul', '2025-08-02 08:00:00', '2025-08-02 11:10:00', 'Delayed'),
(114, 'Qantas Airways', 'QF502', 'Sydney', 'Auckland', '2025-08-05 15:45:00', '2025-08-05 18:10:00', 'Scheduled'),
(115, 'Aeroflot', 'SU303', 'Moscow', 'Dubai', '2025-08-10 22:30:00', '2025-08-11 04:50:00', 'Scheduled'),
(116, 'Malaysia Airlines', 'MH370', 'Kuala Lumpur', 'Beijing', '2025-08-15 09:00:00', '2025-08-15 14:30:00', 'Cancelled'),
(117, 'Swiss Air', 'LX209', 'Zurich', 'Munich', '2025-08-18 11:50:00', '2025-08-18 12:40:00', 'Scheduled'),
(118, 'Scandinavian Airlines', 'SK567', 'Copenhagen', 'Oslo', '2025-08-22 10:10:00', '2025-08-22 11:00:00', 'Scheduled'),
(119, 'Air Canada', 'AC890', 'Vancouver', 'Montreal', '2025-08-27 06:15:00', '2025-08-27 10:05:00', 'Scheduled'),
(120, 'Alaska Airlines', 'AS134', 'Seattle', 'Denver', '2025-09-01 14:30:00', '2025-09-01 17:05:00', 'Scheduled'),
(121, 'Hawaiian Airlines', 'HA450', 'Honolulu', 'San Diego', '2025-09-05 20:00:00', '2025-09-05 23:30:00', 'Scheduled'),
(122, 'Gulf Air', 'GF112', 'Bahrain', 'Riyadh', '2025-09-10 07:15:00', '2025-09-10 08:40:00', 'Scheduled'),
(123, 'Vietnam Airlines', 'VN290', 'Ho Chi Minh', 'Jakarta', '2025-09-15 16:20:00', '2025-09-15 18:45:00', 'Scheduled'),
(124, 'IndiGo Airlines', '6E520', 'Mumbai', 'Bangalore', '2025-09-18 10:50:00', '2025-09-18 12:00:00', 'Scheduled'),
(125, 'Vistara', 'UK874', 'Delhi', 'Singapore', '2025-09-22 23:40:00', '2025-09-23 06:20:00', 'Scheduled'),
(126, 'Air France', 'AF119', 'Paris', 'Madrid', '2025-09-28 18:30:00', '2025-09-28 20:40:00', 'Scheduled'),
(127, 'Ethiopian Airlines', 'ET760', 'Addis Ababa', 'Johannesburg', '2025-10-02 05:00:00', '2025-10-02 08:50:00', 'Delayed'),
(128, 'Saudi Airlines', 'SV303', 'Jeddah', 'Cairo', '2025-10-07 12:30:00', '2025-10-07 13:50:00', 'Scheduled'),
(129, 'EgyptAir', 'MS202', 'Cairo', 'Athens', '2025-10-12 17:15:00', '2025-10-12 19:30:00', 'Scheduled'),
(130, 'South African Airways', 'SA567', 'Johannesburg', 'Nairobi', '2025-10-18 08:45:00', '2025-10-18 11:30:00', 'Scheduled'),
(131, 'Thai Airways', 'TG911', 'Bangkok', 'Manila', '2025-10-22 21:20:00', '2025-10-23 00:40:00', 'Scheduled'),
(132, 'Garuda Indonesia', 'GA123', 'Jakarta', 'Sydney', '2025-10-28 06:30:00', '2025-10-28 15:00:00', 'Scheduled'),
(133, 'Finnair', 'AY400', 'Helsinki', 'Stockholm', '2025-11-02 14:45:00', '2025-11-02 16:15:00', 'Scheduled'),
(134, 'JetBlue Airways', 'B6601', 'Boston', 'Miami', '2025-11-07 09:10:00', '2025-11-07 12:15:00', 'Scheduled'),
(135, 'Spirit Airlines', 'NK789', 'Las Vegas', 'Orlando', '2025-11-12 19:30:00', '2025-11-12 23:45:00', 'Scheduled'),
(136, 'Ryanair', 'FR250', 'Dublin', 'Edinburgh', '2025-11-18 07:55:00', '2025-11-18 09:05:00', 'Scheduled'),
(137, 'EasyJet', 'EZY330', 'Berlin', 'Vienna', '2025-11-22 11:40:00', '2025-11-22 12:50:00', 'Scheduled'),
(138, 'Norwegian Air', 'DY720', 'Oslo', 'Reykjavik', '2025-11-28 16:00:00', '2025-11-28 19:30:00', 'Scheduled'),
(139, 'Wizz Air', 'W6370', 'Budapest', 'Warsaw', '2025-12-03 13:10:00', '2025-12-03 15:30:00', 'Scheduled'),
(140, 'AirAsia', 'AK890', 'Kuala Lumpur', 'Bali', '2025-12-08 20:15:00', '2025-12-08 22:50:00', 'Scheduled');
select * from flights;

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE NOT NULL,
    SeatNumber VARCHAR(10) NOT NULL,
    Status VARCHAR(100),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID) ON DELETE CASCADE,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID) ON DELETE CASCADE
);


INSERT INTO Bookings (BookingID, PassengerID, FlightID, BookingDate, SeatNumber, Status) VALUES
(1, 1, 101, '2025-05-01', '12A', 'Confirmed'),
(2, 2, 102, '2025-05-03', '5B', 'Confirmed'),
(3, 3, 103, '2025-05-06', '14C', 'Cancelled'),
(4, 4, 104, '2025-05-10', '21D', 'Confirmed'),
(5, 5, 105, '2025-05-15', '9E', 'Cancelled'),
(6, 6, 106, '2025-05-17', '16A', 'Confirmed'),
(7, 7, 107, '2025-05-20', '2B', 'Confirmed'),
(8, 8, 108, '2025-05-22', '23C', 'Confirmed'),
(9, 9, 109, '2025-05-24', '10D', 'Confirmed'),
(10, 10, 110, '2025-05-27', '13A', 'Confirmed'),
(11, 11, 111, '2025-06-01', '22B', 'Confirmed'),
(12, 12, 112, '2025-06-04', '11C', 'Confirmed'),
(13, 13, 113, '2025-06-06', '19D', 'Confirmed'),
(14, 14, 114, '2025-06-08', '4A', 'Confirmed'),
(15, 15, 115, '2025-06-10', '6B', 'Confirmed'),
(16, 16, 116, '2025-06-12', '8C', 'Cancelled'),
(17, 17, 117, '2025-06-15', '15A', 'Confirmed'),
(18, 18, 118, '2025-06-17', '7D', 'Confirmed'),
(19, 19, 119, '2025-06-20', '18B', 'Confirmed'),
(20, 20, 120, '2025-06-22', '9A', 'Confirmed'),
(21, 21, 121, '2025-06-25', '3C', 'Confirmed'),
(22, 22, 122, '2025-06-28', '20D', 'Confirmed'),
(23, 23, 123, '2025-07-01', '17A', 'Cancelled'),
(24, 24, 124, '2025-07-04', '14B', 'Confirmed'),
(25, 25, 125, '2025-07-07', '1A', 'Confirmed'),
(26, 26, 126, '2025-07-09', '5C', 'Confirmed'),
(27, 27, 127, '2025-07-12', '6D', 'Confirmed'),
(28, 28, 128, '2025-07-15', '10B', 'Confirmed'),
(29, 29, 129, '2025-07-18', '11A', 'Confirmed'),
(30, 30, 130, '2025-07-20', '12C', 'Confirmed'),
(31, 31, 131, '2025-07-23', '13B', 'Confirmed'),
(32, 32, 132, '2025-07-25', '22D', 'Confirmed'),
(33, 33, 133, '2025-07-28', '14A', 'Confirmed'),
(34, 34, 134, '2025-08-01', '18C', 'Confirmed'),
(35, 35, 135, '2025-08-03', '16B', 'Cancelled'),
(36, 36, 136, '2025-08-06', '3A', 'Confirmed'),
(37, 37, 137, '2025-08-09', '7C', 'Confirmed'),
(38, 38, 138, '2025-08-12', '8B', 'Confirmed'),
(39, 39, 139, '2025-08-15', '9C', 'Confirmed'),
(40, 40, 140, '2025-08-17', '2A', 'Confirmed');
select * from bookings;


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    BookingID INT,
    Amount INT NOT NULL,
    PaymentStatus varchar(100),
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID) ON DELETE CASCADE
);
INSERT INTO Payments (PaymentID, BookingID, Amount, PaymentStatus, PaymentDate)
 VALUES(1, 1, 150.00, 'Paid', '2025-05-01'),
(2, 2, 200.00, 'Pending', '2025-05-03'),
(3, 3, 100.00, 'Paid', '2025-05-06'),
(4, 4, 250.00, 'Paid', '2025-05-10'),
(5, 5, 180.00, 'Failed', '2025-05-15'),
(6, 6, 220.00, 'Paid', '2025-05-17'),
(7, 7, 120.00, 'Pending', '2025-05-20'),
(8, 8, 180.00, 'Paid', '2025-05-22'),
(9, 9, 160.00, 'Paid', '2025-05-24'),
(10, 10, 190.00, 'Paid', '2025-05-27'),
(11, 11, 210.00, 'Pending', '2025-06-01'),
(12, 12, 170.00, 'Paid', '2025-06-04'),
(13, 13, 140.00, 'Paid', '2025-06-06'),
(14, 14, 150.00, 'Paid', '2025-06-08'),
(15, 15, 220.00, 'Paid', '2025-06-10'),
(16, 16, 180.00, 'Pending', '2025-06-12'),
(17, 17, 250.00, 'Paid', '2025-06-15'),
(18, 18, 170.00, 'Paid', '2025-06-17'),
(19, 19, 160.00, 'Pending', '2025-06-20'),
(20, 20, 130.00, 'Paid', '2025-06-22'),
(21, 21, 180.00, 'Paid', '2025-06-25'),
(22, 22, 190.00, 'Paid', '2025-06-28'),
(23, 23, 220.00, 'Pending', '2025-07-01'),
(24, 24, 200.00, 'Paid', '2025-07-04'),
(25, 25, 150.00, 'Paid', '2025-07-07'),
(26, 26, 180.00, 'Paid', '2025-07-09'),
(27, 27, 250.00, 'Paid', '2025-07-12'),
(28, 28, 220.00, 'Paid', '2025-07-15'),
(29, 29, 170.00, 'Paid', '2025-07-18'),
(30, 30, 190.00, 'Paid', '2025-07-20'),
(31, 31, 160.00, 'Pending', '2025-07-23'),
(32, 32, 130.00, 'Paid', '2025-07-25'),
(33, 33, 180.00, 'Paid', '2025-07-28'),
(34, 34, 150.00, 'Paid', '2025-08-01'),
(35, 35, 200.00, 'Failed', '2025-08-03'),
(36, 36, 220.00, 'Paid', '2025-08-06'),
(37, 37, 170.00, 'Paid', '2025-08-09'),
(38, 38, 250.00, 'Paid', '2025-08-12'),
(39, 39, 180.00, 'Pending', '2025-08-15'),
(40, 40, 160.00, 'Paid', '2025-08-17');
select * from payments;

CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Code VARCHAR(10) UNIQUE NOT NULL
);

INSERT INTO Airports (AirportID, Name, Location, Code) 
VALUES(1, 'Los Angeles International Airport', 'Los Angeles, California', 'LAX'),
(2, 'John F. Kennedy International Airport', 'New York, New York', 'JFK'),
(3, 'O’Hare International Airport', 'Chicago, Illinois', 'ORD'),
(4, 'San Francisco International Airport', 'San Francisco, California', 'SFO'),
(5, 'Hartsfield-Jackson Atlanta International Airport', 'Atlanta, Georgia', 'ATL'),
(6, 'Dallas/Fort Worth International Airport', 'Dallas, Texas', 'DFW'),
(7, 'Denver International Airport', 'Denver, Colorado', 'DEN'),
(8, 'Seattle-Tacoma International Airport', 'Seattle, Washington', 'SEA'),
(9, 'Miami International Airport', 'Miami, Florida', 'MIA'),
(10, 'Charlotte Douglas International Airport', 'Charlotte, North Carolina', 'CLT'),
(11, 'Phoenix Sky Harbor International Airport', 'Phoenix, Arizona', 'PHX'),
(12, 'Orlando International Airport', 'Orlando, Florida', 'MCO'),
(13, 'Minneapolis-Saint Paul International Airport', 'Minneapolis, Minnesota', 'MSP'),
(14, 'Detroit Metropolitan Airport', 'Detroit, Michigan', 'DTW'),
(15, 'Boston Logan International Airport', 'Boston, Massachusetts', 'BOS'),
(16, 'Washington Dulles International Airport', 'Dulles, Virginia', 'IAD'),
(17, 'Philadelphia International Airport', 'Philadelphia, Pennsylvania', 'PHL'),
(18, 'LaGuardia Airport', 'New York, New York', 'LGA'),
(19, 'Chicago Midway International Airport', 'Chicago, Illinois', 'MDW'),
(20, 'Baltimore/Washington International Thurgood Marshall Airport', 'Baltimore, Maryland', 'BWI'),
(21, 'Newark Liberty International Airport', 'Newark, New Jersey', 'EWR'),
(22, 'Salt Lake City International Airport', 'Salt Lake City, Utah', 'SLC'),
(23, 'Portland International Airport', 'Portland, Oregon', 'PDX'),
(24, 'Kansas City International Airport', 'Kansas City, Missouri', 'MCI'),
(25, 'Cincinnati/NKY International Airport', 'Hebron, Kentucky', 'CVG'),
(26, 'Tampa International Airport', 'Tampa, Florida', 'TPA'),
(27, 'St. Louis Lambert International Airport', 'St. Louis, Missouri', 'STL'),
(28, 'Sacramento International Airport', 'Sacramento, California', 'SMF'),
(29, 'Fort Lauderdale-Hollywood International Airport', 'Fort Lauderdale, Florida', 'FLL'),
(30, 'Raleigh-Durham International Airport', 'Raleigh, North Carolina', 'RDU'),
(31, 'San Diego International Airport', 'San Diego, California', 'SAN'),
(32, 'Austin-Bergstrom International Airport', 'Austin, Texas', 'AUS'),
(33, 'Cleveland Hopkins International Airport', 'Cleveland, Ohio', 'CLE'),
(34, 'Indianapolis International Airport', 'Indianapolis, Indiana', 'IND'),
(35, 'Nashville International Airport', 'Nashville, Tennessee', 'BNA'),
(36, 'Louisville Muhammad Ali International Airport', 'Louisville, Kentucky', 'SDF'),
(37, 'Columbus John Glenn International Airport', 'Columbus, Ohio', 'CMH'),
(38, 'Albuquerque International Sunport', 'Albuquerque, New Mexico', 'ABQ'),
(39, 'Las Vegas McCarran International Airport', 'Las Vegas, Nevada', 'LAS'),
(40, 'San Jose International Airport', 'San Jose, California', 'SJC');
select * from payments;

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    Contact VARCHAR(20),
    FlightID INT ,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID) ON DELETE SET NULL
);

INSERT INTO Staff (StaffID, Name, Role, Contact, FlightID) VALUES
(1, 'John Doe', 'Pilot', '123-456-7890', 111),
(2, 'Jane Smith', 'Flight Attendant', '234-567-8901', 112),
(3, 'Michael Johnson', 'Ground Staff', '345-678-9012', 113),
(4, 'Emily Davis', 'Baggage Handler', '456-789-0123', 118),
(5, 'Chris Miller', 'Security Personnel', '567-890-1234', 115),
(6, 'Jessica Wilson', 'Ticket Agent', '678-901-2345', 116),
(7, 'David Moore', 'Flight Attendant', '789-012-3456', 113),
(8, 'Sarah Taylor', 'Pilot', '890-123-4567', 118),
(9, 'Daniel Anderson', 'Ground Staff', '901-234-5678',119),
(10, 'Sophia Thomas', 'Baggage Handler', '012-345-6789', 110),
(11, 'Matthew Jackson', 'Security Personnel', '123-456-7891', 111),
(12, 'Olivia White', 'Ticket Agent', '234-567-8902', 112),
(13, 'James Harris', 'Flight Attendant', '345-678-9013', 113),
(14, 'Ava Clark', 'Pilot', '456-789-0124', 114),
(15, 'Benjamin Lewis', 'Ground Staff', '567-890-1235', 115),
(16, 'Isabella Roberts', 'Security Personnel', '678-901-2346', 131),
(17, 'William Walker', 'Ticket Agent', '789-012-3457', 117),
(18, 'Charlotte Young', 'Flight Attendant', '890-123-4568', 118),
(19, 'Liam Hall', 'Pilot', '901-234-5679', 119),
(20, 'Amelia Allen', 'Ground Staff', '012-345-6781', 120),
(21, 'Mason King', 'Security Personnel', '123-456-7892', 121),
(22, 'Harper Scott', 'Ticket Agent', '234-567-8903', 122),
(23, 'Ethan Adams', 'Flight Attendant', '345-678-9014', 123),
(24, 'Zoe Baker', 'Pilot', '456-789-0125', 124),
(25, 'Jackson Gonzalez', 'Ground Staff', '567-890-1236', 125),
(26, 'Grace Perez', 'Security Personnel', '678-901-2347', 126),
(27, 'Alexander Martinez', 'Flight Attendant', '789-012-3458', 127),
(28, 'Madison Rodriguez', 'Ticket Agent', '890-123-4569', 128),
(29, 'Charlotte Evans', 'Ground Staff', '901-234-5680', 129),
(30, 'David Collins', 'Security Personnel', '012-345-6782', 130),
(31, 'Evelyn Stewart', 'Flight Attendant', '123-456-7893', 131),
(32, 'Lucas Sanchez', 'Pilot', '234-567-8904', 132),
(33, 'Ella Morris', 'Ground Staff', '345-678-9015', 133),
(34, 'Oliver Mitchell', 'Security Personnel', '456-789-0126', 134),
(35, 'Lily Robinson', 'Ticket Agent', '567-890-1237', 135),
(36, 'Nathan Hall', 'Flight Attendant', '678-901-2348', 136),
(37, 'Sofia Wright', 'Pilot', '789-012-3459', 137),
(38, 'Maya Campbell', 'Ground Staff', '890-123-4570', 138),
(39, 'Henry Mitchell', 'Security Personnel', '901-234-5681', 139),
(40, 'Amos Carter', 'Ticket Agent', '012-345-6783', 140);

select * from staff;

-- 1. Get all passengers
DELIMITER //
CREATE PROCEDURE GetAllPassengers()
BEGIN
    SELECT * FROM Passengers;
END //
DELIMITER ;

call GetAllPassengers();
-- 2. Add a new passenger
DELIMITER //
CREATE PROCEDURE AddPassenger(
    IN p_passenger_id int,
    p_Name VARCHAR(100),
     p_DOB DATE,
     p_Gender VARCHAR(20),
     p_Contact VARCHAR(20),
     p_Nationality VARCHAR(50)
)
BEGIN
    INSERT INTO Passengers(PassengerID,Name, DOB, Gender, Contact, Nationality)
    VALUES( p_passenger_id ,p_Name, p_DOB, p_Gender, p_Contact, p_Nationality);
END //
DELIMITER ;

-- 3. Update passenger contact info
DELIMITER //
CREATE PROCEDURE UpdatePassengerContact(
    IN p_PassengerID INT,
     p_Contact VARCHAR(20)
)
BEGIN
    UPDATE Passengers SET Contact = p_Contact
    WHERE PassengerID = p_PassengerID;
END //
DELIMITER ;

-- 4. Delete a passenger
DELIMITER //
CREATE PROCEDURE DeletePassenger(
    IN p_PassengerID INT
)
BEGIN
    DELETE FROM Passengers WHERE PassengerID = p_PassengerID;
END //
DELIMITER ;

-- 5. Get passengers by nationality
DELIMITER //
CREATE PROCEDURE GetPassengersByNationality(
    IN p_Nationality VARCHAR(50)
)
BEGIN
    SELECT * FROM Passengers
    WHERE Nationality = p_Nationality;
END //
DELIMITER ;

-- 6. Get passengers born after a certain date
DELIMITER //
CREATE PROCEDURE GetPassengersBornAfter(
    IN p_Date DATE
)
BEGIN
    SELECT * FROM Passengers
    WHERE DOB > p_Date;
END //
DELIMITER ;

-- 7. Count passengers by gender
DELIMITER //
CREATE PROCEDURE CountPassengersByGender()
BEGIN
    SELECT Gender, COUNT(*) AS Total FROM Passengers
    GROUP BY Gender;
END //
DELIMITER ;

-- 8. Get passenger details by ID
DELIMITER //
CREATE PROCEDURE GetPassengerByID(
    IN p_PassengerID INT
)
BEGIN
    SELECT * FROM Passengers
    WHERE PassengerID = p_PassengerID;
END //
DELIMITER ;

-- 9. Get passengers with name like pattern
DELIMITER //
CREATE PROCEDURE SearchPassengersByName(
    IN p_NamePattern VARCHAR(100)
)
BEGIN
    SELECT * FROM Passengers
    WHERE Name LIKE CONCAT('%', p_NamePattern, '%');
END //
DELIMITER ;

-- 10. Get oldest passenger
DELIMITER //
CREATE PROCEDURE GetOldestPassenger()
BEGIN
    SELECT * FROM Passengers
    ORDER BY DOB ASC
    LIMIT 1;
END //
DELIMITER ;

-- 1. Get all passengers
CALL GetAllPassengers();

-- 2. Add a new passenger
CALL  AddPassenger ( 41,'Liam Brown', '1990-10-01', 'Male', '+1-999-1234', 'USA');


-- 3. Update passenger contact info
CALL UpdatePassengerContact(1, '+1-555-9999');

-- 4. Delete a passenger
CALL DeletePassenger(5);

-- 5. Get passengers by nationality
CALL GetPassengersByNationality('India');

-- 6. Get passengers born after a certain date
CALL GetPassengersBornAfter('1990-01-01');

-- 7. Count passengers by gender
CALL CountPassengersByGender();

-- 8. Get passenger details by ID
CALL GetPassengerByID(3);

-- 9. Get passengers with name like pattern
CALL SearchPassengersByName('Sophia');

-- 10. Get oldest passenger
CALL GetOldestPassenger();

