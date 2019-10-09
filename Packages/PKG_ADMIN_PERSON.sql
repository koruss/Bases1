CREATE OR REPLACE PACKAGE PKG_ADMIN_PERSON  IS
       FUNCTION GET_ID_COMMUNITY(PNIDENTIFICATION IN VARCHAR2)  RETURN NUMBER;
       FUNCTION GET_NAME_PERSON(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2;
       FUNCTION GET_FIRST_LAST_NAME(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2;
       FUNCTION GET_BIRTHDATE(PNIDENTIFICATION IN VARCHAR2)  RETURN DATE;
       FUNCTION GET_SECOND_LAST_NAME(PNIDENTIFICATION IN VARCHAR2)  RETURN VARCHAR2;
       PROCEDURE INSERT_PERSON(PNIDENTIFICATION VARCHAR2,PNNAME VARCHAR2,
       PNFIRST_LAST_NAME VARCHAR2,PNSECOND_LAST_NAME VARCHAR2,PNID_NATIONALITY NUMBER,
       PNID_COMMUNITY NUMBER,PNEMAIL VARCHAR2, PNTELEPHONE VARCHAR2);
       PROCEDURE SET_ID_COMMUNITY(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE NUMBER);
       PROCEDURE SET_NAME_PERSON(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2);
       PROCEDURE SET_FIRST_LAST_NAME(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2);
       PROCEDURE SET_BIRTHDATE(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE DATE);
       PROCEDURE SET_SECOND_LAST_NAME(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2);
       PROCEDURE GET_ALL_PERSON(pRecordSet OUT SYS_REFCURSOR, PNIDENTIFICATION IN VARCHAR2 default NULL);
       PROCEDURE DELETE_ALL_PERSON (pnIdentification IN varchar2 DEFAULT NULL);
END PKG_ADMIN_PERSON;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_PERSON IS

       -------------------------------------------------------------------------------
        --FUNCTION GET_ID_COMMUNITY IMPLEMENTATION
        FUNCTION GET_ID_COMMUNITY(PNIDENTIFICATION IN VARCHAR2) RETURN NUMBER
        IS
                 VMENERROR      EXCEPTION;
                 VNID_COMMUNITY NUMBER(20);

        BEGIN
                  SELECT ID_COMMUNITY
                  INTO VNID_COMMUNITY
                  FROM PERSON
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
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
        --FUNCTION GET_NAME_PERSON IMPLEMENTATION
        FUNCTION GET_NAME_PERSON(PNIDENTIFICATION IN VARCHAR2) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNNAME_PERSON VARCHAR2(50);

        BEGIN
                  SELECT NAME
                  INTO VNNAME_PERSON
                  FROM PERSON
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNNAME_PERSON);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');

        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_FIRST_LAST_NAME IMPLEMENTATION
        FUNCTION GET_FIRST_LAST_NAME(PNIDENTIFICATION IN VARCHAR2) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNFIRST_LAST_NAME VARCHAR2(50);

        BEGIN
                  SELECT FIRST_LAST_NAME
                  INTO VNFIRST_LAST_NAME
                  FROM PERSON
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNFIRST_LAST_NAME);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');

        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_BIRTHDATE IMPLEMENTATION
        FUNCTION GET_BIRTHDATE(PNIDENTIFICATION IN VARCHAR2) RETURN DATE
        IS
                 VMENERROR      EXCEPTION;
                 VNBIRTHDATE DATE;

        BEGIN
                  SELECT BIRTHDATE
                  INTO VNBIRTHDATE
                  FROM PERSON
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNBIRTHDATE);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');

        END;

        -------------------------------------------------------------------------------
        --FUNCTION GET_SECOND_LAST_NAME IMPLEMENTATION
        FUNCTION GET_SECOND_LAST_NAME(PNIDENTIFICATION IN VARCHAR2) RETURN VARCHAR2
        IS
                 VMENERROR      EXCEPTION;
                 VNSECOND_LAST_NAME VARCHAR2(50);

        BEGIN
                  SELECT SECOND_LAST_NAME
                  INTO VNSECOND_LAST_NAME
                  FROM PERSON
                  WHERE IDENTIFICATION=PNIDENTIFICATION;
                  RETURN (VNSECOND_LAST_NAME);
                  EXCEPTION 
                         WHEN TOO_MANY_ROWS THEN
                           DBMS_OUTPUT.PUT_LINE('YOUR SELECTION RETURNS MORE THAN ONE RESULT.');
                         WHEN NO_DATA_FOUND THEN
                           DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
                         WHEN OTHERS THEN
                           DBMS_OUTPUT.PUT_LINE('ERROR');

        END;
        

        PROCEDURE INSERT_PERSON(PNIDENTIFICATION VARCHAR2,PNNAME  VARCHAR2,PNFIRST_LAST_NAME VARCHAR2,
                 PNSECOND_LAST_NAME VARCHAR2,PNID_NATIONALITY NUMBER, PNID_COMMUNITY NUMBER,PNEMAIL VARCHAR2, 
                 PNTELEPHONE VARCHAR2) IS
                 
           VMENERROR  EXCEPTION;                
         
           BEGIN
             INSERT INTO PERSON(IDENTIFICATION,NAME,FIRST_LAST_NAME,SECOND_LAST_NAME,ID_COMMUNITY)
             VALUES (PNIDENTIFICATION,PNNAME,PNFIRST_LAST_NAME,PNSECOND_LAST_NAME, PNID_COMMUNITY);
             
             INSERT INTO NATIONALITY_X_PERSON (ID_NATIONALITY, ID_PERSON)
             VALUES (PNID_NATIONALITY, PNIDENTIFICATION);
             
             INSERT INTO EMAIL (EMAIL,IDENTIFICATION) 
             VALUES (PNEMAIL,PNIDENTIFICATION);
             
             INSERT INTO TELEPHONE(TELEPHONE,IDENTIFICATION) 
             VALUES (PNTELEPHONE,PNIDENTIFICATION);
             
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
     
             
           END INSERT_PERSON;
           
         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_ID_COMMUNITY(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE NUMBER) IS
      VMENERROR                                 EXCEPTION;
         BEGIN
             UPDATE PERSON SET ID_COMMUNITY= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_ID_COMMUNITY;

         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_NAME_PERSON(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                                EXCEPTION;
         BEGIN
            UPDATE PERSON SET NAME= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
            IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_NAME_PERSON;

         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_FIRST_LAST_NAME(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                                    EXCEPTION;
         BEGIN
             UPDATE PERSON SET FIRST_LAST_NAME= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_FIRST_LAST_NAME;

         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_BIRTHDATE(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE DATE) IS
      VMENERROR                              EXCEPTION;
         BEGIN
             UPDATE PERSON SET BIRTHDATE= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_BIRTHDATE;

         
         ---------------------------------------------------------------------------------
    PROCEDURE SET_SECOND_LAST_NAME(PNIDENTIFICATION VARCHAR2, PNNEW_VALUE VARCHAR2) IS
      VMENERROR                                     EXCEPTION;
         BEGIN
             UPDATE PERSON SET SECOND_LAST_NAME= PNNEW_VALUE WHERE IDENTIFICATION=PNIDENTIFICATION;
             IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
         END SET_SECOND_LAST_NAME;

         
         
         
         PROCEDURE GET_ALL_PERSON (pRecordSet OUT SYS_REFCURSOR, PNIDENTIFICATION IN VARCHAR2 default NULL) AS
        VMENERROR  EXCEPTION;

          BEGIN
          OPEN pRecordSet FOR
          SELECT identification,name,first_last_name, second_last_name,id_Community
          FROM person WHERE identification=NVL(PNIDENTIFICATION, identification)
          ORDER BY first_last_name; 
           IF SQL%NOTFOUND THEN
                    RAISE VMENERROR;
            END IF;
            EXCEPTION 
               WHEN VMENERROR THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT DOES NOT EXIST IN THE DATABASE.');
               WHEN DUP_VAL_ON_INDEX THEN
                 DBMS_OUTPUT.PUT_LINE('THE ELEMENT IS ALREADY IN THE DATABASE.');
          END GET_ALL_PERSON;
          
       PROCEDURE DELETE_ALL_PERSON (pnIdentification IN varchar2 DEFAULT NULL) AS
         vmError exception;
         begin
            DELETE FROM PERSON WHERE IDENTIFICATION = NVL(pnIdentification,IDENTIFICATION);
            IF SQL%NOTFOUND THEN
              RAISE VMERROR;
            END IF;
            EXCEPTION
              WHEN VMERROR THEN
                DBMS_OUTPUT.PUT_LINE('The element doesn´t exists in the database');
                DBMS_OUTPUT.PUT_LINE(SQLERRM);
        END DELETE_ALL_PERSON;
         
END PKG_ADMIN_PERSON;
