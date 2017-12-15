#!/usr/bin/python
# Database Design Project      
# Group : IT7            
#Task 7 - part 1

import MySQLdb
conn = None
cursor = None
try:
    conn = MySQLdb.connect("back.db1.course.it.uu.se", "fall17_it7", "aaaCbaQp", "fall17_project_it7")  # hostname, username, password, database
    conn.autocommit(True)
    cursor = conn.cursor()

    while True:
        department_id = int(raw_input("Enter Department id (0 to exit): "))
        if department_id == 0:
            break

        cursor.execute("""
            SELECT id, title
            FROM Department
            WHERE parentId = %s
        """, (department_id,))  

    for row in cursor:
        print "%4d | %32s" % row 
except:
    print("Please dont be silly")        
finally:
    cursor.close()
    conn.close()
