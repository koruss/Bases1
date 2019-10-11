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
    
    public ResultSet getNationalities(int pNationality) throws SQLException {
        return connect.connectDB.getNationality(pNationality);
    }
    
    public ResultSet getCountries(int pCountry) throws SQLException {
        return connect.connectDB.getCountry(pCountry);
    }
    
    public ResultSet getProvinces(int pCountry throws SQLException {
        return connect.connectDB.getProvince(pCountry);
    }
    
    public ResultSet getCantons(int pProvince) throws SQLException {
        return connect.connectDB.getCanton(pProvince);
    }
    
    public ResultSet getCommunities(int pCanton) throws SQLException {
        return connect.connectDB.getCommunity(pCanton);
    }
    
    public ResultSet getCategories(int pcategory) throws SQLException {
        return connect.connectDB.getCategory(pcategory);
    }
 //esta es la funcion para encriptar la contrasena   
    public String  EncryptPassw(String passw){
        String encryptedPassw=new String();
        //aqui viene el codigo para encriptar el passw
        
        
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

    
    
    
    
}
