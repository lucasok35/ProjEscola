package br.com.projescola.test;

import br.com.projescola.db.CidadeDB;
import br.com.projescola.model.Cidade;

public class CidadeTest {
	public static void main(String args []) {
		
		Cidade c = new Cidade();
		
		c.setNome("Taquaritinga");
		c.setQtdhabitantes(20000);
		
		if(new CidadeDB().insert(c)) {
			System.out.println("Registro inserido com sucesso!");
		}else {
			System.out.println("Erro ao inserir registro!");
		}
	}
}
