# Pewlet-Hackard-Analysis
Exploring Databases with SQL

## Overvies of Project

Bobby has proven his SQL chops, his manager gave both of us two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to particate in a mentorship program.

### Determine the Number of Retiring Employees per Title

ERD was created using SQL queries to create a Retirement Titles tabel that holds all titles of employees  who were born between Januart 1, 1952 and December 31, 1955. This table and others that were created were used in the SQL file.  Two tables were joined and filtered on the birthdate between 1952 and 1955.<img width="160" alt="First table Small" src="https://user-images.githubusercontent.com/98991575/164950862-200386b5-3c12-4598-8e8d-7fd59aaee5f6.png">

### Removing Duplicate Entries

DISTINCT ON statement was used to retrive the first occurrence of the employee number.  The data was filtered to_date to keep only current employees and sorted by employee number.
![SND-Screen](https://user-images.githubusercontent.com/98991575/164950868-d8cb6e2f-5247-4798-abe9-2afa5ca96483.png)

### Employees Eligible for the Mentorship Program

Using created ERD and knowledge of SQL queries, a mentorship-eligibility table of current employees born between January 1, 1965 and December 31,1965 was created. The challenge was using DISTINCT ON statement and two joins to create the table ordered by the employee number.
![third](https://user-images.githubusercontent.com/98991575/164950871-c5a28d56-0b0d-4fe7-af6b-99f39a56205d.png)

There will be 72458 of roles that will need to be filled as the "silver tsunami" begins.  Unfortunately there are not enough qualified, retirement-ready employees to fill all of the positions.
![wave](https://user-images.githubusercontent.com/98991575/164950845-64d315de-7101-48dd-a2f5-d5d43ad321b1.jpeg)
Retirement count by title:![ret-count](https://user-images.githubusercontent.com/98991575/164950890-3ed0f8b5-1084-484e-8a7c-ca3d75d3178e.png)
Qualified employies count by title: <img width="239" alt="mentor_count" src="https://user-images.githubusercontent.com/98991575/164950920-75895f51-7ad4-4ced-b26b-bcd6fbebf868.png">
