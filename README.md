# e-library_Database_System
Project to develop a comprehensive and user-friendly e-library platform (as part of Pacmann AI Program: SQL and Relational Database)

## Database Design
### Mission Statement: 

To develop a database and accomodate user-friendly e-library platform that empowers users to access a vast collection of books from multiple libraries, facilitating easy borrowing and accomodate queuing hold system.

### Business Rule
1. Scalable multiple libraries
   * handle multiple libraries includes its growing number and book collections
2. Comprehensive Book Collection
   * Maintain a diverse collection of books including information of title, author, genre, and categorized for ease of searching
   * Ability to provide up-to-date books availability information
3. User data and interface
   * Manage user information
   * Possibility to provide user interface in borrow books, place hold queue, and managing their account
4. Borrow and Hold Management
   * managing book loans, including tracking loan dates, due dates, and return dates
   * member's borrow and hold limitation system

### Table Structure
Table and its relational is created using sql (Postgresql). The Data Definition Language (DDL) syntax can be found in the [file]

ERD

![Image]

## Create Dummy Data
Dummy data for development are creating using Python libraries such as Panda and Faker, the script available [here]


## Data Analysis
The Dummy data are input into the database and utilized for data analysis.

5 Questions and sql query used for analysis:
1. How many books are in each library's collection?
2. Which are the most borrowed genres across all libraries?
3. What is the average borrowing duration for users?
4. Which book with the most number of holds?
5. Which libraries have the highest and lowest borrowing rates?
