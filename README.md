
# Sakila SQL Project

This project contains a collection of SQL queries and tests built around the **Sakila** sample database. It is designed for learning and demonstrating SQL skills with a real-world movie rental dataset.

---

## Project Overview

- **Dataset**: Sakila is a popular sample database provided by MySQL, modeling a DVD rental store.
- **Purpose**: This project contains curated SQL queries showcasing common and advanced querying techniques.
- **Tech Stack**: MySQL, GitHub Actions for CI/CD testing, and VSCode for development.
- **Use Case**: Perfect for practicing SQL, portfolio demonstrations, or integration into CI/CD workflows.

---

## Repository Structure

```plaintext
sql_proj/
│
├── .github/
│   └── workflows/
│       └── test-sql.yml        # GitHub Action to run SQL tests on Sakila DB
├── .vscode/
│   └── settings.json           # VSCode workspace settings
├── sql/
│   ├── actor_queries.sql       # Queries related to actors
│   ├── film_queries.sql        # Queries related to films
│   ├── staff_queries.sql       # Queries related to staff members
│   ├── payment_queries.sql     # Queries related to payments
│   └── rental_queries.sql      # Queries related to rentals
├── tests/
│   └── test_queries.sql        # Test queries to validate database contents
├── Chinook_Sqlite.sqlite       # Sample SQLite database (if applicable)
├── sakila-schema.sql           # Schema definition for Sakila DB
├── sakila-data.sql             # Data import script for Sakila DB
├── README.md                   # This file
└── .gitignore                  # Git ignore rules
```

---

## CI/CD

GitHub Actions workflow automatically runs simple test queries to ensure the database loads correctly and queries work.

---

## License

MIT
