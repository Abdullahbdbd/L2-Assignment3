# ⚽ Football Ticket Booking System

## 📌 Project Overview
This project is a simple Football Ticket Booking System database built using PostgreSQL.  
It manages users, football matches, and ticket bookings with proper relationships.

---

## 🗄️ Database Tables

### 1. Users
Stores information about football fans and ticket managers.

### 2. Matches
Stores football match details including teams, tournament type, ticket price, and status.

### 3. Bookings
Stores ticket booking information linking users and matches.

---

## 🔗 Relationships

- One User → Many Bookings  
- One Match → Many Bookings  
- Each Booking connects one User with one Match

---

## 🧾 SQL Features Used

- CREATE TABLE with constraints (PK, FK, CHECK)
- INSERT INTO sample data
- JOIN (INNER JOIN, LEFT JOIN)
- Subqueries
- Aggregation (AVG)
- NULL handling (COALESCE)
- Pattern matching (LIKE / ILIKE)
- Pagination (LIMIT, OFFSET)

---

## 📁 Files in this Repository

- schema.sql → Database structure + sample data
- query.sql → All required SQL queries
- README.md → Project documentation

---

## 🔗 Important Links

### ERD Diagram
https://drive.google.com/file/d/1AEN3WHx2B0dM5VyKaYyuj2sd_O-S7krY/view

### GitHub Repository
https://github.com/Abdullahbdbd/L2-Assignment3

---

## 🚀 How to Run

1. Open PostgreSQL (Beekeeper Studio or pgAdmin)
2. Run `schema.sql` to create tables and insert data
3. Run `query.sql` to test all queries

---

## 👨‍💻 Author
Football Ticket Booking System Assignment Project