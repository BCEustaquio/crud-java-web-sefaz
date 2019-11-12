package DAO;

import Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class UsuarioDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    
    
    public UsuarioDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Usuario usuario){
        String sql="INSERT INTO usuario(nome, email, senha) values(?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 2: " + erro );
        }
    }
    public void alterar(Usuario usuario){
        String sql="";
        try{
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 3: " + erro );
        }
    }
    public void excluir(int valor){
        String sql="";
        try{
            
        }catch (Exception erro){
            throw new RuntimeException("Erro 4: " + erro );
        }
    }
    
}
