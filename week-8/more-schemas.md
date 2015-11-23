##8.5 More Schemas

## 'Player Stats one-to-one Schema Practice':
![player_one_to_one.png](https://github.com/dandersen2/phase-0/blob/master/week-8/imgs/player_one-to_one.png "One-to-one Schema 1")

The above schema is a one-to-one relationship because each player only has one player_stats table and conversely, each player_stats table only applies to one player. The reason for separating them is to eliminate having to access uneccessary amounts of data every time the player entity is used. The "player" table contains only the most important and most frequently accessed details.

## 'Grocery Lists and Items many-to-many Schema Practice':
![many_to_many.png](https://github.com/dandersen2/phase-0/blob/master/week-8/imgs/many_to_many.png "Many To Many Schema 1")


##Reflections:

####QUESTION: What is a one-to-one database?
  ####ANSWER: A one-to-one database ties together to tables or data sets that are related to each other and are the only data that are tied to eachother.They are closely tied pairs. An example would be a country and its capital because a country only has one capital and a capital is only the capital of one country.

####QUESTION: When would you use a one-to-one database? (Think generally, not in terms of the example you created).
  ####ANSWER: A one-to-one database should be used for data that pertain only to one other data set. The parent table should not have more than one child, and the child should not have more than one parent.

####QUESTION: What is a many-to-many database?
  ####ANSWER: A many-to-many database is best used for tables that have associations with many other tables. Additionally, the tables that they are associated with are also tied to many tables. An example would be a patients and their health-care practitioners. Any one patient might have multiple doctors such as a primary care physician, a dermatologist, a psychiatrist, a dentist, etc. Each one of those practitioners also has many different patients so none of the relationships are simply one-to-one.

####QUESTION: When would you use a many-to-many database? (Think generally, not in terms of the example you created).
  ####ANSWER: I would use a many-to-many database to tie together parent tables that have multiple children tables to children tables that have multiple parent tables. This seems like a more common scenario than one-to-one databases.

####QUESTION: What is confusing about database schemas? What makes sense?
  ####ANSWER: Schemas can quickly get confusing with regard to which one is the parent of the other and which id is the primary key, and which is the foreign key. It might be useful to visualize databases in a top down perspective. When a real-world example is applied, the schemas' importance becomes easier to understand. The concept of having one and only one primary key makes sense so that any given entity will be easy to access and will not be confused with any other entity.

