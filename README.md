# OCR JSON Extraction Project

This project processes images to extract specific information using Optical Character Recognition (OCR) and stores the extracted data in a database.

## Features

- Extracts text from images using Tesseract OCR.
- Parses specific fields such as patient name, date of birth, pain, numbness, and tingling scores.
- Stores the extracted data into a MySQL database.
- Saves the extracted data as a JSON file for easy access and sharing.

## Prerequisites

- Python 3.x
- Tesseract OCR
- MySQL database

## Installation

a) **Clone the Repository:**
   
   git clone https://github.com/Niyati12-eng/OCR-Assignment-Oaksol
   
b) **Install Tesseract OCR:**
   
Download the installer from the Tesseract at UB Mannheim(https://github.com/UB-Mannheim/tesseract/wiki)
page and follow the installation instructions.


c) **Configure MySQL Database:**

Ensure MySQL is installed and running.
Create a database named your_database.
Update the connect_database() function in main.py with your MySQL credentials:

connection = mysql.connector.connect(
    host="localhost",
    user="your_username",
    password="your_password",
    database="your_database"
)

d) **Prepare the Database Table:**

Execute the following SQL command to create the patients table:

CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    dob DATE,
    pain INT,
    numbness INT,
    tingling INT
);

## Usage

1.**Place the Image:**

Ensure your target image (e.g., newform.jpg) is in the project directory.

2.**Run the Code:**

OCR Assignment.ipynb

The code will:

Preprocess the image.
Extract text using Tesseract OCR.
Parse the required fields.
Insert the data into the MySQL database.
Save the extracted data to extracted_data.txt in JSON format.

##Contributing

Contributions are welcome! 
Please fork the repository and submit a pull request with your improvements.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
