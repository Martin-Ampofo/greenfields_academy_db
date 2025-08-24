# 🎓 Greenfields Academy Database System

This repository contains the **database system** for **Greenfields Academy**. 
The database centralizes student biodata, fee payments, attendance, and academic performance records to help the school generate reports more efficiently.  

---

## 📌 Scenario
Currently, Greenfields Academy manages records manually, making it difficult to:
- Calculate students’ termly averages  
- Identify fee defaulters  
- Generate report cards  
- Monitor school-wide attendance trends  
- Identify top-performing students  

This project provides a **MySQL-based centralized database** that solves these challenges.

---

## 📂 Repository Structure
greenfields_academy_db/
│── schema/create_tables.sql
│── queries/reports.sql
│── data/sample_data.sql
│── README.md

---

## ⚙️ Setup Instructions (XAMPP + phpMyAdmin)

### 1. Start XAMPP
- Open **XAMPP Control Panel**  
- Click **Start** for **Apache** and **MySQL**

### 2. Open phpMyAdmin
- In your browser, go to:
http://localhost/phpmyadmin

### 3. Create Database
- Click **Databases** in the top menu  
- Enter `greenfields_academy` as the database name  
- Click **Create**

### 4. Import Schema
- Select the `greenfields_academy` database  
- Go to the **Import** tab  
- Choose file → select `schema/create_tables.sql`  
- Click **Go**  

### 5. Load Sample Data
- Still inside `greenfields_academy`  
- Go to **Import** again  
- Choose file → select `data/sample_data.sql`  
- Click **Go**  

### 6. Run Queries
- Select the `greenfields_academy` database  
- Click the **SQL** tab  
- Copy and paste queries from `queries/reports.sql` (e.g., fee defaulters, top students, attendance trends)  
- Click **Go** to see the results  
