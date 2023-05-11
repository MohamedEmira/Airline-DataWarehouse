# Airline-DataWarehouse
## Overview
This project aims to analyze the flight activity of a major airline company in order to improve ongoing business processes and identify new opportunities. The analysis will focus on the following areas:

1. Flights taken by frequent flyers
2. Fare basis and upgrade frequency
3. Earning and redeeming of frequent flyer miles
4. Response to special fare promotions
5. Duration of overnight stays
6. Proportion of frequent flyers with gold, platinum, or titanium status

Additionally, the reservation process will be examined to analyze the company's profit. It should be noted that reservations can be made through multiple channels. The customer care interactions will also be considered to handle customer inquiries, complaints, and collect feedback for business enhancements.

## Processes
1. Flight Activity Analysis
2. Reservation Process
3. Customer Care Interaction

## Modeling Technique: Data Vault

### Logical Design
The logical design of the data model follows the Data Vault approach, which focuses on flexibility, scalability, and traceability. 


### Physical Design
The physical design of the data model builds upon the logical design and implements the necessary tables and relationships


## Repository Files

1. `AIRLINE_SYSTEM_DV.pdf`: This document provides the detailed design of the Data Vault structure, including the hub, link, and satellite entities.

2. `AIRLINE_D_F.pdf`: This document outlines the design of the fact and dimensional tables for the data warehouse.

3. `Business Processes and Assumptions.pdf`: This document describes the assumptions made during the analysis and modeling process.

4. `Indexes_and_Partitions.pdf`: This document is research paper to what types of indexes could be used in our project.

5. `TABLES_DESC.xlsx`: This document contain what are the tables and their attributes

6. `DB Script.sql`: This document contain the Database script to create the Data Warehouse tables and inhibt it with dummy data.

7. `SQL QUERIES.txt`:This document have some simple quaires just as exploration to data.

Please refer to these files for a comprehensive understanding of the data vault design, data warehouse design, and the assumptions made for the business processes.

By analyzing flight activity, reservations, and customer care interactions, this project aims to provide valuable insights to the executive management, assist in decision-making, and support ongoing business process improvements.
