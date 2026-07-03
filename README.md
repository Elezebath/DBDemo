# Student Database Practice Project (Completed)

This is a Maven + SQLite project completed as part of SQL practice. It demonstrates basic relational database operations using two tables: `courses` and `students`.

Each student is linked to a course using a foreign key relationship:

students.course_id → courses.course_id

---


## How It Works

When the program runs (`DatabaseDemo.main()`), it executes SQL files in order:

1. create.sql → Drops and recreates tables with constraints  
2. insert.sql → Inserts sample courses and students  
3. query.sql → Runs SQL queries and prints output  

---

## Database Design

### Courses Table
- course_id → Primary Key  
- course_name → Required  
- credits → Must be greater than 0  

### Students Table
- id → Primary Key  
- name → Required  
- email → Required & Unique  
- age → Must be 18 or older  
- course_id → Foreign Key → courses.course_id  

---

## SQL Operations Practiced

- CREATE TABLE with constraints (PK, FK, UNIQUE, CHECK, NOT NULL)  
- INSERT data into tables  
- SELECT queries  
- JOIN between students and courses  
- GROUP BY with COUNT  
- UPDATE records  
- DELETE records  

---

## Reset Behavior

Every execution resets the database:
- Tables are dropped and recreated
- Fresh data is inserted each run

---

## Learning Outcomes

- Relational database design  
- Foreign key relationships  
- SQL CRUD operations  
- JOIN and aggregation queries  
- Constraint handling in SQLite  

---

## Status

Project Completed Successfully.