package DAO;

import Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class UsuarioDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Usuario> lista = new ArrayList<Usuario>();
    
    public UsuarioDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Usuario usuario){
        String sql="INSERT INTO usuario(nome, email, senha) values(?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.execute();
            stmt.close();
            
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: " + erro );
        }
    }
    public void alterar(Usuario usuario){
        String sql="UPDATE usuario SET nome = ?, email = ?, senha =? WHERE id_usuario = ?";
        try{
             stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.setInt(4, usuario.getId_usuario());
            stmt.execute();
            stmt.close();
            
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 3: " + erro );
        }
    }
    public void excluir(int valor){
        
        String sql="DELETE FROM usuario WHERE id_usuario = " +valor;
       
        try{
             st = conn.createStatement();
             st.execute(sql);
             st.close();
             
        }catch (Exception erro){
            throw new RuntimeException("Erro 4: " + erro );
        }
    }
    
    public ArrayList<Usuario> listarTodos(){
        String sql= "SELECT * FROM usuario";
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                lista.add(usuario);
                 
             }                   
          
        }catch (Exception erro){
            throw new RuntimeException("Erro 5: " + erro );
        }
        
        return lista;
    }
    public ArrayList<Usuario> listarPorNome(String nome){
        String sql= "SELECT * FROM usuario WHERE nome LIKE '%" + nome + "%' ";
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                lista.add(usuario);
                 
             }                   
          
        }catch (Exception erro){
            throw new RuntimeException("Erro 5: " + erro );
        }
        
        return lista;
    }
    
}
