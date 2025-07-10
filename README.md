
# Sakila SQL Project

This repository contains the MySQL Sakila sample database with:

- Schema and data SQL scripts
- Sample queries for practice and demonstration
- CI/CD pipeline to automatically run SQL tests on GitHub Actions
- Setup instructions for running locally with VS Code and MySQL

---

## Setup

1. Install MySQL Community Server: https://dev.mysql.com/downloads/installer/
2. Import schema and data:

```bash
mysql -u root -p < sql/sakila-schema.sql
mysql -u root -p < sql/sakila-data.sql
```

3. Open VS Code and install SQLTools extension  
4. Create a connection to your local MySQL (`root@localhost:3306`) with default database `sakila`

---

## Running Queries

Sample query:

```sql
USE sakila;
SELECT * FROM actor LIMIT 10;
```

---

## CI/CD

GitHub Actions workflow automatically runs simple test queries to ensure the database loads correctly and queries work.

---

## License

MIT
