create or replace directory utl_dir as 'C:\Documents and Settings\stevenpc\Escritorio';

CREATE OR REPLACE PACKAGE PKG_JOB  IS
       PROCEDURE GET_JOB(DATAJOB IN NUMBER DEFAULT NULL);
END PKG_JOB;


CREATE OR REPLACE PACKAGE BODY PKG_JOB IS
       --------------------------------------------------------------------------------
       --PROCEDURE GET_ALL_BINNACLE IMPLEMENTATION
       PROCEDURE GET_JOB(DATAJOB IN NUMBER DEFAULT NULL) AS
       VN_COMMUNITY_NAME varchar2(30);
       VN_ID_PROPOSAL    NUMBER(10);
       VN_TITLE          VARCHAR2(100);
       VN_BUDGET         NUMBER(20);
       VN_VOTE           NUMBER(10);
       VN_DATE           DATE;
       fhandle           utl_file.file_type;
       CURSOR PROPOSAL_cursor is
              SELECT COMMUNITY.COMMUNITY_NAME,
                     PROPOSAL.ID_PROPOSAL,
                     PROPOSAL.TITLE,
                     PROPOSAL.BUDGET,
                     PROPOSAL.VOTE,
                     PROPOSAL.PROPOSAL_DATE
              FROM PROPOSAL
              INNER JOIN PERSON_X_PROPOSAL ON PROPOSAL.ID_PROPOSAL=PERSON_X_PROPOSAL.ID_PROPOSAL
              INNER JOIN PERSON ON PERSON_X_PROPOSAL.ID_PERSON=PERSON.IDENTIFICATION
              INNER JOIN COMMUNITY ON PERSON.ID_COMMUNITY=COMMUNITY.ID_COMMUNITY
              WHERE (COMMUNITY.COMMUNITY_NAME, PROPOSAL.VOTE) IN 
                    ( SELECT COMMUNITY.COMMUNITY_NAME, MAX(PROPOSAL.VOTE) 
                     FROM PROPOSAL 
                     INNER JOIN PERSON_X_PROPOSAL ON PROPOSAL.ID_PROPOSAL=PERSON_X_PROPOSAL.ID_PROPOSAL
                     INNER JOIN PERSON ON PERSON_X_PROPOSAL.ID_PERSON=PERSON.IDENTIFICATION
                     INNER JOIN COMMUNITY ON PERSON.ID_COMMUNITY=COMMUNITY.ID_COMMUNITY
                     GROUP BY COMMUNITY.COMMUNITY_NAME);
                    BEGIN
                       fhandle := utl_file.fopen('UTL_DIR',     -- File location
                                                  'Job_info.txt', -- File name
                                                  'w' -- Open mode: w = write. 
                                                          );
                      OPEN PROPOSAL_cursor;
                      LOOP
                      FETCH PROPOSAL_cursor INTO VN_COMMUNITY_NAME, 
                                                 VN_ID_PROPOSAL,    
                                                 VN_TITLE,        
                                                 VN_BUDGET,       
                                                 VN_VOTE,           
                                                 VN_DATE;
                      utl_file.put(fhandle,'COMMUNITY: '||VN_COMMUNITY_NAME||', '|| 
                                           'ID PROPOSAL: '||VN_ID_PROPOSAL||', '||    
                                           'NAME OF PROPOSAL: '||VN_TITLE||', '||        
                                           'BUDGET OF PROPOSAL: '||VN_BUDGET||', '||       
                                           'NUMBER OF VOTES: '||VN_VOTE||', '||           
                                           'DATE OF CREATION: '||VN_DATE);
                      utl_file.put(fhandle, CHR(10));
                      utl_file.put(fhandle, CHR(10));
                      EXIT when PROPOSAL_cursor%NOTFOUND;
                      END LOOP;
                       utl_file.fclose(fhandle);
                      exception
                      when others then
                        dbms_output.put_line('ERROR: ' || SQLCODE || ' - ' || SQLERRM);
                        raise;
       CLOSE PROPOSAL_cursor;
          END GET_JOB;


END PKG_JOB;

