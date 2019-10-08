CREATE OR REPLACE PACKAGE PKG_ADMIN_COMMUNITY  IS
       FUNCTION GET_ID_COMMUNITY(PNCOMMUNITY_NAME IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_NAME_COMMUNITY(PNID_COMMUNITY IN NUMBER)  RETURN VARCHAR2;
       FUNCTION GET_ID_CANTON(PNID_COMMUNITY IN NUMBER) RETURN NUMBER;
       PROCEDURE INSERT_COMMUNITY(PNCOMMUNITY_NAME VARCHAR2,PNID_CANTON NUMBER);
       --PROCEDURE SET_ID_COMMUNITY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       PROCEDURE SET_ID_CANTON(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER);
       PROCEDURE SET_NAME_COMMUNITY(PNID_COMMUNITY NUMBER, PNNEW_VALUE VARCHAR2);
       PROCEDURE GET_ALL_COMMUNITY(PRECORDSET OUT SYS_REFCURSOR, PNID_COMMUNITY IN number default null);
END PKG_ADMIN_COMMUNITY;


CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_COMMUNITY IS
        --FUNCTION GET_ID_COMMUNITY IMPLEMENTATION
        FUNCTION GET_ID_COMMUNITY(PNCOMMUNITY_NAME IN VARCHAR2)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_COMMUNITY   NUMBER(10);
         BEGIN
                  SELECT ID_COMMUNITY
                  INTO VNID_COMMUNITY
                  FROM COMMUNITY
                  WHERE COMMUNITY_NAME=PNCOMMUNITY_NAME;
                  RETURN (VNID_COMMUNITY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_COMMUNITY IMPLEMENTATION
        FUNCTION GET_NAME_COMMUNITY(PNID_COMMUNITY IN NUMBER) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNNAME_COMMUNITY varchar2(50);

        BEGIN
                  SELECT COMMUNITY_NAME
                  INTO VNNAME_COMMUNITY
                  FROM COMMUNITY
                  WHERE ID_COMMUNITY=PNID_COMMUNITY;
                  RETURN (VNNAME_COMMUNITY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
        END;

        --FUNCTION GET_ID_CANTON IMPLEMENTATION
        FUNCTION GET_ID_CANTON(PNID_COMMUNITY IN NUMBER)  RETURN NUMBER
         IS
                 VMENERROR      EXCEPTION;
                  VNID_COMMUNITY   NUMBER(10);
         BEGIN
                  SELECT ID_CANTON
                  INTO VNID_COMMUNITY
                  FROM COMMUNITY
                  WHERE ID_COMMUNITY=PNID_COMMUNITY;
                  RETURN (VNID_COMMUNITY);
                 EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');
         END;

        PROCEDURE INSERT_COMMUNITY(PNCOMMUNITY_NAME VARCHAR2,PNID_CANTON NUMBER) IS
         VMENERROR                         EXCEPTION;
         BEGIN
             INSERT INTO COMMUNITY(ID_COMMUNITY,COMMUNITY_NAME,ID_CANTON)
             VALUES (S_COMMUNITY.NEXTVAL,PNCOMMUNITY_NAME,PNID_CANTON);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');

           END INSERT_COMMUNITY;


       --PROCEDURE SET_ID_COMMUNITY(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
       --  BEGIN
       --      UPDATE COMMUNITY SET ID_COMMUNITY= PNNEW_VALUE WHERE ID_COMMUNITY=PNOLD_VALUE;
       --  END SET_ID_COMMUNITY;


       PROCEDURE SET_ID_CANTON(PNNEW_VALUE NUMBER, PNOLD_VALUE NUMBER) IS
         VMENERROR                         EXCEPTION;
         BEGIN
             UPDATE COMMUNITY SET ID_CANTON= PNNEW_VALUE WHERE ID_CANTON=PNOLD_VALUE;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_ID_CANTON;


       PROCEDURE SET_NAME_COMMUNITY(PNID_COMMUNITY NUMBER, PNNEW_VALUE VARCHAR2) IS
         VMENERROR                                 EXCEPTION;
         BEGIN
             UPDATE COMMUNITY SET COMMUNITY_NAME= PNNEW_VALUE WHERE ID_COMMUNITY=PNID_COMMUNITY;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_COMMUNITY;



      PROCEDURE GET_ALL_COMMUNITY(PRECORDSET OUT SYS_REFCURSOR, PNID_COMMUNITY IN number default null) AS
                VMENERROR        EXCEPTION;
       BEGIN
              OPEN pRecordSet FOR
              SELECT *
              FROM COMMUNITY
              WHERE ID_COMMUNITY = NVL(PNID_COMMUNITY, ID_COMMUNITY);
              
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_COMMUNITY;
END PKG_ADMIN_COMMUNITY;
