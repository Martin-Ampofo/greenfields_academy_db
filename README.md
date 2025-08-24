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

## ⚙️ Setup Instructions

1. Create the database and tables:
   SOURCE schema/create_tables.sql;
2. Load sample data:
   SOURCE data/sample_data.sql;
3. Run example queries:
   SOURCE queries/reports.sql;
