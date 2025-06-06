-- This process works because MySQL does not allow the RENAME DATABASE command anymore due to potential issues with the operation. So, we need to create a new database, transfer the data and then remove the old one.

1st ->  CREATE DATABASE new_database_name;
2nd ->  RENAME TABLE old_database_name.table1 TO new_database_name.table1;
        RENAME TABLE old_database_name.table2 TO new_database_name.table2;
        -- Repeat for all tables in the old database
