CREATE OR REPLACE PACKAGE PKG_ADMIN_CATEGORY_FAV  IS
       FUNCTION GET_ID_CATEGORY_FAV(PNID_CATEGORY_FAV IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_CATEGORY(PNID_CATEGORY_FAV IN NUMBER)  RETURN VARCHAR2;
       PROCEDURE PROC_INSERT_CATEGORY_FAV(id_Category NUMBER, category_name VARCHAR2);
       PROCEDURE SET_ID_CATEGORY_FAV(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_NAME_CATEGORY(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
END PKG_ADMIN_CATEGORY_FAV;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_CATEGORY_FAV IS
        --FUNCTION GET_ID_CATEGORY_FAV IMPLEMENTATION
        FUNCTION GET_ID_CATEGORY_FAV(PNID_CATEGORY_FAV IN NUMBER)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_CATEGORY_FAV                        NUMBER(10);
         BEGIN
                  SELECT id_Category
                  INTO VNID_CATEGORY_FAV
                  FROM category
                  WHERE id_Category=PNID_CATEGORY_FAV;
                  RETURN (VNID_CATEGORY_FAV);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_CATEGORY IMPLEMENTATION
        FUNCTION GET_NAME_CATEGORY(PNID_CATEGORY_FAV IN NUMBER) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNNAME_CATEGORY_FAV VARCHAR2(50);

        BEGIN
                  SELECT category_name
                  INTO VNNAME_CATEGORY_FAV
                  FROM category
                  WHERE id_Category=PNID_CATEGORY_FAV;
                  RETURN (VNNAME_CATEGORY_FAV);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;
        
        PROCEDURE PROC_INSERT_CATEGORY_FAV(id_Category NUMBER, category_name VARCHAR2) IS
         
           BEGIN
             INSERT INTO category(id_Category, category_name)
             VALUES (id_Category, category_name);
             
           END PROC_INSERT_CATEGORY_FAV;
           
           
       PROCEDURE SET_ID_CATEGORY_FAV(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
         VMENERROR                             EXCEPTION;
           BEGIN
               UPDATE category SET id_Category= NEW_VALUE WHERE id_Category=OLD_VALUE;     
               IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');       
           END SET_ID_CATEGORY_FAV;
         
       PROCEDURE SET_NAME_CATEGORY(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
         VMENERROR                           EXCEPTION;
           BEGIN
               UPDATE category SET category_name= NEW_VALUE WHERE category_name=OLD_VALUE; 
               IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');           
           END SET_NAME_CATEGORY;


END PKG_ADMIN_CATEGORY_FAV;
