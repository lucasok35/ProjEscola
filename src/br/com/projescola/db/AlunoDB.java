package br.com.projescola.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.projescola.model.Aluno;
import br.com.projescola.model.Cidade;
import br.com.projescola.util.ConnectionFactory;

public class AlunoDB {
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public AlunoDB() {
		con = ConnectionFactory.getConnection();
	}
	
public boolean insert(Aluno aluno) {
	
	try {
		
		StringBuilder sb = new StringBuilder();
		sb.append("insert into TB_ALUNO (nome, telefone, nota, idcidade)");
		sb.append("values (?, ?, ?, ?)");
		
		ps = this.con.prepareStatement(sb.toString());
		
		ps.setString(1, aluno.getNome());
		ps.setString(2, aluno.getTelefone());
		ps.setInt(3, aluno.getNota());
		ps.setInt(4, aluno.getCidade().getId());
		
		ps.execute();
		
		return true;
	
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	return false;
}

public List<Aluno> all(){
	
	List<Aluno> lstAluno = new ArrayList<>();
		
	String sql = "SELECT a.nome, a.telefone, a.nota, c.nome FROM TB_ALUNO A, TB_CIDADE, C WHERE a.id = c.id";
	
	try {
		ps = this.con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
			
			Aluno aluno = new Aluno();
						
			aluno.setNome(rs.getString("a.nome"));
			aluno.setTelefone(rs.getString("a.telefone"));
			aluno.setNota(rs.getInt("a.nota"));
			aluno.setCidade( new Cidade(rs.getString("c.nome")));
			
			
			
			lstAluno.add(aluno);
		}
		
	} catch (SQLException e) {
			//
		e.printStackTrace();
	}
	
	return lstAluno;
}
}
