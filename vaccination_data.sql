use vaccination_data;

/*Create Table of Customer Records*/
CREATE TABLE Customer_Details(  
    Customer_Name VARCHAR(255) NOT NULL COMMENT 'Create Name of the Customer',
    Customer_ID int NOT NULL primary key AUTO_INCREMENT comment 'Primary Key',
    Customer_Open_Date DATE NOT NULL COMMENT 'Opening Date(YYYYMMDD)',
    Last_Consulted_Date DATE comment 'Consulted date(YYYYMMDD)',
    Vaccination_Type CHAR(5) comment 'Type of Vaccine', 
    Doctor_Consulted CHAR(255) COMMENT 'Name of the Doctor',
    State_ CHAR(5) COMMENT 'From which State you are',
    Country CHAR(5) COMMENT 'From which Country you are',
    Post_Code INT(5) COMMENT 'Enter your Post Code',
    Date_of_Birth DATE comment 'Enter your Date of Birth(YYYYMMDD)',
    Active_Customer CHAR(1) COMMENT 'Status of the Customer'
) default charset utf8 comment '';

/*Insert the records into the table*/
INSERT INTO Customer_Details(Customer_Name, Customer_ID, Customer_Open_Date,
Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State_, Country,
Date_of_Birth, Active_Customer) VALUES('Alex',123457, 20101012,
20121013, 'MVD', 'Paul', 'SA', 'USA', 19870306, 'A' );
INSERT INTO Customer_Details(Customer_Name, Customer_ID, Customer_Open_Date,
Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State_, Country,
Date_of_Birth, Active_Customer) VALUES('John',123458, 20101012,
20121013, 'MVD', 'Paul', 'TN', 'IND', 19870306, 'A' );
INSERT INTO Customer_Details(Customer_Name, Customer_ID, Customer_Open_Date,
Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State_, Country,
Date_of_Birth, Active_Customer) VALUES('Mathew',123459, 20101012,
20121013, 'MVD', 'Paul', 'WAS', 'PHIL', 19870306, 'A' );
INSERT INTO Customer_Details(Customer_Name, Customer_ID, Customer_Open_Date,
Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State_, Country,
Date_of_Birth, Active_Customer) VALUES('Matt',12345, 20101012,
20121013, 'MVD', 'Paul', 'BOS', 'NYC', 19870306, 'A' );
INSERT INTO Customer_Details(Customer_Name, Customer_ID, Customer_Open_Date,
Last_Consulted_Date, Vaccination_Type, Doctor_Consulted, State_, Country,
Date_of_Birth, Active_Customer) VALUES('Jacob',1256, 20101012,
20121013, 'MVD', 'Paul', 'VIC', 'AU', 19870306, 'A' );

/*Load the data into tables, one table per country*/

/*For IND*/
CREATE TABLE Country_Name_Ind(
    Customer_Name VARCHAR(255),
    Customer_ID int ,
    Last_Consulted_Date DATE,
    Vaccination_Type CHAR(5)
);

INSERT INTO Country_Name_Ind(Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type)
SELECT Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type
FROM Customer_Details WHERE country = 'IND';


/*For USA*/
CREATE TABLE Country_Name_USA(
    Customer_Name VARCHAR(255),
    Customer_ID int ,
    Last_Consulted_Date DATE,
    Vaccination_Type CHAR(5)
);

INSERT INTO Country_Name_USA(Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type)
SELECT Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type
FROM Customer_Details WHERE country = 'USA';



/*For PHIL*/
CREATE TABLE Country_Name_PHIL(
    Customer_Name VARCHAR(255),
    Customer_ID int ,
    Last_Consulted_Date DATE,
    Vaccination_Type CHAR(5)
);

INSERT INTO Country_Name_PHIL(Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type)
SELECT Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type
FROM Customer_Details WHERE country = 'PHIL';



/*For NYC*/
CREATE TABLE Country_Name_NYC(
    Customer_Name VARCHAR(255),
    Customer_ID int ,
    Last_Consulted_Date DATE,
    Vaccination_Type CHAR(5)
);

INSERT INTO Country_Name_NYC(Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type)
SELECT Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type
FROM Customer_Details WHERE country = 'NYC';


/*For AU*/
CREATE TABLE Country_Name_AU(
    Customer_Name VARCHAR(255),
    Customer_ID int ,
    Last_Consulted_Date DATE,
    Vaccination_Type CHAR(5)
);

INSERT INTO Country_Name_AU(Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type)
SELECT Customer_Name, Customer_ID, Last_Consulted_Date, Vaccination_Type
FROM Customer_Details WHERE country = 'AU';
    