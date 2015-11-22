##8.4 Introduction to Database Schemas and SQL

Create SQL Queries for the following:

1. Select all data for all states.
  SELECT * FROM states;

2. Select all data for all regions.
  SELECT * FROM regions;

3. Select the state_name and population for all states.
  SELECT state_name, population FROM states;

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
  SELECT state_name, population FROM states ORDER BY population DESC;

5. Select the state_name for the states in region 7.
  SELECT state_name FROM states WHERE region_id = 7;

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
  SELECT state_name, population_density FROM states where population_density >50 ORDER BY population_density ASC;

7. Select the state_name for states with a population between 1 million and 1.5 million people.
  SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;

8. Select the state_name and region_id for states ordered by region in ascending order.
  SELECT state_name, region_id FROM states ORDER BY region_id ASC;

9. Select the region_name for the regions with "Central" in the name.
  SELECT region_name FROM regions WHERE region_name LIKE '%Central%';

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
  SELECT region_name, state_name FROM states JOIN regions ON states.region_id=regions.id ORDER BY region_id;

## 'Outfits Schema Practice':
![outfits_schema.png](https://github.com/dandersen2/phase-0/blob/master/week-8/database-intro/outfits_schema.png "Outfit Schema 1")

QUESTION: What are databases for?
  ANSWER:  Databases are useful for storing large amounts of data that are
  associated with each other. They are the most effective way to store lots
  of pieces of information and still be able to read and access it effectively.
  Relational databases use multiple tables that reference each other to
  minimize empty space and keep the database efficient.

QUESTION: What is a one-to-many relationship?
  ANSWER:  A one to many relationship is when one "entity" is associated with many other entities. For example, a computer compnay may have many different types of computers that they produce. The company would be the "parent" or the "one" in this example. A computer though, only has one company that makes it. The iPad, iPod, iPhone, iMac, and Powerbook are all "many" children associated with the Apple "one". Many to many relationships are when a child can be associated to multiple parents and parents can also be associated with many children.

QUESTION: What is a primary key? What is a foreign key? How can you determine which is which?
  ANSWER:A primary key, or unique key is a key that is unique to a single record. No record may share the same value for their primary key with any other record. An example of this is a social security number because every person must have one in the US but no two people can share the same number. A foreign key is an identifier that refers to a primary key for that particular record but within another table. Multiple records within a table MAY share the same foreign key, but only one record in a table may have a given primary key value.

QUESTION: How can you select information out of a SQL database? What are some general guidelines for that?
  ANSWER:  In SQL, the SELECT and FROM commands can be used to pull data from a particular column, or data field, and from a specific table. For example the   `SELECT state_name, population FROM states ORDER BY population DESC;` command in SQL will pull all the data in the state name column and the population column for all states and it will return the results ordered by their population in descending order.

