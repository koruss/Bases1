CREATE OR REPLACE PACKAGE PKG_ADMIN_EMAIL  IS
       FUNCTION GET_ID_EMAIL(PNID_EMAIL IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_MAIL(PNID_EMAIL IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_ID_PERSON(PNID_EMAIL IN NUMBER)  RETURN NUMBER;
       PROCEDURE PROC_INSERT_EMAIL(ID_EMAIL NUMBER,MAIL VARCHAR2,ID_PERSON NUMBER);
       PROCEDURE SET_ID_EMAIL(NEW_VALUE NUMBER, OLD_VALUE NUMBER);
       PROCEDURE SET_MAIL(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2);
       PROCEDURE SET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER);

END PKG_ADMIN_EMAIL;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_EMAIL IS
        --FUNCTION GET_ID_EMAIL IMPLEMENTATION
        FUNCTION GET_ID_EMAIL(PNID_EMAIL IN NUMBER)  RETURN NUMBER
         IS
                  VNID_EMAIL                      NUMBER(10);
         BEGIN
                  SELECT ID_EMAIL
                  INTO VNID_EMAIL
                  FROM EMAIL
                  WHERE ID_EMAIL=PNID_EMAIL;
                  RETURN (VNID_EMAIL);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_MAIL IMPLEMENTATION
        FUNCTION GET_MAIL(PNID_EMAIL IN NUMBER)  RETURN VARCHAR2
         IS
                  VNNAME_EMAIL                     VARCHAR2(20);
         BEGIN
                  SELECT MAIL
                  INTO VNNAME_EMAIL
                  FROM EMAIL
                  WHERE ID_EMAIL=PNID_EMAIL;
                  RETURN (VNNAME_EMAIL);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNID_EMAIL IN NUMBER) RETURN NUMBER
        IS
                 VNID_PERSON NUMBER(20);

        BEGIN
                  SELECT ID_PERSON
                  INTO VNID_PERSON
                  FROM EMAIL
                  WHERE ID_EMAIL=PNID_EMAIL;
                  RETURN (VNID_PERSON);
        END;

        PROCEDURE PROC_INSERT_EMAIL(ID_EMAIL NUMBER,MAIL VARCHAR2,ID_PERSON NUMBER) IS
         
           BEGIN
             INSERT INTO EMAIL(ID_EMAIL,MAIL,ID_PERSON)
             VALUES (ID_EMAIL,MAIL,ID_PERSON);
             
           END PROC_INSERT_EMAIL;
           
           
        ---------------------------------------------------------------------------------
        PROCEDURE SET_ID_EMAIL(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
           BEGIN
               UPDATE EMAIL SET ID_EMAIL= NEW_VALUE WHERE ID_EMAIL=OLD_VALUE;             
           END SET_ID_EMAIL;
         
         
         ---------------------------------------------------------------------------------
         PROCEDURE SET_MAIL(NEW_VALUE VARCHAR2, OLD_VALUE VARCHAR2) IS
           BEGIN
               UPDATE EMAIL SET MAIL= NEW_VALUE WHERE MAIL=OLD_VALUE;            
           END SET_MAIL;
         
         
         ---------------------------------------------------------------------------------
         PROCEDURE SET_ID_PERSON(NEW_VALUE NUMBER, OLD_VALUE NUMBER) IS
           BEGIN
               UPDATE EMAIL SET ID_PERSON= NEW_VALUE WHERE ID_PERSON=OLD_VALUE;             
           END SET_ID_PERSON;
END PKG_ADMIN_EMAIL;
