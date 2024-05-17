# ASP OL Media SQL Project

This repository contains the SQL project for ASP OL Media, a marketing company specializing in email services for Forbes 100 companies. The project includes the SQL file required to load and upload all the data.

## Background and Data Set Overview

ASP OL Media is a marketing company with over 170 professionals across India. They send over 8 million emails daily, necessitating meticulous assessments and stringent quality control measures to ensure effective marketing campaigns.

Initially, we had 8 tables, and we created 2 associative tables and 1 additional table after normalization. Here's an overview of the tables:

1. **Customers Table:** Contains customer information, including `customer_id` and `email_id`. There are separate tables for active and unsubscribed customers.
2. **Active Customers Table:** Stores information about customers with active emails.
3. **Unsubscribed Customers Table:** Stores information about customers who are inactive or have unsubscribed.
4. **Email Customer Table:** An associative entity table containing `Customer ID` and `Group ID` information.
5. **Email Group Table:** Provides information about companies and their campaigns associated with a `group ID`.
6. **Campaign Email Table:** An associative entity table containing `Campaign ID` and `Group ID` information.
7. **Company Campaign Table:** Contains information about companies and their campaigns.
8. **Offer Details Table:** Contains a unique `offer_id` for each offer and corresponding information.
9. **Offer Send Details Table:** Uses `send_id` as the primary key, representing unique keys for each company's campaign sent at different times.
10. **Offer Email Subject Table:** Uses an auto-incremented `id` as the primary key and associates an email subject with each unique ID.

## Objective

The project's objective is to create and optimize the database management system for ASP OL Media and derive insights to improve operations. This includes data wrangling, cleaning, creating an ERD, constructing a relational schema, and applying normalization techniques to minimize redundancy and improve efficiency. We established primary and foreign keys to maintain data integrity throughout the project.

After creating the database, the focus shifts to conducting in-depth data analysis to derive valuable insights. This involves analyzing campaign performance using metrics like click rate and unsubscribers, identifying effective email subjects, and informing future campaign strategies for better results.

## Approach

We began with CSV files from the company, which contained table creation and insert statements. We extracted and cleaned the data, resolving recurring column names and duplicate values. Primary and foreign keys were established to organize the database structure better.

After creating the ERD and relational schema, we imported the cleaned CSV files into the MySQL server, assigned primary and foreign keys, and introduced two additional tables for managing associative entities: "campaign_email" and "email_customer".

## ERD Diagram

![ERD](https://github.com/archita612/AspOL_Media_Campaign_Management/blob/main/ERD%20Final.jpeg)

## Relational Schema
![RDS](https://github.com/archita612/AspOL_Media_Campaign_Management/blob/main/Relational%20Schema%20Final.jpeg)

## Description of ERD and Relational Schema

- **Company Campaign Table:** `Campaign ID` is the primary key. Other attributes: `CompanyCode`, `CompanyName`, `CampaignID`, `offer_ID`,
