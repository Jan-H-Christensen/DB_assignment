# Manual Database Migration

This is a short instruction how to setup a small e-commerce db in microsoft sql server management by using a script

## Initial Schema Setup

1. open you sql server management
2. open a new query
3. then run the script [e_commerce_setup.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/initial-schema/e_commerce_setup.sql) file

## Add Product Categories

1. open a new query
2. then run the script [add_categorie_db.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-categorie/add_categorie_db.sql) file

![Image of the created tbl category](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/adding%20category%20tbl.png)

## Implement Product Ratings

1. open a new query
2. then run the script [add_tbl_ProductRating.sql](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-ratings/add_tlb_ProductRating.sql) file
3. in the end your db diagram should look like this

![Image of the created tbl](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/adding%20product%20tbl.png)

## Merge and Conflict Resolution

1. make sure your in the main branch by typ git checkout main
2. then you can start merging the branches into the mein by
   - git merge manual/initial-schema
   - git merge manual/add-categorie
   - git merge manual/add-ratings
3. at the end your source control graph could look like that

   ![Image source control graph](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/SCG.png)

   and the main branch should look like this

   ![Image main branch](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/main_branch.png)

## Rollback Plan

For the rollback you have to follow this steps based on how fra you want to rollback,
run this sql command from this [Rollback script](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/sql_rollback.sql) you SQL Server Management

- if you want to remove the table ProductRatings than run only the first (remember to remove the lines 13 & 14)
- if you want to remove the category in the product tbl than you have to remove the lines 5 - 11
- if you want to make a fully rollback than you can run the whole script
