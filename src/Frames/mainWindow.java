/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Frames;

import java.awt.Color;
import java.awt.Image;
import javax.swing.SpinnerNumberModel;

/**
 *
 * @author kenneth
 */
public class mainWindow extends javax.swing.JFrame {

    /**
     * Creates new form mainWindow
     */
    public mainWindow() {
        initComponents();
        //this.mainPanel.setBackground(new Color(0,0,0,80));
        //this.panelScroll.setBackground(new Color(0,0,0,80));
        
        for(int i=30;i<1000;i+=170){
            crearPaneles(i);
        }
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        kGradientPanel2 = new keeptoo.KGradientPanel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        mainPanel = new javax.swing.JScrollPane();
        panelScroll = new javax.swing.JPanel();
        cbxCombo = new javax.swing.JComboBox<>();
        panelFiltros = new javax.swing.JPanel();
        kGradientPanel1 = new keeptoo.KGradientPanel();
        btnHome = new javax.swing.JLabel();
        btnNewProposal = new javax.swing.JLabel();
        btnConfig = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        kGradientPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/cancel36px.png"))); // NOI18N
        jLabel6.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel6MouseClicked(evt);
            }
        });
        kGradientPanel2.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(930, 10, -1, 40));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel1.setText("Propuestas");
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });
        kGradientPanel2.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(400, 60, -1, 50));

        mainPanel.setBackground(new Color(0,0,0,80));
        mainPanel.setHorizontalScrollBarPolicy(javax.swing.ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);

        panelScroll.setBackground(new Color(0,0,0,80));
        panelScroll.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        mainPanel.setViewportView(panelScroll);

        kGradientPanel2.add(mainPanel, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 230, 940, 540));

        cbxCombo.setBackground(new java.awt.Color(204, 0, 204));
        cbxCombo.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        cbxCombo.setMaximumRowCount(5);
        cbxCombo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Selecciona una Opcion-", "Fecha", "Clasificacion", "Mis Propuestas", "Top Propuestas" }));
        cbxCombo.setToolTipText("");
        cbxCombo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbxComboActionPerformed(evt);
            }
        });
        kGradientPanel2.add(cbxCombo, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 170, 190, -1));

        panelFiltros.setBackground(new Color(0,0,0,80));
        panelFiltros.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        kGradientPanel2.add(panelFiltros, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 130, 940, 100));

        getContentPane().add(kGradientPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 0, 980, 800));

        kGradientPanel1.setkEndColor(new java.awt.Color(51, 0, 204));
        kGradientPanel1.setkStartColor(new java.awt.Color(204, 0, 204));
        kGradientPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnHome.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/home.png"))); // NOI18N
        btnHome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnHomeMouseClicked(evt);
            }
        });
        kGradientPanel1.add(btnHome, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 60, -1, -1));

        btnNewProposal.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/newProposal.png"))); // NOI18N
        btnNewProposal.setText("jLabel8");
        btnNewProposal.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnNewProposalMouseClicked(evt);
            }
        });
        kGradientPanel1.add(btnNewProposal, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 340, 60, -1));

        btnConfig.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/config.png"))); // NOI18N
        btnConfig.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnConfigMouseClicked(evt);
            }
        });
        kGradientPanel1.add(btnConfig, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 650, -1, -1));

        getContentPane().add(kGradientPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 220, 800));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jLabel6MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel6MouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabel6MouseClicked
   //metodo que modifica el combobox con los filtros 
    private void cbxComboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbxComboActionPerformed
       panelFiltros.removeAll();//
       panelFiltros.repaint();
        String opcion=cbxCombo.getSelectedItem().toString();
       switch(opcion){
           case "Fecha":   
               filtros(1);
               break;
           case "Top Propuestas":
               filtros(2);
               break;
           case "Mis Propuestas":
               filtros(4);
               break;
           case "Clasificacion":
               filtros(3);
               break;
       } 
    }//GEN-LAST:event_cbxComboActionPerformed

    private void btnHomeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseClicked
        // TODO add your handling code here:
        mainWindow ventana =new mainWindow();
        ventana.setVisible(true);
        this.dispose();
        
    }//GEN-LAST:event_btnHomeMouseClicked

    private void btnNewProposalMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnNewProposalMouseClicked
        newProposal ventana =new newProposal();
        ventana.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnNewProposalMouseClicked

    private void btnConfigMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnConfigMouseClicked
        userConsultas ventana= new userConsultas();
        ventana.setVisible(true);
        this.dispose();
    }//GEN-LAST:event_btnConfigMouseClicked

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_jLabel1MouseClicked

    
 
    
       
    public void filtros(int opc){
        switch (opc){
            case  1://opcion de fecha
             javax.swing.JLabel txtFecha1 =new javax.swing.JLabel();
             javax.swing.JLabel txtfecha2 =new javax.swing.JLabel();
             javax.swing.JLabel txtGuion=new javax.swing.JLabel();
            fechaField1= new javax.swing.JFormattedTextField();
            fechaField2= new javax.swing.JFormattedTextField();
            fechaField1.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter()));
            panelFiltros.add(fechaField1, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 40, 100, -1));
            txtFecha1.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
            txtFecha1.setForeground(new java.awt.Color(255, 0, 204));
            txtFecha1.setText("Desde");
            panelFiltros.add(txtFecha1, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 35, -1, -1));
            txtGuion.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
            txtGuion.setForeground(new java.awt.Color(255, 0, 204));
            txtGuion.setText("-");
            panelFiltros.add(txtGuion, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 35, -1, -1));
            fechaField2.setFormatterFactory(new javax.swing.text.DefaultFormatterFactory(new javax.swing.text.DateFormatter()));
            panelFiltros.add(fechaField2, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 40,100, -1));
            txtfecha2.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
            txtfecha2.setForeground(new java.awt.Color(255, 0, 204));
            txtfecha2.setText("Hasta");
            panelFiltros.add(txtfecha2, new org.netbeans.lib.awtextra.AbsoluteConstraints(580, 35, -1,-1));
            pack();
            break;
            
            case 2://opcion top N
                spinnerTop= new javax.swing.JSpinner();
                javax.swing.JLabel txtTop= new javax.swing.JLabel();
                txtTop.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
                txtTop.setForeground(new java.awt.Color(255, 0, 204));
                txtTop.setText("TOP");
                panelFiltros.add(txtTop, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 40, -1, -1));
                spinnerTop.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
                spinnerTop.setModel(new SpinnerNumberModel(0, 0, 20, 1));
                panelFiltros.add(spinnerTop, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 40, 50, -1));
                pack();
                break;
            case 3:// clasificacion
                comboCategoria = new javax.swing.JComboBox<String> ();
                javax.swing.JLabel txtCategoria= new javax.swing.JLabel();
                comboCategoria.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
                comboCategoria.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Psycho", "Gothic", "Amateur", "Bass" }));
                panelFiltros.add(comboCategoria, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 40, 100, -1));
                txtCategoria.setText("Categoria");
                txtCategoria.setForeground(new java.awt.Color(255, 0, 204));
                txtCategoria.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
                panelFiltros.add(txtCategoria, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 40, -1, -1));
                pack();
                break;
            case 4://mis propuestas
                break;
                
                
                    
        }
        
    } 
    
    private void crearPaneles(int posY){

        javax.swing.JLabel txtMainTitle;
        javax.swing.JLabel txtTitulo;
        javax.swing.JPanel panelproposal;
        javax.swing.JTextField boxInfo;
        //creo el panel
        panelproposal = new javax.swing.JPanel();
        
        panelproposal.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
       // panelproposal.setBackground(new Color(0,0,0,80));
        panelproposal.setBorder(javax.swing.BorderFactory.createMatteBorder(2, 2, 2, 2, new java.awt.Color(51, 51, 255)));
        //creo el titulo y lo inserto en el panel
        txtMainTitle = new javax.swing.JLabel();
        txtMainTitle.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        txtMainTitle.setText("Titulo:");
        panelproposal.add(txtMainTitle, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 5, -1, 50));
        //creo el subtitulo y lo inserto en el panel
        txtTitulo = new javax.swing.JLabel();
        txtTitulo.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        txtTitulo.setText("aqui va el titulo de la propuesta");
        panelproposal.add(txtTitulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 10, 210, 40));
        boxInfo = new javax.swing.JTextField();
        //creo e inserto la caja de texto
        boxInfo.setText("jTextField1");
        boxInfo.setBackground(new Color(0,0,0,100));
        boxInfo.setFont(new java.awt.Font("Segoe UI", 0, 14)); 
        panelproposal.add(boxInfo, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 60, 700, 90));
        
        this.panelScroll.add(panelproposal, new org.netbeans.lib.awtextra.AbsoluteConstraints(25, posY, 860, 160));
        
        pack();
    }
    
    
    
  
 
    
    
    
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
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(mainWindow.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new mainWindow().setVisible(true);
            }
        });
    }
   
    //mi declaracion de variables 
    public javax.swing.JFormattedTextField fechaField2;
    public javax.swing.JFormattedTextField fechaField1;
    public javax.swing.JSpinner spinnerTop;
    public javax.swing.JComboBox<String> comboCategoria;
    public javax.swing.JButton btnAceptar;
    
    //fin de mi declaracion de variables
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btnConfig;
    private javax.swing.JLabel btnHome;
    private javax.swing.JLabel btnNewProposal;
    private javax.swing.JComboBox<String> cbxCombo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel6;
    private keeptoo.KGradientPanel kGradientPanel1;
    private keeptoo.KGradientPanel kGradientPanel2;
    private javax.swing.JScrollPane mainPanel;
    private javax.swing.JPanel panelFiltros;
    private javax.swing.JPanel panelScroll;
    // End of variables declaration//GEN-END:variables
}
