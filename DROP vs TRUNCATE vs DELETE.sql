/*
DROP keyword deletes a table as a structure totally from a database along with all its records, 
related objects like constraints and indexes. Also, the ROLLBACK statement will not be 
effective after executing a DROP statement to return a database to either its initial state or
the last COMMIT. Once a DROP keyword is executed, everything concerning the specified object is
completely gone, so it should only be used when it is sure the said object will never be useful
any longer.alter

TRUNCATE keyword removes all records from a table while keeping the table's structure and attributes.
It essentially functions like a DELETE statement without a WHERE clause. When it is used, auto-increment
values will be reset, meaning new records that will be inserted in the table will be numbered from the
beginning all over again. It is essentially faster than DELETE statement as it doesn't remove records 
row by row.  

DELETE statement removes records from a table row by row while keeping the table structure and attributes 
using the WHERE clause to meet certain conditions. Not using the WHERE condition will make it function like
a TRUNCATE statement, although a key difference will be that auto-increment values will not be reset. This
means that new records that will be inserted in the table will not be numbered from the beginning, but will
continue from the number of the last record inserted before the DELETE statement's execution. It is essentially
slower in execution than the TRUNCATE statement, as it removes records row by row. 
*/