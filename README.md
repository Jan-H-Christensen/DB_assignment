# Manual Database Migration

## [Initial Schema Setup](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/initial-schema/e_commerce_setup.sql)

## [Add Product Categories](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-categorie/add_categorie_db.sql)

## [Implement Product Ratings](https://github.com/Jan-H-Christensen/DB_assignment/blob/manual/add-ratings/add_tlb_ProductRating.sql)

![Image of the created tbl](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/adding%20new%20tbl.png)

## Merge and Conflict Resolution

1. make sure your in the main branch by typ git checkout main
2. then you can start merging the branches into the mein by
   2.1 git merge manual/initial-schema
   2.2 git merge manual/add-categorie
   2.3 git merge manual/add-ratings
3. at the end your source control graph should look like that
   ![Image source control graph](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/SCG.png)
   and the main branch should look like this
   ![Image main branch](https://github.com/Jan-H-Christensen/DB_assignment/blob/main/main_branch.png)

## Rollback Plan
