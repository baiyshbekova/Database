# Art Exhibition & Gallery Management System Database Project

This repository contains the final project for my database course, implementing an art exhibition and gallery management system using PostgreSQL. The system manages artists, artworks, exhibitions, visitors, tickets, and sales, demonstrating core database concepts like relationships, normalization, transactions, indexing, and data integrity.

## Project Overview

The database models an art gallery environment, supporting operations such as:
- Managing artists and their artworks.
- Organizing exhibitions and linking artworks to exhibitions.
- Tracking visitors, ticket purchases, and artwork sales.
- Maintaining data integrity through primary and foreign keys.
- Performing queries for reports and analytics.

The design emphasizes normalized tables, clear relationships, and real-world applicability. Sample data and transaction examples illustrate typical use cases.

## Files in the Repository

### 1. Database Schema and ER Diagram
- **`schema.sql`**: Contains all table definitions, constraints, foreign keys, and indexes.
- **`ERD.pdf`**: Visual representation of entities, relationships, and cardinalities.
- The schema includes bridge tables for many-to-many relationships (e.g., `exhibition_artworks`).

### 2. Sample Data
- **`sample_data.sql`**: Inserts sample artists, artworks, exhibitions, visitors, tickets, and sales.
- Includes updates to reflect sold artworks.

### 3. Queries
- **`queries.sql`** contains:
  - Basic queries: listing artworks with artist names, unsold artworks, total visitors per exhibition.
  - Advanced queries: most popular artist, average sale price per art type, and more.

### 4. Transactions
- **`transactions.sql`** demonstrates transactions with `BEGIN` / `COMMIT`:
  - Selling an artwork.
  - Updating artwork status.
- Ensures atomic operations and data integrity.

## Key Features

- Relationships:
  - One-to-many: artists → artworks, visitors → tickets, visitors → sales.
  - Many-to-many: artworks ↔ exhibitions via `exhibition_artworks`.
- Indexing for performance optimization on common queries (e.g., artist names, exhibition start dates, art types).
- Normalized tables to reduce redundancy and maintain data consistency.

