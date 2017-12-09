#!/usr/bin/python
# Database Design Project      
# Group : IT7            
#Task 7 - part 2

import MySQLdb

conn = MySQLdb.connect("back.db1.course.it.uu.se", "fall17_it7", "aaaCbaQp", "fall17_project_it7")  # hostname, username, password, database
conn.autocommit(True)
cursor = conn.cursor()

while True:
    product_id = int(raw_input("Enter Product id (0 to exit): "))
    if product_id == 0:
        break

    cursor.execute("""
        SELECT id,title, price_Discount
        FROM Product
        WHERE id = %s
    """, (product_id,))

    for row in cursor:
        print "%4d | %32s | %4d" % row
        print "Change the discount value to : "
        changed_discount = int(raw_input("Enter the discount value(0 to exit)"))
        cursor.execute("""
                UPDATE Product
                SET price_Discount = %s
                WHERE id = %s
        """,(changed_discount,product_id))

cursor.close()
conn.close()
