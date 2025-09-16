-- Buat database
CREATE DATABASE perusahaan_db;

-- Pilih database yang akan digunakan
USE perusahaan_db;

-- Membuat Tabel
CREATE TABLE employee (
    Name VARCHAR(50),
    Position VARCHAR(50),
    JoinDate DATE,
    ReleaseDate DATE,
    Year_of_Experience DECIMAL(4,1),
    Salary INT
);

-- Memasukkan data awal
INSERT INTO employee (Name, Position, JoinDate, ReleaseDate, Year_of_Experience, Salary) VALUES
('Jacky', 'Solution Architect', '2018-07-25', '2022-07-25', 8.0, 150),
('John', 'Assistan Manager', '2016-02-02', '2021-02-02', 12.0, 155),
('Alano', 'Manager', '2010-11-09', NULL, 14.0, 175),
('Aaron', 'Engineer', '2021-08-16', '2022-08-16', 1.0, 80),
('Allen', 'Engineer', '2024-06-06', NULL, 4.0, 75),
('Peter', 'Team Leader', '2020-01-09', NULL, 3.0, 85);

-- JAWABAN SEMUA KETENTUAN

-- Ketentuan 1: Menambahkan Albert
INSERT INTO employee (Name, Position, JoinDate, ReleaseDate, Year_of_Experience, Salary)
VALUES ('Albert', 'Engineer', '2024-01-24', NULL, 2.5, 50);

-- Ketentuan 2: Update gaji Engineer
UPDATE employee
SET Salary = 85
WHERE Position = 'Engineer' AND Salary < 85;

-- Ketentuan 3: Hitung pengeluaran gaji 2021
SELECT SUM(Salary) AS Total_Pengeluaran_Gaji_2021
FROM employee
WHERE YEAR(JoinDate) <= 2021 
  AND (ReleaseDate IS NULL OR YEAR(ReleaseDate) >= 2021);

-- Ketentuan 4: Tampilkan 3 employee paling banyak years of experience
SELECT Name, Year_of_Experience
FROM employee
ORDER BY Year_of_Experience DESC
LIMIT 3;

-- Ketentuan 5: Tampilkan engineer dengan pengalaman <= 3 tahun
SELECT Name, Position, Year_of_Experience
FROM employee
WHERE Position = 'Engineer' AND Year_of_Experience <= 3;