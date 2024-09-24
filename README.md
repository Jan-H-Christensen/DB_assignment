# **Manual Database Migration**

## **Setting Up an E-Commerce Database in SQL Server Management Studio** :rocket:

This guide demonstrates how to set up a simple e-commerce database in SQL Server Management Studio (SSMS) using scripts.

## **Prerequisites** :memo:

- Microsoft SQL Server Management Studio installed.
- Basic understanding of SQL.

## **Initial Schema Setup** :wrench:

1. **Open SSMS:**
   - Launch SQL Server Management Studio.
2. **create a New Query:**
   - Connect to your desired database server and create a new query window.
3. **Initial Schema Setup:**
   - and paste the contents of the script [e_commerce_setup.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/initial-schema/e_commerce_setup.sql) file into the query window.
   - Execute the script by clicking the "Run" button (or pressing F5). This script creates the initial tables for your e-commerce database

## **Add Product Categories** :hammer:

1. **Create a New Query:**
   - Create a new query window within SSMS.
2. **Add Product Categories:**
   - and paste the contents of the script [add_categorie_db.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-categorie/add_categorie_db.sql) file into the query window.
   - Execute the script by clicking the "Run" button (or pressing F5). This script creates the initial tables for your e-commerce database
3. for now your db diagram should look like this

![Image of the created tbl category](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/adding%20category%20tbl.png)

## **Implement Product Ratings** :pencil2:

1. **Create a New Query:**
   - Create a new query window within SSMS.
2. **Implement Product Ratings:**
   - and paste the contents of the script [add_tbl_ProductRating.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-ratings/add_tlb_ProductRating.sql) file into the query window.
   - Execute the script. This script creates the ProductRatings table to store user ratings for products.
3. in the end your db diagram should look like this

![Image of the created tbl](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/adding%20product%20tbl.png)

## **Merge and Conflict Resolution** :twisted_rightwards_arrows:

1. make sure you are in the main branch by typ git checkout main
2. then you can start merging the branches into the main by
   - git merge manual/initial-schema
   - git merge manual/add-categorie
   - git merge manual/add-ratings
3. at the end your source control graph could look like that

   ![Image source control graph](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/SCG.png)

   and the main branch could look like this

   ![Image main branch](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/main_branch.png)

## **Rollback Plan** :arrow_down:

For the rollback you have to follow these steps based on how fra you want to rollback,
run this sql command from this [Rollback script](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/sql_rollback.sql) you SQL Server Management

- if you want to remove the table ProductRatings than run only the first (remember to remove the lines 4-11)
- if you want to remove the category in the product tbl than you have to remove the lines 13 & 14
- if you want to make a fully rollback than you can run the whole script
