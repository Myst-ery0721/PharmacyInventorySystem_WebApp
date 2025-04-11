
-- Create Addresses Table
CREATE TABLE ADDRESSES (
    Address_ID INT PRIMARY KEY AUTO_INCREMENT,
    Street VARCHAR(100),
    City VARCHAR(100),
    Country VARCHAR(100)
);

-- Create Patients Table
CREATE TABLE PATIENTS (
    Patient_ID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    ContactNumber VARCHAR(100),
    DateofBirth DATE,
    Address_ID INT,
    FOREIGN KEY (Address_ID) REFERENCES ADDRESSES(Address_ID) ON DELETE SET NULL
);

-- Create Suppliers Table
CREATE TABLE SUPPLIERS (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100),
    ContactNumber VARCHAR(100),
    Address_ID INT,
    FOREIGN KEY (Address_ID) REFERENCES ADDRESSES(Address_ID) ON DELETE SET NULL
);

-- Create Medicines Table
CREATE TABLE MEDICINES (
    Medicine_ID INT PRIMARY KEY AUTO_INCREMENT,
    MedicineName VARCHAR(100),
    Category VARCHAR(100),
    Price DECIMAL(10,2),
    StockQuantity INT,
    Supplier_ID INT,
    FOREIGN KEY (Supplier_ID) REFERENCES SUPPLIERS(Supplier_ID) ON DELETE CASCADE
);

-- Create Prescriptions Table
CREATE TABLE PRESCRIPTIONS (
    Prescription_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Medicine_ID INT,
    IssueDate DATE,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENTS(Patient_ID) ON DELETE CASCADE,
    FOREIGN KEY (Medicine_ID) REFERENCES MEDICINES(Medicine_ID) ON DELETE CASCADE
);

-- Create Sales Table
CREATE TABLE SALES (
    Sale_ID INT PRIMARY KEY AUTO_INCREMENT,
    Patient_ID INT,
    Medicine_ID INT,
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    SaleDate DATE,
    FOREIGN KEY (Patient_ID) REFERENCES PATIENTS(Patient_ID) ON DELETE CASCADE,
    FOREIGN KEY (Medicine_ID) REFERENCES MEDICINES(Medicine_ID) ON DELETE CASCADE
);


