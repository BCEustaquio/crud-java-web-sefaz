package DAO;

import Model.Telefones;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class TelefonesDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Telefones> lista = new ArrayList<Telefones>();
    
    public TelefonesDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Telefones telefones){
        String sql="INSERT INTO telefones(id_usuario, ddd, numero, tipo) values(?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, telefones.getId_usuario());
            stmt.setInt(2, telefones.getDdd());
            stmt.setString(3, telefones.getNumero());
            stmt.setString(4, telefones.getTipo());
            stmt.execute();
            stmt.close();
            
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: " + erro );
        }
    }
    public void alterar(Telefones telefones){
        
        String sql="UPDATE telefones SET id_usuario = ?, ddd = ?, numero = ?, tipo = ? WHERE id_tel = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, telefones.getId_usuario());
            stmt.setInt(2, telefones.getDdd());
            stmt.setString(3, telefones.getNumero());
            stmt.setString(4, telefones.getTipo());
            stmt.setInt(5, telefones.getId_tel());
            stmt.execute();
            stmt.close();
            
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 3: " + erro );
        }
    }
    public void excluir(int valor){
        
        String sql="DELETE FROM telefones WHERE id_tel = " +valor;
       
        try{
             st = conn.createStatement();
             st.execute(sql);
             st.close();
             
        }catch (Exception erro){
            throw new RuntimeException("Erro 4: " + erro );
        }
    }
    
    public ArrayList<Telefones> listarTodos(int valor){
        String sql= "SELECT * FROM telefones WHERE id_usuario = " + valor ;
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                Telefones telefones = new Telefones();
                telefones.setId_usuario(rs.getInt("id_usuario"));
                telefones.setDdd(rs.getInt("ddd"));
                telefones.setNumero(rs.getString("numero"));
                telefones.setTipo(rs.getString("tipo"));
                lista.add(telefones);
                 
             }                   
          
        }catch (Exception erro){
            throw new RuntimeException("Erro 5: " + erro );
        }
        
        return lista;
    }
    
}
