/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Kenneth
 */
public class Funciones {//recibe los datos, la contrasena ya esta encriptada
    private static String key="IloveBD1";
    
 //metodos de la clase   
    
    public void SignUp(String pIdentification,String pName, String pFirstLastName, String pSecondLastName,int pIdNationality, int pIdCommunity,String pEmail, String pTelephone, java.util.Date  pDate, String pUsername,String pPassword,int pUserType)throws SQLException{
        //aqui se llama a la base de datos 
        System.out.println("ingresando en la base");
       connect.connectDB.insertPerson(pIdentification,pName,  pFirstLastName,pSecondLastName,pIdNationality, pIdCommunity, pEmail, pTelephone, pDate, pUsername, pPassword,pUserType);        
    }
    
    public void RegisterProposal(String pIdentification,String pTitle,String pDescription, int pCategory, int pBudget)throws SQLException{
        //aqui se llama a la base de datos 
        System.out.println("ingresando en la base");
       connect.connectDB.insertProposal(pIdentification,pTitle,  pDescription,pCategory,pBudget);        
    }
    
    public void insertNationality(String pNationality) throws SQLException{
        connect.connectDB.insertNationality(pNationality);
    }
    
    public void insertCategory(String pCategory) throws SQLException{
        connect.connectDB.insertCategory(pCategory);
    }
    
    public void insertCountry(String pCountry) throws SQLException{
        connect.connectDB.insertCountry(pCountry);
    }
    
    public void insertProvince(String pProvince,int pCountry) throws SQLException{
        connect.connectDB.insertProvince(pProvince,pCountry);
    }
 
    public void insertCanton(String pCanton,int pProvince) throws SQLException{
        connect.connectDB.insertCanton(pCanton,pProvince);
    }
    public void insertCommunity(String pCommunity,int pCanton) throws SQLException{
        connect.connectDB.insertCommunity(pCommunity,pCanton);
    }
    
    public ResultSet getNationalities(int pNationality) throws SQLException {
        return connect.connectDB.getNationality(pNationality);
    }
    
    public ResultSet getCountries(int pCountry) throws SQLException {
        return connect.connectDB.getCountry(pCountry);
    }
    
    public ResultSet getProvinces(String pCountry) throws SQLException {
        return connect.connectDB.getProvince(pCountry);
    }
    
    public ResultSet getCantons(String pProvince) throws SQLException {
        return connect.connectDB.getCanton(pProvince);
    }
    
    public ResultSet getCommunities(String pCanton) throws SQLException {
        return connect.connectDB.getCommunity(pCanton);
    }
    public int getNationalityId(String pNationality) throws SQLException {
        return connect.connectDB.getNationalityId(pNationality); 
    }    
    public int getCommunityId(String pComunidad,int pCanton) throws SQLException {
        return connect.connectDB.getCommunityId(pComunidad,pCanton); 
    }
    
    public int getCantonId(String pCanton) throws SQLException {
        return connect.connectDB.getCantonId(pCanton); 
    }   
    public ResultSet getCategories(int pcategory) throws SQLException {
        return connect.connectDB.getCategory(pcategory);
    }
    
   public void registerCommunity(String pCedula,int pCommunity) throws SQLException{
        connect.connectDB.registerCommunity(pCedula,pCommunity);
    }
   
   public String getCedulaByUser(String pUser) throws SQLException{
       return connect.connectDB.getCedulaByUser(pUser);
   }
    
 //esta es la funcion para encriptar la contrasena   
    public String  EncryptPassw(String passw){
        String encryptedPassw=new String();
        encryptedPassw=AESencrypter.encrypt(passw,key);
        return encryptedPassw;
    }
    
    public String DecryptPassw(String encryptedPassw){
                String DecryptedPassw=new String();
        DecryptedPassw=AESencrypter.decrypt(encryptedPassw, key);
        return encryptedPassw;
        
    }
  
    
//est funcion booleana se utiliza para revisar si una cadena es de numeros solamente
    public static boolean isNumeric(String cadena) {
        boolean resultado;
        try {
            Integer.parseInt(cadena);
            resultado = true;
        } catch (NumberFormatException excepcion) {
            resultado = false;
        }
        return resultado;
    }
    
    
    //este metodo llama a revisar si los credenciales son correctos 
    public int correctLogIn(String user,String passw)throws SQLException {
        //codigo que conecta a la base
        return(connect.connectDB.userValidation(user, passw)); 
    }

    
    public ResultSet obtenerPropuestas(int pIdProposal,int pVote, java.util.Date pInicialDate,java.util.Date pFinalDate, int pCategory) throws SQLException{     
        return connect.connectDB.getProposal(pIdProposal, pVote, pInicialDate,pFinalDate,pCategory);
    }
    
    public String[] getPropuestas(int pIdProposal,int pVote, java.util.Date pInicialDate,java.util.Date pFinalDate, int pCategory)throws SQLException{
        ResultSet r=connect.connectDB.getProposal(pIdProposal, pVote, pInicialDate,pFinalDate,pCategory);
        String[] arreglo ={r.getString("ID_PROPOSAL"),r.getString("TITLE"),r.getString("PROPOSAL_DESCRIPTION"),r.getString("BUDGET"),r.getString("VOTE"),r.getString("PROPOSAL_DATE"),r.getString("CATEGORY_NAME")};
        return arreglo;
    }
    
    public ResultSet obtenerComentarios(String pIdPropuesta) throws SQLException{
        int id=Integer.parseInt(pIdPropuesta);       
        connect.connectDB.getProposalComments(id);
        return null ;
    }
    
    
    public void  insertCommentary(String pCedula, String pIdpProposal,String comment){
        //aqui van los connect para insertar los comentarios a la base
        
    }
    
    
}
