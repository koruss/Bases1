/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.sql.SQLException;


/**
 *
 * @author Kenneth
 */
public class Funciones {//recibe los datos, la contrasena ya esta encriptada
    
 //metodos de la clase   
    
    public void SignUp(String pIdentification,String pName, String pFirstLastName, String pSecondLastName,int pIdNationality, int pIdCommunity, String pEmail, String pTelephone, java.util.Date  pDate, String pUsername,String pPassword)throws SQLException{
        //aqui se llama a la base de datos 
        System.out.println("ingresando en la base");
       connect.connectDB.insertPerson(pIdentification,pName,  pFirstLastName,pSecondLastName,pIdNationality, pIdCommunity, pEmail, pTelephone, pDate, pUsername, pPassword);        
    }
 //esta es la funcion para encriptar la contrasena   
    public String  EncryptPassw(String passw){
        String encryptedPassw=new String();
        //aqui viene el codigo para encriptar el passw
        
        
        return encryptedPassw;
    }
  
    
//est funcion booleana se utiliza para revisar si una cadena es de numeros solamente
    public boolean isNumeric(String cadena) {
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
    public boolean correctLogIn(String user,String passw){
        //codigo que conecta a la base
        return false;
        
    }
    
    
    
    
}
