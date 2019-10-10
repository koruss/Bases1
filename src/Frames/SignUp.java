/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frames;

import Business.Funciones;
import java.awt.Color;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author kenneth
 */
public class SignUp extends javax.swing.JFrame {

    /**
     * Creates new form SignUp
     */
    public SignUp() {
        initComponents();
        jPanel1.setBackground(new Color(0,0,0,80));
        txtCedula.setBackground(new Color(102,0,102,80));
        txtName.setBackground(new Color(102,0,102,80));
        txtEmail.setBackground(new Color(102,0,102,80));
        
        this.txtFirstLastName.setBackground(new Color(102,0,102,80));
        this.txtPassw.setBackground(new Color(102,0,102,80));
        this.txtPasswConfirm.setBackground(new Color(102,0,102,80));
        this.txtSecondLastName.setBackground(new Color(102,0,102,80));
        this.txtTelefono.setBackground(new Color(102,0,102,80));
        this.txtUser.setBackground(new Color(102,0,102,80));
        //this.comboNacionalidad.setBackground(new Color(102,0,102,80));
        //this.fechaNacimiento.setBackground(new Color(102,0,102,80));
        
        this.txtCedula.setForeground(new Color(222,222,222));
        this.txtPassw.setForeground(new Color(222,222,222));
        this.txtPasswConfirm.setForeground(new Color(222,222,222));
        this.txtEmail.setForeground(new Color(222,222,222));
        this.txtUser.setForeground(new Color(222,222,222));
        this.txtSecondLastName.setForeground(new Color(222,222,222));
        pack();
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        kGradientPanel1 = new keeptoo.KGradientPanel();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btnSignUp = new keeptoo.KButton();
        jLabel5 = new javax.swing.JLabel();
        txtPasswConfirm = new javax.swing.JPasswordField();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        fechaNacimiento = new com.toedter.calendar.JDateChooser();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        txtSecondLastName = new javax.swing.JTextField();
        comboNacionalidad = new javax.swing.JComboBox<>();
        jLabel10 = new javax.swing.JLabel();
        txtCedula = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        txtPassw = new javax.swing.JPasswordField();
        btnFoto = new keeptoo.KButton();
        jLabel13 = new javax.swing.JLabel();
        txtTelefono = new javax.swing.JTextField();
        txtFirstLastName = new javax.swing.JTextField();
        txtName = new javax.swing.JTextField();
        txtUser = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        setResizable(false);

        kGradientPanel1.setkEndColor(new java.awt.Color(51, 51, 255));
        kGradientPanel1.setkStartColor(new java.awt.Color(255, 0, 204));
        kGradientPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setBackground(new java.awt.Color(204, 255, 204));
        jPanel1.setForeground(new java.awt.Color(204, 255, 204));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 0, 204));
        jLabel2.setText("Primer Apellido");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 240, 250, 30));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 0, 204));
        jLabel3.setText("Registrarse");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 30, 200, 60));

        jLabel4.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 0, 204));
        jLabel4.setText("Confirmar Contraseña");
        jPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 350, 250, 20));

        btnSignUp.setText("ENTRAR");
        btnSignUp.setBorderPainted(false);
        btnSignUp.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnSignUpMouseClicked(evt);
            }
        });
        btnSignUp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSignUpActionPerformed(evt);
            }
        });
        jPanel1.add(btnSignUp, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 580, -1, -1));

        jLabel5.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 0, 204));
        jLabel5.setText("Email");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 160, 250, 30));

        txtPasswConfirm.setBackground(new java.awt.Color(204, 255, 204));
        txtPasswConfirm.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtPasswConfirm.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtPasswConfirm.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtPasswConfirm, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 380, 250, 40));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 0, 204));
        jLabel6.setText("Nombre");
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 160, 250, 20));

        jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(255, 0, 204));
        jLabel7.setText("Nacionalidad");
        jPanel1.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 430, 250, 20));

        txtEmail.setBackground(new java.awt.Color(204, 255, 204));
        txtEmail.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtEmail.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtEmail.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtEmail, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 190, 250, 40));

        fechaNacimiento.setBackground(new Color(0,0,0,80));
        fechaNacimiento.setForeground(new java.awt.Color(204, 255, 204));
        fechaNacimiento.setFont(new java.awt.Font("Segoe UI", 0, 12)); // NOI18N
        jPanel1.add(fechaNacimiento, new org.netbeans.lib.awtextra.AbsoluteConstraints(504, 370, 130, 20));

        jLabel8.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 0, 204));
        jLabel8.setText("Telefono");
        jPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 430, 250, 20));

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(255, 0, 204));
        jLabel9.setText("Fecha de Nacimiento");
        jPanel1.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 340, 250, 20));

        txtSecondLastName.setBackground(new java.awt.Color(204, 255, 204));
        txtSecondLastName.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtSecondLastName.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtSecondLastName.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtSecondLastName, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 370, 250, 40));

        comboNacionalidad.setBackground(new java.awt.Color(204, 255, 204));
        comboNacionalidad.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboNacionalidad.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Costa Rica", "Mexico", "Cuba", "Haiti" }));
        comboNacionalidad.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        jPanel1.add(comboNacionalidad, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 470, 250, 30));

        jLabel10.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 0, 204));
        jLabel10.setText("Cédula");
        jPanel1.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 240, 250, 30));

        txtCedula.setBackground(new java.awt.Color(102, 0, 102));
        txtCedula.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtCedula.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtCedula.setBorder(null);
        jPanel1.add(txtCedula, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 270, 250, 40));

        jLabel11.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(255, 0, 204));
        jLabel11.setText("Usuario");
        jPanel1.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 160, 250, 20));

        jLabel12.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 0, 204));
        jLabel12.setText("Contraseña");
        jPanel1.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 260, 250, 20));

        txtPassw.setBackground(new java.awt.Color(204, 255, 204));
        txtPassw.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtPassw.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtPassw.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtPassw, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 290, 250, 40));

        btnFoto.setText("Ingresa una Foto");
        btnFoto.setFont(new java.awt.Font("Segoe UI", 0, 12)); // NOI18N
        btnFoto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFotoActionPerformed(evt);
            }
        });
        jPanel1.add(btnFoto, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 470, 110, 30));

        jLabel13.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(255, 0, 204));
        jLabel13.setText("Segundo Apellido");
        jPanel1.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 340, 250, 20));

        txtTelefono.setBackground(new java.awt.Color(204, 255, 204));
        txtTelefono.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtTelefono.setForeground(new java.awt.Color(255, 255, 255));
        txtTelefono.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtTelefono.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtTelefono, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 460, 250, 40));

        txtFirstLastName.setBackground(new java.awt.Color(204, 255, 204));
        txtFirstLastName.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtFirstLastName.setForeground(new java.awt.Color(255, 255, 255));
        txtFirstLastName.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtFirstLastName.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtFirstLastName, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 270, 250, 40));

        txtName.setBackground(new java.awt.Color(204, 255, 204));
        txtName.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtName.setForeground(new java.awt.Color(255, 255, 255));
        txtName.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtName.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        txtName.setDisabledTextColor(new java.awt.Color(204, 255, 204));
        txtName.setMargin(new java.awt.Insets(0, 1, 0, 0));
        txtName.setName(""); // NOI18N
        txtName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNameActionPerformed(evt);
            }
        });
        jPanel1.add(txtName, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 190, 250, 40));

        txtUser.setBackground(new java.awt.Color(204, 255, 204));
        txtUser.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtUser.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtUser.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 2, 0, new java.awt.Color(51, 51, 255)));
        jPanel1.add(txtUser, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 190, 250, 40));

        kGradientPanel1.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, 1100, 710));

        jLabel14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/cancel36px.png"))); // NOI18N
        jLabel14.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel14MouseClicked(evt);
            }
        });
        kGradientPanel1.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(1150, 10, -1, 40));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1200, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(kGradientPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 800, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnFotoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFotoActionPerformed
    
// TODO add your handling code here:
    }//GEN-LAST:event_btnFotoActionPerformed

    private void jLabel14MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel14MouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabel14MouseClicked

    private void btnSignUpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSignUpActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnSignUpActionPerformed

    private void btnSignUpMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnSignUpMouseClicked
        String name=txtName.getText();
        String lastName1=this.txtFirstLastName.getText();
        String lastName2=this.txtSecondLastName.getText();
        String telefono=this.txtTelefono.getText();
        String email =this.txtEmail.getText();
        String cedula =this.txtCedula.getText();
        String nacionalidad =(String)this.comboNacionalidad.getSelectedItem();
        String user =this.txtUser.getText();
        char[] passw1=this.txtPassw.getPassword();
        char[] passw2= this.txtPasswConfirm.getPassword();
        
        //if(passw1.equals(passw2)){//revisa que las contrasenas sean iguales
           String password =new String(passw1);    
           Funciones business = new Funciones();
            try {
                business.SignUp(name, lastName1,lastName2, telefono, email, cedula, nacionalidad, user, password);
            } catch (SQLException ex) {
                Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
            }
        //}
   //     else{
    //        JOptionPane.showMessageDialog(null,"Error,Las Contraseñas no son iguales");    
 //       }
    }//GEN-LAST:event_btnSignUpMouseClicked

    private void txtNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNameActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SignUp().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private keeptoo.KButton btnFoto;
    private keeptoo.KButton btnSignUp;
    private javax.swing.JComboBox<String> comboNacionalidad;
    private com.toedter.calendar.JDateChooser fechaNacimiento;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private keeptoo.KGradientPanel kGradientPanel1;
    private javax.swing.JTextField txtCedula;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtFirstLastName;
    private javax.swing.JTextField txtName;
    private javax.swing.JPasswordField txtPassw;
    private javax.swing.JPasswordField txtPasswConfirm;
    private javax.swing.JTextField txtSecondLastName;
    private javax.swing.JTextField txtTelefono;
    private javax.swing.JTextField txtUser;
    // End of variables declaration//GEN-END:variables
}
