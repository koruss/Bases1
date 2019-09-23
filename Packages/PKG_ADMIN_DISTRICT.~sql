--DISTRICT_ADMINISTRATOR PACKAGE IMPLEMENTATION
CREATE OR REPLACE PACKAGE PKG_ADMIN_DISTRICT  IS
       FUNCTION GET_ID_DISTRICT(PNID_DISTRICT IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_CANTON(PNID_DISTRICT IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_DISTRICT(PNID_DISTRICT IN NUMBER)  RETURN VARCHAR2;
END PKG_ADMIN_DISTRICT;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_DISTRICT IS
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_DISTRICT(PNID_DISTRICT IN NUMBER)  RETURN NUMBER
         IS
                  VNID_DISTRICT                      NUMBER(10);
         BEGIN
                  SELECT ID_DISTRICT   
                  INTO VNID_DISTRICT
                  FROM DISTRICT
                  WHERE ID_DISTRICT=PNID_DISTRICT;
                  RETURN (VNID_DISTRICT);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PERSON IMPLEMENTATION
        FUNCTION GET_ID_CANTON(PNID_DISTRICT IN NUMBER)  RETURN NUMBER
         IS
                  VNID_CANTON                      NUMBER(10);
         BEGIN
                  SELECT ID_CANTON   
                  INTO VNID_CANTON
                  FROM DISTRICT
                  WHERE ID_DISTRICT=PNID_DISTRICT;
                  RETURN (VNID_CANTON);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_CATEGORY IMPLEMENTATION
        FUNCTION GET_NAME_DISTRICT(PNID_DISTRICT IN NUMBER) RETURN VARCHAR2
        IS
                 VNNAME_DISTRICT DATE;

        BEGIN
                  SELECT NAME_DISTRICT
                  INTO VNNAME_DISTRICT
                  FROM DISTRICT
                  WHERE ID_DISTRICT=PNID_DISTRICT;
                  RETURN (VNNAME_DISTRICT);
        END;

       
END PKG_ADMIN_DISTRICT;
