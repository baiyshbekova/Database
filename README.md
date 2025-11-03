# Project Overview

Art Exhibition & Gallery Management System is a database project designed to manage information about artists, artworks, exhibitions, visitors, and sales within an art gallery.
The system allows efficient tracking of exhibitions, ticket sales, and artwork purchases, providing insights into artist performance and visitor engagement.
This project was developed as part of the Database Systems Final Project using PostgreSQL.

## Features 
### Store and manage data about:
* Artists and their artworks
* Exhibitions and displayed artworks
* Visitors and ticket purchases
* Artwork sales and transactions
* Perform advanced SQL queries for analytics
### Demonstrate use of:
* ER-diagram & normalized schema
* Transactions and indexing
* Backup and restore operations

## Database Schema
### Main Tables
- `artists` — Stores artist details  
- `artworks` — Stores artworks and their attributes  
- `exhibitions` — Information about art exhibitions  
- `exhibition_artworks` — Links artworks to exhibitions  
- `visitors` — Stores visitor data  
- `tickets` — Manages ticket sales  
- `sales` — Records artwork purchases

### Relationships
* One artist can have many artworks
* One artwork can appear in many exhibitions
* One visitor can buy multiple tickets or artworks

## Project Structure
```
ArtGalleryDB/
│
├── sql/
│ ├── create_tables.sql
│ ├── insert_data.sql
│ ├── queries.sql
│ ├── transactions.sql
│
├── docs/
│ ├── ER-diagram.png
│
└── README.md
```




