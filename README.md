# Navigate Events Birmingham: SQLite Database

## Overview

This project contains an SQLite database solution created for a fictional events management company called *Navigate Events Birmingham*.

The database was designed to support business operations and business intelligence reporting by storing information relating to:
- clients
- staff
- venues
- events
- invoices
- equipment
- event relationships

The project includes SQL scripts for database creation, data insertion, and reporting queries.

---

## Project Files

### SQL Scripts

- `sql/01_create_tables.sql` — Creates the database tables and constraints
- `sql/02_insert_lookup_data.sql` — Inserts lookup and reference data
- `sql/03_insert_main_data.sql` — Inserts core business data such as clients, venues, and staff
- `sql/04_insert_relationship_data.sql` — Inserts events, invoices, equipment, and relationship data
- `sql/05_business_intelligence_queries.sql` — Contains Business Intelligence queries and reporting examples

### Other Files

- `data/event_data_raw.csv` — Raw sample dataset used during database design and normalisation
- `database/navigate_events.db` — SQLite database generated from the SQL scripts

---

## Requirements

- SQLite3 CLI or SQLite extension for VS Code
- PowerShell or Command Prompt (Windows)
- Git (optional)

The project was developed using SQLite3 included with Anaconda on Windows.

---

## Database Setup

### Run Scripts Individually

```powershell
& 'C:\Path\To\sqlite3.exe' 'database\navigate_events.db' ".read sql/01_create_tables.sql"

& 'C:\Path\To\sqlite3.exe' 'database\navigate_events.db' ".read sql/02_insert_lookup_data.sql"

& 'C:\Path\To\sqlite3.exe' 'database\navigate_events.db' ".read sql/03_insert_main_data.sql"

& 'C:\Path\To\sqlite3.exe' 'database\navigate_events.db' ".read sql/04_insert_relationship_data.sql"

& 'C:\Path\To\sqlite3.exe' 'database\navigate_events.db' ".read sql/05_business_intelligence_queries.sql"
```

---

## Example Query

Example Business Intelligence query:

```sql
SELECT venue_name,
       COUNT(event_id) AS total_events
FROM EVENT
GROUP BY venue_id;
```

This query returns the total number of events held at each venue.

---

## Notes

- SQL scripts should be executed in numerical order (`01` → `05`) to maintain referential integrity and foreign key relationships.
- The database structure was normalised to reduce redundancy and improve data consistency.
- Example BI queries were created to support reporting requirements identified in the business scenario.

---

## Author

Created as part of a Business Intelligence and Database Systems assessment project (2025–26).
