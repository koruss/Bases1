/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frames;

import Business.Funciones;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
/**
 *
 * @author Kenneth
 */
public class adminDataModify extends javax.swing.JFrame {

    /**
     * Creates new form adminDataModify
     */
    public adminDataModify(int pUserType,String pCedula) {
        initComponents();
        this.userType=pUserType;
        this.cedula=pCedula;
        
    }

    public static int userType;
    public static String cedula;
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        kGradientPanel1 = new keeptoo.KGradientPanel();
        kButton1 = new keeptoo.KButton();
        kButton2 = new keeptoo.KButton();
        jSeparator1 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        lblPais = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        comboCanton = new javax.swing.JComboBox<>();
        jLabel8 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        comboEdicion2 = new javax.swing.JComboBox<>();
        lblComunidad = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        comboComunidad = new javax.swing.JComboBox<>();
        jTextField3 = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        comboEdicion3 = new javax.swing.JComboBox<>();
        lblpais1 = new javax.swing.JLabel();
        comboPais1 = new javax.swing.JComboBox<>();
        lblProvincia1 = new javax.swing.JLabel();
        comboProvincia1 = new javax.swing.JComboBox<>();
        lblCanton1 = new javax.swing.JLabel();
        comboCanton1 = new javax.swing.JComboBox<>();
        lblComunidad1 = new javax.swing.JLabel();
        comboComunidad1 = new javax.swing.JComboBox<>();
        kGradientPanel2 = new keeptoo.KGradientPanel();
        btnMainMenu = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        kGradientPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        kButton1.setText("Añadir");
        kButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kButton1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(kButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 230, -1, -1));

        kButton2.setText("Modificar");
        kButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                kButton2ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(kButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 470, -1, -1));
        kGradientPanel1.add(jSeparator1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 590, 980, 10));
        kGradientPanel1.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 320, 980, 20));

        lblPais.setText("Seleccione Provincia a la que pertenece el cantón:");
        kGradientPanel1.add(lblPais, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 100, -1, 50));

        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(jTextField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 160, 190, 40));

        jLabel3.setText("Ingrese el nuevo Dato");
        kGradientPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 110, 130, 40));

        comboCanton.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboCanton.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboCanton.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboCanton.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboCanton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboCantonActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboCanton, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 150, 220, 30));

        jLabel8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/cancel36px.png"))); // NOI18N
        jLabel8.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel8MouseClicked(evt);
            }
        });
        kGradientPanel1.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(740, 10, -1, -1));

        jLabel4.setText("Seleccione la tabla donde desea  agregar datos");
        kGradientPanel1.add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 130, 240, 50));

        comboEdicion2.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboEdicion2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Nacionalidad", "Categoría de propuesta", "País", "Provincia", "Cantón", "Comunidad", " ", " " }));
        comboEdicion2.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboEdicion2.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboEdicion2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboEdicion2ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboEdicion2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 190, 220, 30));

        lblComunidad.setText("Seleccione Cantón al que pertenece la comunidad");
        kGradientPanel1.add(lblComunidad, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 190, -1, 30));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel1.setText("Modificar  Catalogos");
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });
        kGradientPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 20, -1, 50));

        comboComunidad.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboComunidad.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboComunidad.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboComunidad.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboComunidad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboComunidadActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboComunidad, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 220, 220, 30));

        jTextField3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField3ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(jTextField3, new org.netbeans.lib.awtextra.AbsoluteConstraints(570, 400, 190, 40));

        jLabel13.setText("Ingrese el nuevo Dato");
        kGradientPanel1.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 350, 130, 40));

        jLabel14.setText("Seleccione la tabla donde desea  modificar datos");
        kGradientPanel1.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 400, 240, 50));

        comboEdicion3.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboEdicion3.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Nacionalidad", "Categoría de propuesta", "País", "Provincia", "Cantón", "Comunidad", " ", " " }));
        comboEdicion3.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboEdicion3.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboEdicion3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboEdicion3ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboEdicion3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 450, 220, 30));

        lblpais1.setText("Seleccione el Pais");
        kGradientPanel1.add(lblpais1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 320, 160, 50));

        comboPais1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboPais1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboPais1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboPais1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboPais1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboPais1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboPais1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 360, 220, 30));

        lblProvincia1.setText("Seleccione la provincia");
        kGradientPanel1.add(lblProvincia1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 390, -1, 30));

        comboProvincia1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboProvincia1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboProvincia1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboProvincia1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboProvincia1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboProvincia1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboProvincia1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 420, 220, -1));

        lblCanton1.setText("Seleccione el Pais");
        kGradientPanel1.add(lblCanton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 440, 160, 50));

        comboCanton1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboCanton1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboCanton1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboCanton1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboCanton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboCanton1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboCanton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 480, 220, -1));

        lblComunidad1.setText("Seleccione la provincia");
        kGradientPanel1.add(lblComunidad1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 510, -1, 30));

        comboComunidad1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        comboComunidad1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        comboComunidad1.setBorder(javax.swing.BorderFactory.createMatteBorder(0, 0, 0, 0, new java.awt.Color(0, 0, 0)));
        comboComunidad1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        comboComunidad1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboComunidad1ActionPerformed(evt);
            }
        });
        kGradientPanel1.add(comboComunidad1, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 540, 220, 30));

        getContentPane().add(kGradientPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 0, 800, 580));

        kGradientPanel2.setkEndColor(new java.awt.Color(51, 0, 204));
        kGradientPanel2.setkStartColor(new java.awt.Color(204, 0, 204));
        kGradientPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnMainMenu.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/home.png"))); // NOI18N
        btnMainMenu.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnMainMenuMouseClicked(evt);
            }
        });
        kGradientPanel2.add(btnMainMenu, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 30, 60, 60));

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel9.setText("Menú Principal");
        kGradientPanel2.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 90, 110, 40));

        getContentPane().add(kGradientPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 170, 580));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    private void comboCantonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboCantonActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboCantonActionPerformed

    private void kButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kButton1ActionPerformed
    if(jTextField1.getText()!=null){
        try {
            Funciones business=new Funciones();
            if(comboCanton.getSelectedIndex()==0) business.insertNationality(jTextField1.getText());
            else if (comboCanton.getSelectedIndex()==1)  business.insertCategory(jTextField1.getText());
            else if (comboCanton.getSelectedIndex()==2)  business.insertCountry(jTextField1.getText());
        } catch (SQLException ex) {
            Logger.getLogger(adminDataModify.class.getName()).log(Level.SEVERE, null, ex);
        }
    } else  JOptionPane.showMessageDialog(null,"Por favor ingrese un nuevo dato para agregar al catálogo"+(String)comboCanton.getSelectedItem());


    }//GEN-LAST:event_kButton1ActionPerformed

    private void jLabel8MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel8MouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabel8MouseClicked

    private void btnMainMenuMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnMainMenuMouseClicked
        try {
            mainWindow ventana =new mainWindow(userType,cedula);
            ventana.setVisible(true);
            this.dispose();
        } catch (SQLException ex) {
            Logger.getLogger(adminDataModify.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnMainMenuMouseClicked

    private void comboEdicion2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboEdicion2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboEdicion2ActionPerformed

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked

    }//GEN-LAST:event_jLabel1MouseClicked

    private void comboComunidadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboComunidadActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboComunidadActionPerformed

    private void jTextField3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField3ActionPerformed

    private void kButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_kButton2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_kButton2ActionPerformed

    private void comboEdicion3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboEdicion3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboEdicion3ActionPerformed

    private void comboPais1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboPais1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboPais1ActionPerformed

    private void comboProvincia1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboProvincia1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboProvincia1ActionPerformed

    private void comboCanton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboCanton1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboCanton1ActionPerformed

    private void comboComunidad1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboComunidad1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_comboComunidad1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(adminDataModify.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(adminDataModify.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AdminDataModify.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AdminDataModify.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
*/
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new adminDataModify(userType,cedula).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btnMainMenu;
    private javax.swing.JComboBox<String> comboCanton;
    private javax.swing.JComboBox<String> comboCanton1;
    private javax.swing.JComboBox<String> comboComunidad;
    private javax.swing.JComboBox<String> comboComunidad1;
    private javax.swing.JComboBox<String> comboEdicion2;
    private javax.swing.JComboBox<String> comboEdicion3;
    private javax.swing.JComboBox<String> comboPais1;
    private javax.swing.JComboBox<String> comboProvincia1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField3;
    private keeptoo.KButton kButton1;
    private keeptoo.KButton kButton2;
    private keeptoo.KGradientPanel kGradientPanel1;
    private keeptoo.KGradientPanel kGradientPanel2;
    private javax.swing.JLabel lblCanton1;
    private javax.swing.JLabel lblComunidad;
    private javax.swing.JLabel lblComunidad1;
    private javax.swing.JLabel lblPais;
    private javax.swing.JLabel lblProvincia1;
    private javax.swing.JLabel lblpais1;
    // End of variables declaration//GEN-END:variables
}
