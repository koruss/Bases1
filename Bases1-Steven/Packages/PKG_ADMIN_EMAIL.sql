CREATE OR REPLACE PACKAGE PKG_ADMIN_EMAIL  IS
       FUNCTION GET_EMAIL(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2;
       FUNCTION GET_ID_PERSON(PNEMAIL IN VARCHAR2)  RETURN VARCHAR2;
       PROCEDURE INSERT_EMAIL(PNEMAIL VARCHAR2,PNIDENTIFICATION VARCHAR2);
       PROCEDURE SET_EMAIL(PNNEW_VALUE VARCHAR2, PNOLD_VALUE VARCHAR2);
       PROCEDURE SET_ID_PERSON(PNNEW_VALUE VARCHAR2, PNOLD_VALUE VARCHAR2);

END PKG_ADMIN_EMAIL;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_EMAIL IS

        -------------------------------------------------------------------------------
        --FUNCTION GET_MAIL IMPLEMENTATION
        FUNCTION GET_EMAIL(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2
         IS
                  VNNAME_EMAIL   VARCHAR2(50);
         BEGIN
                  SELECT EMAIL
                  INTO VNNAME_EMAIL
                  FROM EMAIL
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNNAME_EMAIL);
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_PERSON(PNEMAIL IN VARCHAR2) RETURN VARCHAR2
        IS
                 VNID_PERSON NUMBER(20);

        BEGIN
                  SELECT IDENTIFICATION
                  INTO VNID_PERSON
                  FROM EMAIL
                  WHERE EMAIL=PNEMAIL;
                  RETURN (VNID_PERSON);
        END;

        PROCEDURE INSERT_EMAIL(PNEMAIL VARCHAR2,PNIDENTIFICATION VARCHAR2) IS
         
           BEGIN
             INSERT INTO EMAIL(EMAIL,IDENTIFICATION)
             VALUES (PNEMAIL,PNIDENTIFICATION);
             
           END INSERT_EMAIL;
           
                    
         ---------------------------------------------------------------------------------
         PROCEDURE SET_EMAIL(PNNEW_VALUE VARCHAR2, PNOLD_VALUE VARCHAR2) IS
           BEGIN
               UPDATE EMAIL SET EMAIL= PNNEW_VALUE WHERE EMAIL=PNOLD_VALUE;            
           END SET_EMAIL;
         
         
         ---------------------------------------------------------------------------------
         PROCEDURE SET_ID_PERSON(PNNEW_VALUE VARCHAR2, PNOLD_VALUE VARCHAR2) IS
           BEGIN
               UPDATE EMAIL SET IDENTIFICATION= PNNEW_VALUE WHERE IDENTIFICATION=PNOLD_VALUE;             
           END SET_ID_PERSON;
END PKG_ADMIN_EMAIL;
