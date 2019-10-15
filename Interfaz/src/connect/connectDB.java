/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.SimpleDateFormat;
import oracle.jdbc.OracleTypes;




public class connectDB{
    public static String host="jdbc:oracle:thin:@localhost:1521:DBPROYECTO";
    public static String uName="admin";
    public static String uPass="admin";
    public SimpleDateFormat dateFormat= new SimpleDateFormat("dd-MM-yyyy");
    public static Connection con=null;
    
    
    public static void insertPerson(String pIdentification,String pName, String pFirstLastName, String pSecondLastName,int pIdNationality, int pIdCommunity, String pEmail, String pTelephone, java.util.Date  pDate, String pUsername,String pPassword,int pUserType) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.INSERT_PERSON(?,?,?,?,?,?,?,?,?,?,?,?)}");
        stmt.setString(1,pIdentification);
        stmt.setString(2,pName);
        stmt.setString(3,pFirstLastName);
        stmt.setString(4,pSecondLastName);
        stmt.setInt(5,pIdNationality);
        stmt.setInt(6,pIdCommunity);
        stmt.setString(7,pEmail);
        stmt.setString(8,pTelephone);        
        java.sql.Date sqlDate = new java.sql.Date(pDate.getTime());        
        stmt.setDate(9,sqlDate);
        stmt.setString(10,pUsername);
        stmt.setString(11,pPassword);
        stmt.setInt(12,pUserType);
        stmt.execute();   
    } 
    
    public static void insertUser(String pUsername, String pPassword, String pIdentification, int pId_Usertype) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_USERNAME.INSERT_USERNAME(?,?,?,?)}");
        
        stmt.setString(1,pUsername);
        stmt.setString(2,pPassword);
        stmt.setString(3,pIdentification);
        stmt.setInt(4,pId_Usertype);
        stmt.execute();      
    }
  
    public static void changeUserType(String pCedula) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_KIND_PERSON.SET_ADMIN(?)}");
        stmt.setString(1,pCedula);
        stmt.execute();      
    }
    
    public static void insertProposal(String pIdentification,String pTitle, String pDescription, int pIdCategory, int pBudget) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PROPOSAL.INSERT_PROPOSAL(?,?,?,?,?)}");
        
        stmt.setString(1,pIdentification);
        stmt.setString(2,pTitle);
        stmt.setString(3,pDescription);
        stmt.setInt(4,pIdCategory);
        stmt.setInt(5,pBudget);
        stmt.execute();   
    }     

    public static void insertNationality(String pNationality) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_NATIONALITY.INSERT_NATIONALITY(?)}");
        
        stmt.setString(1,pNationality);
        stmt.execute();   
    }  
    
    public static void insertCountry(String pCountry) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_COUNTRY.INSERT_COUNTRY(?)}");
        
        stmt.setString(1,pCountry);
        stmt.execute();   
    }  
  
    public static void insertProvince(String pProvince, int pIdCountry) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PROVINCE.INSERT_PROVINCE(?,?)}");
        
        stmt.setString(1,pProvince);
        stmt.setInt(2,pIdCountry);
        stmt.execute();   
    }  
    
    public static void insertCanton(String pCanton, int pIdProvince) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_CANTON.INSERT_CANTON(?,?)}");
        
        stmt.setString(1,pCanton);
        stmt.setInt(2,pIdProvince);
        stmt.execute();   
    } 
    
    public static void insertCommunity(String pCommunity, int pIdCanton) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_COMMUNITY.INSERT_COMMUNITY(?,?)}"); 
        stmt.setString(1,pCommunity);
        stmt.setInt(2,pIdCanton);
        stmt.execute();   
    } 
    
    
    public static void insertCategory(String pCategory) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_CATEGORY.INSERT_CATEGORY(?)}");
        
        stmt.setString(1,pCategory);
        stmt.execute();   
    }  
    
    
    public static void insertUserType(String pUserType) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_KIND_PERSON.INSERT_KIND_PERSON(?)}");
        
        stmt.setString(1,pUserType);
        stmt.execute();   
    } 
    
    public static void insertParameter(String pParameterName, int pValue) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PARAMETER.INSERT_PARAMETER(?,?)}");    
        stmt.setString(1,pParameterName);
        stmt.setInt(2,pValue);
        stmt.execute();   
    }  
    
    public static void registerVote(int pIdProposal, String pIdPerson) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_VOTE.INSERT_VOTE(?,?)}");        
        stmt.setInt(1,pIdProposal);
        stmt.setString(2,pIdPerson);
        stmt.execute();           
    }
    
    public static void registerProposalComment(int pIdProposal, String pIdPerson,String pComment) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PROPOSAL_X_COMMENT.INSERT_PROP_X_COMMENT(?,?,?)}");   
        stmt.setInt(1,pIdProposal);
        stmt.setString(2,pIdPerson);
        stmt.setString(3,pComment);
        stmt.execute();           
    }    
    
    public static void registerFavoriteCategories(int pIdCategory, String pIdPerson) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_CATEGORY_X_PERSON.INSERT_CATEGORY_X_PERSON(?,?)}");
        stmt.setInt(1,pIdCategory);
        stmt.setString(2,pIdPerson);
        stmt.execute();           
    }   
    
    public static void changePassword(String pIdPerson,String pNewPassword) throws SQLException {
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_USERNAME.SET_PASSWORD(?,?)}");
        stmt.setString(1,pIdPerson);
        stmt.setString(2,pNewPassword);
        stmt.execute();           
    } 
    
    public static void deleteNationalities(int pIdNationality) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_NATIONALITY.DELETE_NATIONALITIES(?)}");
           if(pIdNationality == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdNationality);
           stmt.executeQuery();            
    } 
    
    public static void deleteCountries(int pIdCountry) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_COUNTRY.DELETE_ALL_COUNTRY(?)}");
           if(pIdCountry == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdCountry);
           stmt.executeQuery();            
    }
    
    public static void deleteProvinces(int pIdProvince) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PROVINCE.DELETE_ALL_PROVINCE(?)}");
           if(pIdProvince == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdProvince);
           stmt.executeQuery();            
    }
    
    public static void deleteCantons(int pIdCanton) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_CANTON.DELETE_ALL_CANTON(?)}");
           if(pIdCanton == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdCanton);
           stmt.executeQuery();            
    }
    
    public static void deleteCommunities(int pIdCommunity) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_COMMMUNITY.DELETE_ALL_COMMMUNITY(?)}");
           if(pIdCommunity == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdCommunity);
           stmt.executeQuery();            
    }
    
    public static void deleteCategories(int pIdCategory) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_CATEGORY.DELETE_ALL_CATEGORY(?)}");
           if(pIdCategory == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdCategory);
           stmt.executeQuery();            
    }
    
    public static void deleteVotes(int pIdCategory) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_VOTE.DELETE_ALL_VOTES(?)}");
           if(pIdCategory == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdCategory);
           stmt.executeQuery();            
    }
    
     public static void deleteUserNames(String pIdUserName) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_USERNAME.DELETE_ALL_USERNAME(?)}");
           if(pIdUserName == "-1") stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setString(1,pIdUserName);
           stmt.executeQuery();            
    }
     
    public static void deletePersons(String pIdPerson) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PERSON.DELETE_ALL_PERSON(?)}");
           if(pIdPerson == "-1") stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setString(1,pIdPerson);
           stmt.executeQuery();            
    }
    
    public static void deleteProposals(int pIdProposal) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PROPOSAL.DELETE_ALL_PROPOSAL(?)}");
           if(pIdProposal == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdProposal);
           stmt.executeQuery();            
    }
    
    public static void deleteParameters(int pIdParameter) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PARAMETER.DELETE_ALL_PARAMETER(?)}");
           if(pIdParameter == -1) stmt.setNull(1,java.sql.Types.BIGINT);
           else stmt.setInt(1,pIdParameter);
           stmt.executeQuery();            
    }
 
     
    public static void updateNombre(String pCedula,String pNewVal) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.SET_NAME_PERSON(?,?)}");
        stmt.setString(1,pCedula);
        stmt.setString(2,pNewVal);
        stmt.execute();      
    }
    public static void updateApellido(String pCedula,String pNewVal) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.SET_FIRST_LAST_NAME(?,?)}");
        stmt.setString(1,pCedula);
        stmt.setString(2,pNewVal);
        stmt.execute();      
    }
    public static void updateApellido1(String pCedula,String pNewVal) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.SET_SECOND_LAST_NAME(?,?)}");
        stmt.setString(1,pCedula);
        stmt.setString(2,pNewVal);
        stmt.execute();      
    }
    public static void updateCorreo(String pCedula,String pNewVal) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.SET_EMAIL(?,?)}");
        stmt.setString(1,pCedula);
        stmt.setString(2,pNewVal);
        stmt.execute();      
    }
    public static void updateTelefono(String pCedula,String pNewVal) throws SQLException {
        // pId_Usertype se recibe en 0 si es administrador y en 1 si es usuario normal
        con=DriverManager.getConnection(host,uName,uPass);
        CallableStatement stmt= con.prepareCall("{ call PKG_ADMIN_PERSON.SET_TELEPHONE(?,?)}");
        stmt.setString(1,pCedula);
        stmt.setString(2,pNewVal);
        stmt.execute();      
    }
  
       public static void getBinnacle(int pIdProposal) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_BINNACLE.GET_ALL_BINNACLE(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdProposal == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdProposal);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
                flag=true;
                System.out.println(r.getString("ID_BINNACLE")+" "+r.getString("ID_PERSON")+" "+r.getString("PREVIOUS_PASSWORD")+" "+r.getString("CURRENT_PASSWORD")+" "+r.getString("PASS_CHANGE_DATE"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
       
       public static ResultSet getCanton(String pIdProvince) throws SQLException  {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_PROVINCE.GET_ID_PROVINCE(?)}");
           stmt2.setString(2,pIdProvince);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           
              CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_CANTON.GET_ALL_CANTON(?,?)}");
              stmt.registerOutParameter(1,OracleTypes.CURSOR);
              if (result == -1) stmt.setNull(2,java.sql.Types.BIGINT);
              else stmt.setInt(2,result);
              stmt.executeQuery();
              ResultSet r=(ResultSet) stmt.getObject(1);           
           
           /*boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_CANTON")+" "+r.getString("CANTON_NAME")+" "+r.getString("ID_PROVINCE"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
           */
           return r;     
       }
       
       public static ResultSet getCategory (int pIdCategory) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_CATEGORY.GET_ALL_CATEGORY(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdCategory == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdCategory);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           //boolean flag=false;
           //while(r.next()){
             //  flag=true;
             //  System.out.println(r.getString("ID_CATEGORY")+" "+r.getString("CATEGORY_NAME"));
           //}
           //if(!flag) System.out.println("No data to show, incorrect identificator");
           return r;
       }
       
       public static ResultSet getNationality (int pIdNationality) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_NATIONALITY.GET_ALL_NATIONALITY(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdNationality == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdNationality);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           //boolean flag=false;
           //while(r.next()){
             //  flag=true;
             //  System.out.println(r.getString("ID_NATIONALITY")+" "+r.getString("NATIONALITY_NAME"));
           //}
           //if(!flag) System.out.println("No data to show, incorrect identificator");
           //r.beforeFirst();
           return r;
       }
       
       
       
       public static ResultSet getCountry (int pIdCountry) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_COUNTRY.GET_ALL_COUNTRY(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdCountry == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdCountry);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           /*boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_COUNTRY")+" "+r.getString("COUNTRY_NAME"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
           */
           return r;
           }
       
       public static ResultSet getProvince (String pIdCountry) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_COUNTRY.GET_ID_COUNTRY(?)}");
           stmt2.setString(2,pIdCountry);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           
              CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PROVINCE.GET_ALL_PROVINCE(?,?)}");
              stmt.registerOutParameter(1,OracleTypes.CURSOR);
              if (result == -1) stmt.setNull(2,java.sql.Types.BIGINT);
              else stmt.setInt(2,result);
              stmt.executeQuery();
              ResultSet r=(ResultSet) stmt.getObject(1);           
           
           //boolean flag=false;
           //while(r.next()){
           //    flag=true;
           //    System.out.println(r.getString("ID_CANTON")+" "+r.getString("CANTON_NAME")+" "+r.getString("ID_PROVINCE"));
           //}
           //if(!flag) System.out.println("No data to show, incorrect identificator");
           return r;     
           }
       
       public static ResultSet getCommunity(String pIdcanton) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_CANTON.GET_ID_CANTON(?)}");
           stmt2.setString(2,pIdcanton);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           
              CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_COMMUNITY.GET_ALL_COMMUNITY(?,?)}");
              stmt.registerOutParameter(1,OracleTypes.CURSOR);
              if (result == -1) stmt.setNull(2,java.sql.Types.BIGINT);
              else stmt.setInt(2,result);
              stmt.executeQuery();
              ResultSet r=(ResultSet) stmt.getObject(1);           
          return r;    
        }
       public static int getNationalityId(String pNationality) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_NATIONALITY.GET_ID_NATIONALITY(?)}");
           stmt2.setString(2,pNationality);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           return result;  
        } 
       public static int getProvinceId(String pProvince) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_PROVINCE.GET_ID_PROVINCE(?)}");
           stmt2.setString(2,pProvince);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           return result;  
        } 
       public static int getCommunityId(String pIdCommunity,int pCanton) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_COMMUNITY.GET_ID_COMMUNITY(?,?)}");
           stmt2.setString(2,pIdCommunity);
           if(pCanton==-1) stmt2.setNull(3,java.sql.Types.BIGINT);
           else stmt2.setInt(3,pCanton);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           return result;  
        }
       
       public static int getCantonId(String pIdCanton) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_CANTON.GET_ID_CANTON(?)}");
           stmt2.setString(2,pIdCanton);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int result=stmt2.getInt(1);
           return result;  
        }
        public static void getVote(int pIdCommunity) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_VOTE.GET_ALL_VOTE(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdCommunity == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdCommunity);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_PROPOSAL")+" "+r.getString("ID_PERSON"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
        
        public static void getUsername (String pIdUsername) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_USERNAME.GET_ALL_USERNAME(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdUsername == "-1") stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setString(2,pIdUsername);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("USERNAME")+" "+r.getString("PASSWORD")+" "+r.getString("IDENTIFICATION")+" "+r.getString("ID_USERTYPE"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
        
        public static void getUserType (int pIdUserType) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_KIND_PERSON.GET_ALL_USERTYPE(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdUserType == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdUserType);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_USERTYPE")+" "+r.getString("USERTYPE_NAME"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
       public static ResultSet getUsers () throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_KIND_PERSON.GET_ALL_USERS(?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           //boolean flag=false;
           //while(r.next()){
             //  flag=true;
             //  System.out.println(r.getString("ID_CATEGORY")+" "+r.getString("CATEGORY_NAME"));
           //}
           //if(!flag) System.out.println("No data to show, incorrect identificator");
           return r;
       }        
        public static ResultSet getPerson (String pIdentification) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PERSON.GET_ALL_PERSON(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdentification == "-1") stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setString(2,pIdentification);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           /*boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("IDENTIFICATION")+" "+r.getString("NAME")+" "+r.getString("FIRST_LAST_NAME")+" "+r.getString("SECOND_LAST_NAME")+" "+r.getString("ID_COMMUNITY"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
<<<<<<< HEAD
       }
=======
       */
           return r;
           }
>>>>>>> Steven
       /* 
        public static void getProposal (int pProposal,int pCantidadVotos,int pCategory) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PROPOSAL.GET_ALL_PROPOSAL(?,?,?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pProposal == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pProposal);
           if (pCantidadVotos == -1) stmt.setNull(3,java.sql.Types.BIGINT);
           else stmt.setInt(3,pCantidadVotos);
           if (pCategory == -1) stmt.setNull(4,java.sql.Types.BIGINT);
           else stmt.setInt(4,pCategory);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_PROPOSAL")+" "+r.getString("TITLE")+" "+r.getString("PROPOSAL_DESCRIPTION")+" "+r.getString("BUDGET")+" "+r.getString("VOTE")+" "+r.getString("PROPOSAL_DATE"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }*/
        
        public static void getEmail(String pIdPerson) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_EMAIL.GET_ALL_EMAIL(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdPerson == "-1") stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setString(2,pIdPerson);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("EMAIL")+" "+r.getString("IDENTIFICATION"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
        
        public static void getTelephone(String pIdPerson) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_TELEPHONE.GET_ALL_TELEPHONE(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdPerson == "-1") stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setString(2,pIdPerson);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("TELEPHONE")+" "+r.getString("IDENTIFICATION"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
        
        public static void getParameter(int pIdParameter) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_PARAMETER.GET_ALL_PARAMETER(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdParameter == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdParameter);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("ID_PARAMETER")+" "+r.getString("PARAMETER_NAME")+" "+r.getString("PARAMETER_VALUE"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
        
     
        public static void getProposalByPerson(String pIdPerson) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_USER_CONSULTS.GET_PROPOSAL_PERSON(?,?)}");
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdPerson == "-1") stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setString(2,pIdPerson);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r.next()){
               flag=true;
               System.out.println(r.getString("TITLE")+" "+r.getString("PROPOSAL_DESCRIPTION")+" "+r.getString("IDENTIFICATION"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");
       }
 
        
        //este es el get proposal que estamos utilizando
<<<<<<< HEAD
          public static ResultSet getProposal (int pIdProposal,int pVote, java.util.Date pInicialDate,java.util.Date pFinalDate, int pCategory) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_USER_CONSULTS.GET_ALL_PROPOSAL(?,?,?,?)}");
=======
          public static ResultSet getProposal (int pIdProposal,int pVote, java.util.Date pInicialDate,java.util.Date pFinalDate, int pCategory,int pIdCommunity) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_USER_CONSULTS.GET_ALL_PROPOSAL(?,?,?,?,?)}");
>>>>>>> Steven
           stmt.registerOutParameter(1,OracleTypes.CURSOR);
           if (pIdProposal == -1) stmt.setNull(2,java.sql.Types.BIGINT);
           else stmt.setInt(2,pIdProposal);
           if (pVote == -1) stmt.setNull(3,java.sql.Types.BIGINT);
           else stmt.setInt(3,pVote);
         /*  if (pInicialDate == null) stmt.setNull(4,java.sql.Types.DATE);
           else {
               java.sql.Date sqlDate = new java.sql.Date(pInicialDate.getTime());        
               stmt.setDate(4,sqlDate);
           }
           if (pFinalDate== null) stmt.setNull(5,java.sql.Types.DATE);
           else {
               java.sql.Date sqlDate = new java.sql.Date(pFinalDate.getTime());        
               stmt.setDate(5,sqlDate);
           }
*/
           if (pCategory == -1) stmt.setNull(4,java.sql.Types.BIGINT);
           else stmt.setInt(4,pCategory);
<<<<<<< HEAD
=======
           if(pIdCommunity==-1) stmt.setNull(5,java.sql.Types.BIGINT);
           else stmt.setInt(5,pIdCommunity);
           //stmt.setNull(5,java.sql.Types.BIGINT);
>>>>>>> Steven
           stmt.executeQuery();
          ResultSet r=(ResultSet) stmt.getObject(1);
          /*ResultSet r2=(ResultSet) stmt.getObject(1);
           boolean flag=false;
           while(r2.next()){
               flag=true;
               System.out.println(r2.getString("ID_PROPOSAL")+" "+r2.getString("TITLE")+" "+r2.getString("PROPOSAL_DESCRIPTION")+" "+r2.getString("BUDGET")+" "+r2.getString("VOTE")+" "+r2.getString("PROPOSAL_DATE")+r2.getString("CATEGORY_NAME"));
           }
           if(!flag) System.out.println("No data to show, incorrect identificator");*/
           
           return r;
}
         public static void setNationality(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_NATIONALITY.GET_ID_NATIONALITY(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_NATIONALITY.SET_NAME_NATIONALITY(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static void setCountry(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_COUNTRY.GET_ID_COUNTRY(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_COUNTRY.SET_NAME_COUNTRY(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static void setCategory(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_CATEGORY.GET_ID_CATEGORY(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_CATEGORY.SET_NAME_CATEGORY(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static void setProvince(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_PROVINCE.GET_ID_PROVINCE(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_PROVINCE.SET_NAME_PROVINCE(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static void setCanton(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_CANTON.GET_ID_CANTON(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_CANTON.SET_NAME_CANTON(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static void setCommunity(String pName,String pNewVal) throws SQLException{
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{? = call PKG_ADMIN_COMUNITY.GET_ID_COMMUNITY(?)}");  
           stmt.registerOutParameter(1,Types.NUMERIC);
           stmt.setString(2,pName);
           stmt.execute();
           int id=Integer.parseInt(stmt.getString(1));
           
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt1= con.prepareCall("{call PKG_ADMIN_COMMUNITY.SET_NAME_COMMUNITY(?,?)}");
           stmt1.setInt(1,id);
           stmt1.setString(2,pNewVal);
           stmt1.executeQuery();      
           
         }
         public static int userValidation (String pUsername,String pPassword) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_KIND_PERSON.VALIDATE_USER(?,?,?)}");
           stmt.setString(1,pUsername);
           stmt.setString(2,pPassword);
           //int pResultado=0;
           stmt.registerOutParameter(3,OracleTypes.CURSOR);
           stmt.executeQuery();
           ResultSet r=(ResultSet) stmt.getObject(3);
           if(!r.next()) return -1;
           if((r.getString("USERNAME").equals(pUsername)) && (r.getString("PASSWORD").equals(pPassword))) return Integer.parseInt(r.getString("ID_USERTYPE"));
           else return -1;
       }

       public static String getCedulaByUser(String pUser) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_KIND_PERSON.GET_ID_BYUSER(?)}");
           stmt2.setString(2,pUser);
           stmt2.registerOutParameter(1,Types.VARCHAR);
           stmt2.execute();
           String cedula=stmt2.getString(1);
           return cedula;  
        }
<<<<<<< HEAD
       
=======
       public static int getCommunityByUser(String pCedula) throws SQLException {
           con=DriverManager.getConnection(host,uName,uPass);
           CallableStatement stmt2= con.prepareCall("{? = call PKG_ADMIN_PERSON.GET_ID_COMMUNITY(?)}");
           stmt2.setString(2,pCedula);
           stmt2.registerOutParameter(1,Types.NUMERIC);
           stmt2.execute();
           int community=Integer.parseInt(stmt2.getString(1));
           return community;  
        }       
>>>>>>> Steven
       
       public static void registerCommunity(String pCedula, int idComunnity){
           
       }
      
       

         
        public static ResultSet getProposalComments(int pIdProposal) throws SQLException{
            con=DriverManager.getConnection(host,uName,uPass);
             CallableStatement stmt= con.prepareCall("{call PKG_ADMIN_KIND_PERSON.VALIDATE_USER(?)}");
             stmt.registerOutParameter(1,OracleTypes.CURSOR);
             stmt.setInt(2,pIdProposal);
             stmt.executeQuery();
             ResultSet r=(ResultSet) stmt.getObject(1);
            return r;
            
        }
    
    
    
    
}
