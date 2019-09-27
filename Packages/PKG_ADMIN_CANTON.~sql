CREATE OR REPLACE PACKAGE PKG_ADMIN_CANTON IS
       FUNCTION GET_ID_CANTON(PNID_CANTON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_ID_PROVINCE(PNID_CANTON IN NUMBER)  RETURN NUMBER;
       FUNCTION GET_NAME_CANTON(PNID_CANTON IN NUMBER)  RETURN VARCHAR2;
END PKG_ADMIN_CANTON;

CREATE OR REPLACE PACKAGE BODY PKG_ADMIN_CANTON IS
        --FUNCTION GET_ID_CANTON IMPLEMENTATION
        FUNCTION GET_ID_CANTON(PNID_CANTON IN NUMBER)  RETURN NUMBER
         IS
                  VNID_CANTON                        NUMBER(10);
         BEGIN
                  SELECT ID_CANTON
                  INTO VNID_CANTON
                  FROM CANTON
                  WHERE ID_CANTON=PNID_CANTON;
                  RETURN (VNID_CANTON);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_ID_PROVINCE IMPLEMENTATION
        FUNCTION GET_ID_PROVINCE(PNID_CANTON IN NUMBER)  RETURN NUMBER
         IS
                  VNID_PROVINCE                        NUMBER(10);
         BEGIN
                  SELECT ID_PROVINCE
                  INTO VNID_PROVINCE
                  FROM CANTON
                  WHERE ID_CANTON=PNID_CANTON;
                  RETURN (VNID_PROVINCE);
         END;
         
        -------------------------------------------------------------------------------
        --FUNCTION GET_NAME_CANTON IMPLEMENTATION
        FUNCTION GET_NAME_CANTON(PNID_CANTON IN NUMBER) RETURN VARCHAR2
        IS
                 VNNAME_CANTON VARCHAR2;

        BEGIN
                  SELECT NAME_CANTON
                  INTO VNNAME_CANTON
                  FROM CANTON
                  WHERE ID_CANTON=PNID_CANTON;
                  RETURN (VNNAME_CANTON);
        END;

       
END PKG_ADMIN_CANTON;
