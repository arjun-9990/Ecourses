# 🎓 Education E-Commerce (Courses)

> A full-stack **Education E-Commerce Web Application** for selling online courses.  
> Built using **Java (Servlets + JSP)** and **MySQL**, this project demonstrates a real-world course marketplace with CRUD operations, authentication, and order management.

---

## 📘 Table of Contents

1. [📖 Project Overview](#-project-overview)
2. [✨ Features](#-features)
3. [🖥️ Pages](#%EF%B8%8F-pages)
4. [🧰 Tech Stack](#-tech-stack)
5. [⚙️ Prerequisites](#%EF%B8%8F-prerequisites)
6. [🗄️ Database Schema](#%EF%B8%8F-database-schema)
7. [🚀 Installation & Setup](#-installation--setup)
8. [📂 Project Structure](#-project-structure)
9. [🔑 Key Servlets / JSPs / Endpoints](#-key-servlets--jsps--endpoints)
10. [🧭 Usage Flow](#-usage-flow)
11. [🛠️ Troubleshooting](#%EF%B8%8F-troubleshooting)

---

## 📖 Project Overview

This application serves as an online platform where:
- **Admins** can manage courses (add/edit/remove).
- **Users** can register, log in, browse, and purchase courses.

It showcases:
- CRUD operations
- Authentication
- Session handling
- Payment simulation
- Order history tracking

---

## ✨ Features

| Category | Description |
|-----------|-------------|
| 👥 User | Registration, Login, and Session Management |
| 🛒 Cart | Add/Remove courses, view selections |
| 🧑‍🏫 Admin | Manage (Add/Edit/Delete) Courses |
| 💳 Checkout | Simulated Credit/Debit/UPI payment |
| 📚 Courses | Browse by categories, search, and view details |
| 📦 Orders | View order history after successful checkout |

---

## 🖥️ Pages

| Page | Description |
|------|-------------|
| **Home** | Landing page with featured courses |
| **About** | Platform or institution information |
| **Courses** | Displays all available courses |
| **Teachers** | Instructor profiles |
| **Contact** | Contact form and info |
| **Blogs** | Educational articles |
| **Sign In / Sign Up** | Authentication pages |
| **Cart** | Shows selected courses |
| **Payment** | Payment form (Credit/Debit/UPI) |
| **Order Success** | Checkout confirmation |
| **My Orders** | Shows user's completed orders |

---

## 🧰 Tech Stack

| Layer | Technology |
|-------|-------------|
| Backend | Java 8+ / 11+, Servlets (Jakarta API) |
| Frontend | JSP, HTML, CSS, JavaScript |
| Database | MySQL 5.7+ / 8.0+ |
| Server | Apache Tomcat 9 / 10 |
| Build Tool | Maven (Recommended) |

---

## ⚙️ Prerequisites

Before you begin, ensure you have the following installed:

- ☕ **Java JDK 8 or later**  
- 🐱‍🏍 **Apache Tomcat 9+**  
- 🐬 **MySQL Server**  
- 🔧 **Maven** *(optional but recommended)*  

---

## 🗄️ Database Schema

The database contains core entities such as:

- `users` – for user accounts and authentication  
- `categories` – for course grouping  
- `courses` – main course catalog  
- `carts` – temporary user course selections  
- `orders` – finalized user purchases  

> 💡 You can find SQL scripts inside the `/database` folder (or inline in documentation).

---

## Project Structure

edu-ecommerce/
├─ src/
│  ├─ main/
│  │  ├─ java/com/example/controller/   # Servlets
│  │  ├─ java/com/example/dao/          # DAO (Data Access Layer)
│  │  ├─ java/com/example/model/        # Model/POJOs
│  │  ├─ webapp/
│  │  │  ├─ WEB-INF/
│  │  │  │  └─ web.xml
│  │  │  ├─ views/
│  │  │  │  ├─ home.jsp
│  │  │  │  ├─ about.jsp
│  │  │  │  ├─ courses.jsp
│  │  │  │  ├─ teachers.jsp
│  │  │  │  ├─ contact.jsp
│  │  │  │  ├─ blogs.jsp
│  │  │  │  ├─ login.jsp / signup.jsp
│  │  │  │  ├─ cart.jsp
│  │  │  │  ├─ payment.jsp
│  │  │  │  ├─ order-success.jsp
│  │  │  │  └─ my-orders.jsp
│  │  │  └─ assets/
│  └─ resources/
├─ pom.xml
└─ README.md




## 🚀 Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/arjun-9990/Ecourses.git
   cd edu-ecommerce
