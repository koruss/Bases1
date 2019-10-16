
package Frames;

import Business.Funciones;
import java.awt.Color;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jfree.chart.ChartFactory;
import org.jfree.data.general.PieDataset;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.labels.PieSectionLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.util.Rotation;
public class adminGraphics extends javax.swing.JFrame {

    /**
     * Creates new form adminGraphics
     */
    public adminGraphics(int pUserType,String pCedula,int pComunidad) {
        initComponents();
        this.userType=pUserType;
        this.cedula=pCedula;
        this.comunidad=pComunidad;
        
        comboPais.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboPaisItemStateChanged(evt);
            }
        });
        
        comboProvincia.addActionListener(new java.awt.event.ActionListener() {
         public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboProvinciaItemStateChanged(evt);
            }
        });
         
        comboCanton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboCantonItemStateChanged(evt);
            }
        });
        
        cbxFiltros.addActionListener(new java.awt.event.ActionListener() {
        public void actionPerformed(java.awt.event.ActionEvent evt) {
            try {
                cbxComboActionPerformed(evt);
            } catch (SQLException ex) {
                Logger.getLogger(adminGraphics.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
});
        

    }
    
    public static int userType;
    public static String cedula;
    public static int comunidad;


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        kButton1 = new keeptoo.KButton();
        panel = new keeptoo.KGradientPanel();
        btnFiltrar = new keeptoo.KButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        panelGrafica = new javax.swing.JPanel();
        cbxFiltros = new javax.swing.JComboBox<>();
        jLabel1 = new javax.swing.JLabel();
        checkBox = new javax.swing.JCheckBox();
        panelFiltros = new javax.swing.JPanel();
        menuPanel = new keeptoo.KGradientPanel();
        btnHome = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();

        kButton1.setText("kButton1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        panel.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnFiltrar.setText("Draw Graphics");
        btnFiltrar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnFiltrarMouseClicked(evt);
            }
        });
        btnFiltrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFiltrarActionPerformed(evt);
            }
        });
        panel.add(btnFiltrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(820, 210, 100, 50));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 36)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 0, 204));
        jLabel3.setText("GRÁFICA");
        panel.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(390, 50, 160, 60));

        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/cancel36px.png"))); // NOI18N
        jLabel7.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel7MouseClicked(evt);
            }
        });
        panel.add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(910, 10, -1, -1));
        panel.add(panelGrafica, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 290, 910, 490));

        cbxFiltros.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "-Filtrar-", "Por Clasificación", "Propuestas Por Zona", "Por Rango de Edad", "Usuarios por zona" }));
        cbxFiltros.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbxFiltrosActionPerformed(evt);
            }
        });
        panel.add(cbxFiltros, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 190, 160, 40));

        jLabel1.setText("Filtros");
        panel.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 190, 40, 30));

        checkBox.setText("Aplicar Filtro");
        checkBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                checkBoxActionPerformed(evt);
            }
        });
        panel.add(checkBox, new org.netbeans.lib.awtextra.AbsoluteConstraints(830, 170, -1, -1));

        panelFiltros.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        panel.add(panelFiltros, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 150, 910, 130));

        getContentPane().add(panel, new org.netbeans.lib.awtextra.AbsoluteConstraints(240, 0, 960, 800));

        menuPanel.setkEndColor(new java.awt.Color(51, 0, 204));
        menuPanel.setkStartColor(new java.awt.Color(204, 0, 204));
        menuPanel.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menuPanelMouseClicked(evt);
            }
        });
        menuPanel.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnHome.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/home.png"))); // NOI18N
        btnHome.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnHomeMouseClicked(evt);
            }
        });
        menuPanel.add(btnHome, new org.netbeans.lib.awtextra.AbsoluteConstraints(70, 50, -1, -1));

        jLabel9.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel9.setText("Menú Principal");
        menuPanel.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 100, 110, 40));

        getContentPane().add(menuPanel, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 800));

        pack();
    }// </editor-fold>//GEN-END:initComponents
//
    private void btnFiltrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFiltrarActionPerformed
        Funciones utils= new Funciones();
        DefaultPieDataset data;
        if (arreglo[0]==1){
            
            try {
                 data=utils.graficoClasificacion();
                crearPieChart(data);
                
            } catch (SQLException ex) {
                System.out.println("Error inesperado en filtro clasificacion");
            }
        }
        if (arreglo[1]==1){
            String pais=this.comboPais.getSelectedItem().toString();
            String provincia=this.comboProvincia.getSelectedItem().toString();
            String canton =this.comboCanton.getSelectedItem().toString();
            String comunidad = this.comboComunidad.getSelectedItem().toString();     
            try {
                data=utils.graficoPropuestasXzona(pais, provincia, canton, comunidad);
            } catch (SQLException ex) {
                System.out.println("Error inesperdao en  filtro Propuestas por Zona");
            }
        }
       if(arreglo[2]==1){
          String rango=comboEdad.getSelectedItem().toString();
            try {
                data=utils.graficoEdad(rango);
            } catch (SQLException ex) {
                Logger.getLogger(adminGraphics.class.getName()).log(Level.SEVERE, null, ex);
            }
       }

       
    }//GEN-LAST:event_btnFiltrarActionPerformed

    private void jLabel7MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel7MouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabel7MouseClicked

    private void btnHomeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnHomeMouseClicked
        try {
            // TODO add your handling code here:
            mainWindow ventana =new mainWindow(userType,cedula,comunidad);
            ventana.setVisible(true);
            this.dispose();
        } catch (SQLException ex) {
            Logger.getLogger(adminGraphics.class.getName()).log(Level.SEVERE, null, ex);
        }

    }//GEN-LAST:event_btnHomeMouseClicked

        private void cbxComboActionPerformed(java.awt.event.ActionEvent evt) throws SQLException {                                         
       panelFiltros.removeAll();//
       panelFiltros.repaint();
        String opcion=cbxFiltros.getSelectedItem().toString();
       switch(opcion){
           case "Por Clasificación":   
               filtrarGrafico(1);
               break;
           case "Propuestas Por Zona":
              filtrarGrafico(2);
               break;
           case "Por Rango de Edad":
              filtrarGrafico(3);
               break;
           case "Usuarios por zona":
               filtrarGrafico(4);
               break;
       } 
    }    
    
    
   private void checkBoxActionPerformed(java.awt.event.ActionEvent evt) {                                         
       String opcion=cbxFiltros.getSelectedItem().toString();
       switch(opcion){
           case "Por Clasificación":
               if(arreglo[0]==1)arreglo[0]=0;
               else{
                   arreglo[0]=1;
               }
               break;
           case "Propuestas Por Zona":
               if(arreglo[1]==1)arreglo[1]=0;
               else{
                   arreglo[1]=1;
               }
               break;
           case "Por Rango de Edad":
               if(arreglo[2]==1)arreglo[2]=0;
               else{
                   arreglo[2]=1;
               }
               break;
           case "Usuarios por zona":
               if(arreglo[3]==1)arreglo[3]=0;
               else{
                   arreglo[3]=1;
               }
               break;
       } 
       
       for (int i=0;i<arreglo.length;i++){
           System.out.print(arreglo[i]);
           
       }
       System.out.println("----");
    } 
    private void menuPanelMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_menuPanelMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_menuPanelMouseClicked

    private void btnFiltrarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnFiltrarMouseClicked
        
    }//GEN-LAST:event_btnFiltrarMouseClicked

    private void cbxFiltrosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbxFiltrosActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbxFiltrosActionPerformed
/*
    private void checkBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_checkBoxActionPerformed
        String opcion=cbxCombo.getSelectedItem().toString();
        switch(opcion){
            case "Fecha":
            if(arreglo[0]==1)arreglo[0]=0;
            else{
                arreglo[0]=1;
            }

            break;
            case "Top Propuestas":
            if(arreglo[3]==1)arreglo[3]=0;
            else{
                arreglo[3]=1;
            }
            break;
            case "Mis Propuestas":
            if(arreglo[2]==1)arreglo[2]=0;
            else{
                arreglo[2]=1;
            }
            break;
            case "Clasificacion":
            if(arreglo[1]==1)arreglo[1]=0;
            else{
                arreglo[1]=1;
            }
            break;
        }

        for (int i=0;i<arreglo.length;i++){
            System.out.print(arreglo[i]);

        }
        System.out.println("----");
    }//GEN-LAST:event_checkBoxActionPerformed
  */  
    
    public void filtrarGrafico(int opc) throws SQLException{
       panelFiltros.removeAll();//
       panelFiltros.repaint();
        switch(opc){
            case 1:
                javax.swing.JLabel txtCategoria= new javax.swing.JLabel();
                comboCategoria.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
                llenarComboCategorias();
                panelFiltros.add(comboCategoria, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 40, 200, 30));
                txtCategoria.setText("Categoria");
                txtCategoria.setForeground(new java.awt.Color(255, 0, 204));
                txtCategoria.setFont(new java.awt.Font("Segoe UI", 1, 16)); // NOI18N
                panelFiltros.add(txtCategoria, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 40, -1, -1));
                           if(arreglo[0]==1){
               checkBox.setSelected(true);
           }
           else{
               checkBox.setSelected(false);  
           }
                pack();
                break;
                
            case 2:
                comboPais.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboProvincia.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboCanton.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboComunidad.setFont(new java.awt.Font("Segoe UI", 0, 14));     
                
                 panelFiltros.add(comboPais, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 30, 200, 30));
                 panelFiltros.add(comboProvincia, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 80, 200, 30));
                 panelFiltros.add(comboCanton, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 30, 200, 30));
                 panelFiltros.add(comboComunidad, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 80, 200, 30));
                 llenarComboPaises();
                            if(arreglo[1]==1){
               checkBox.setSelected(true);
           }
           else{
               checkBox.setSelected(false);  
           }
                  pack();
                  break;
            case 3:       
                   comboEdad.setFont(new java.awt.Font("Segoe UI", 0, 14));
                   comboEdad.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "0-18", "19-30", "30-45", "46-55","56-65","66-75","76-85","86+" }));
                   panelFiltros.add(comboEdad,new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 40, -1, -1));
               if(arreglo[2]==1){
               checkBox.setSelected(true);
           }
           else{
               checkBox.setSelected(false);  
           }
                   pack();
                   break;
                   
            case 4:
                comboPais.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboProvincia.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboCanton.setFont(new java.awt.Font("Segoe UI", 0, 14));
                comboComunidad.setFont(new java.awt.Font("Segoe UI", 0, 14));
                
                //aqui se llenan los combobox
                
                 panelFiltros.add(comboPais, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 30, 200, 30));
                 panelFiltros.add(comboProvincia, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 80, 200, 30));
                 panelFiltros.add(comboCanton, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 30, 200, 30));
                 panelFiltros.add(comboComunidad, new org.netbeans.lib.awtextra.AbsoluteConstraints(520, 80, 200, 30));
                            if(arreglo[3]==1){
               checkBox.setSelected(true);
           }
           else{
               checkBox.setSelected(false);  
           }
                  llenarComboPaises();
                  pack();
                  break;
    }
        
        
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
            java.util.logging.Logger.getLogger(adminGraphics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(adminGraphics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(adminGraphics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(adminGraphics.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new adminGraphics(userType,cedula,comunidad).setVisible(true);
            }
        });
    }
    
    public void crearPieChart(DefaultPieDataset data){

        DefaultPieDataset result =new DefaultPieDataset();
        result.setValue("hola", 22);
        result.setValue("jaja",55);
        
        JFreeChart chart =ChartFactory.createPieChart3D("", result, true,true,false);
        PiePlot3D plot = (PiePlot3D) chart.getPlot();
        plot.setStartAngle(0);
        plot.setDirection(Rotation.CLOCKWISE);
        plot.setForegroundAlpha(0.5f);
        plot.setSimpleLabels(true);
        
        PieSectionLabelGenerator gen = new StandardPieSectionLabelGenerator(
            "{0}: {1} ({2})", new DecimalFormat("0"), new DecimalFormat("0%"));
        plot.setLabelGenerator(gen);
        ChartPanel chartPanel = new ChartPanel(chart);
        chartPanel.setPreferredSize(new java.awt.Dimension(600,400));
        chartPanel.setBackground(new Color(0,0,0,80));

        panelGrafica.add(chartPanel,new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 200, 600, 400));
        pack();
    }
        private void llenarComboPaises() throws SQLException{
        //comboPais.removeAllItems();
        Funciones business = new Funciones();
        ResultSet countries=business.getCountries(-1);
        //nationalities.beforeFirst();
        while(countries.next()){
            comboPais.addItem(countries.getString("COUNTRY_NAME"));
        }
    }
    
    private void llenarComboCantones(String pIdProvince) throws SQLException{
        comboCanton.removeAllItems();
        Funciones business = new Funciones();
        ResultSet cantons=business.getCantons(pIdProvince);
        //nationalities.beforeFirst();
        comboCanton.addItem("Seleccione");
        while(cantons.next()){
            comboCanton.addItem(cantons.getString("CANTON_NAME"));
        }
    }
    
    
    private void llenarComboProvincias(String pIdCountry) throws SQLException{
        comboProvincia.removeAllItems();
        Funciones business = new Funciones();
        ResultSet provinces=business.getProvinces(pIdCountry);
        //nationalities.beforeFirst();
        comboProvincia.addItem("Seleccione");
        while(provinces.next()){
            comboProvincia.addItem(provinces.getString("PROVINCE_NAME"));
        }
    }
    
    private void llenarComboComunidades(String pIdCanton) throws SQLException{
        comboComunidad.removeAllItems();
        Funciones business = new Funciones();
        ResultSet communitites=business.getCommunities(pIdCanton);
        //nationalities.beforeFirst();
        comboComunidad.addItem("Seleccione");
        while(communitites.next()){
            comboComunidad.addItem(communitites.getString("COMMUNITY_NAME"));
        }
    }
    private void llenarComboCategorias() throws SQLException{
        comboCategoria.removeAllItems();
        Funciones utils = new Funciones();
        ResultSet categories= utils.getCategories(-1);
        while(categories.next()){
            comboCategoria.addItem(categories.getString("CATEGORY_NAME"));
        }
    }
        private void comboPaisItemStateChanged(java.awt.event.ActionEvent evt) {                                           
        try {
            comboProvincia.removeAllItems();
            comboCanton.removeAllItems();
            comboComunidad.removeAllItems();
            llenarComboProvincias((String)this.comboPais.getSelectedItem());
        } catch (SQLException ex) {
            Logger.getLogger(SignUpLocation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }                                          

    private void comboProvinciaItemStateChanged(java.awt.event.ActionEvent evt) {                                                
        try {
            comboCanton.removeAllItems();
            comboComunidad.removeAllItems();
            llenarComboCantones((String)this.comboProvincia.getSelectedItem());
        } catch (SQLException ex) {
            Logger.getLogger(SignUpLocation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }                                               

    private void comboCantonItemStateChanged(java.awt.event.ActionEvent evt) {                                             
        try {
            comboComunidad.removeAllItems();
            llenarComboComunidades((String)this.comboCanton.getSelectedItem());
        } catch (SQLException ex) {
            Logger.getLogger(SignUpLocation.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    
    

    
    
    //variables declaration
      private javax.swing.JComboBox<String> comboPais = new javax.swing.JComboBox<String> ();
      private javax.swing.JComboBox<String> comboProvincia = new javax.swing.JComboBox<String> ();
      private javax.swing.JComboBox<String> comboCanton = new javax.swing.JComboBox<String> ();
      private javax.swing.JComboBox<String> comboComunidad = new javax.swing.JComboBox<String> ();
      javax.swing.JComboBox<String> comboCategoria= new javax.swing.JComboBox<String> ();
      javax.swing.JComboBox<String> comboEdad = new javax.swing.JComboBox<String> ();
      public int[ ] arreglo = {0,0,0,0}; 
      
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private keeptoo.KButton btnFiltrar;
    private javax.swing.JLabel btnHome;
    private javax.swing.JComboBox<String> cbxFiltros;
    private javax.swing.JCheckBox checkBox;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private keeptoo.KButton kButton1;
    private keeptoo.KGradientPanel menuPanel;
    private keeptoo.KGradientPanel panel;
    private javax.swing.JPanel panelFiltros;
    private javax.swing.JPanel panelGrafica;
    // End of variables declaration//GEN-END:variables
}
