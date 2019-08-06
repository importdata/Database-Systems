import sqlite3

def main():
    conn = sqlite3.connect("TVProject.db")
    conn.execute("PRAGMA foreign_keys = ON")
    cursor = conn.cursor()
    conn.text_factory = str
    tables = []
    operations = ["Insert", "Delete", "Update"]
    isFilled = False
    while True:
        print("Please select the table to operate on")
        i = 0
        for name in conn.execute("Select name from sqlite_master where type='table';"):
            print(f'Press {i} for {name[0]}')
            i += 1
            if not isFilled:
                tables.append(name[0])
        if not isFilled:
            isFilled = True
            
        print(f"Press {i} to exit")
        numAnswer = -1
        while numAnswer == -1:
            numAnswer = getInput(tables)
        if numAnswer == len(tables):
            break
        currentTable = tables[numAnswer]
        cursor.execute(f'SELECT * from {tables[numAnswer]} ;')
        
        # result = cursor.fetchall()
        # for x in result:
        #     print(x)
        print("Which operation would you like to perform")
        i = 0
        for x in operations:
            print(f"Press {i} for {x}")
            i += 1
        print(f"Press {i} for viewing the table")
        numAnswer = -1
        while numAnswer == -1:
            numAnswer = getInput(operations)
        if numAnswer == 0:
            while True:
                if insert(cursor,currentTable):
                    break
            conn.commit()
        elif numAnswer == 1:
            while not delete(cursor,currentTable):
                continue
            conn.commit()
        elif numAnswer == 2:
            while not update(cursor,currentTable):
                continue
            conn.commit()
        elif numAnswer == 3:
            cursor.execute(f'SELECT * from {currentTable} ;')
        
            result = cursor.fetchall()
            for x in result:
                print(x)
        print('\n\n')
    conn.close()

def insert(cursor,currentTable):
    queryString = ''
    print(cursor.execute(f'PRAGMA TABLE_INFO({currentTable})').fetchall())
    colTypes = cursor.execute(f'PRAGMA TABLE_INFO({currentTable})').fetchall()
    cursor.execute(f'SELECT * from {currentTable} ;')
    print("Please enter values for the fields! If you wish to put NULL type NULL!")
    colNames = cursor.description   
    current = 0
    for row in list(colNames):
        result = input(f'{row[0]}: ')
        if 'char' in colTypes[current][2]:
            queryString += "'" + result + "'"
        else:
            queryString += result
        if current < len(colNames)-1:
            queryString += ','
        current += 1

    try:
        #print(queryString) 
        cursor.execute(f'Insert into {currentTable} values ({queryString});')
    except sqlite3.Error:
        print("INSERTION ERROR ABORTING!!!")
        return False
    return True
    

def delete(cursor,currentTable):
    #IF LAST ITEM IN TUPLE FOR PRAGMA TABLE INFO IS 0 IT IS NOT PART OF THE PK! NON ZERO VALUE IS PART OF KEY
    queryString = ''
    primaryKey = []
    
    colTypes = cursor.execute(f'PRAGMA TABLE_INFO({currentTable})').fetchall()
    current = 0
    for x in colTypes:
        if x[5] > 0:
            primaryKey.append(x[1])
    for x in primaryKey:
        result = input(f'{x}: ')
        if 'char' in colTypes[current][2]:
            queryString += f"{primaryKey[current]}='{result}'"
        else:
            queryString += f"{primaryKey[current]}={result}"
        if current < len(primaryKey) -1:
            current += 1
            queryString += ' AND '
    try:
        cursor.execute(f'DELETE FROM {currentTable} WHERE {queryString};')
    except sqlite3.Error:
        print("DELETION ERROR!")
        return False
    return True


def update(cursor, currentTable):
    queryString1 = ''
    queryString2 = ''
    colTypes = cursor.execute(f'PRAGMA TABLE_INFO({currentTable})').fetchall()
    primaryKey = []
    current = 0
    for x in colTypes:
        if x[5] > 0:
            primaryKey.append(x[1])
    for x in primaryKey:
        result = input(f'{x}: ')
        if 'char' in colTypes[current][2]:
            queryString2 += f"{primaryKey[current]}='{result}'"
        else:
            queryString2 += f"{primaryKey[current]}={result}"
        if current < len(primaryKey) -1:
            current += 1
            queryString2 += ' AND '
    
    numAnswer = -1
    while numAnswer == -1:
        current = 0
        for x in colTypes:
            print(f'Press {current} to update {x[1]} ')
            current += 1
        numAnswer = getInput(colTypes)
        if numAnswer == 0:
            current = 0
    result = input(f"Select new value for {colTypes[numAnswer][1]}:")
    if 'char' in colTypes[numAnswer][2]:
        queryString1 = f"{colTypes[numAnswer][1]}='{result}'"
    else:
        queryString1 = f"{colTypes[numAnswer][1]}={result}"
    cursor.execute(f"Update {currentTable} Set {queryString1} where {queryString2};")
    # except sqlite3.Error:
    #     print("UPDATE ERROR! TRY AGAIN!")
    #     return False
    return True
    

def getInput(listTable):
    answer = input()
    numAnswer = -1
    try:
        numAnswer = int(answer)
    except ValueError:
        print("Cannot convert into an integer! Try again!")
        return -1
    if numAnswer < 0 or numAnswer > len(listTable):
            print("Number is outside the appropriate values!")
            return -1
    return numAnswer
    

main()
        
        
        
