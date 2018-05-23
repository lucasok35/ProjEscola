package br.com.projescola.model;

public class Cidade {
	
	private int id;
	private String nome;
	private int qtdhabitantes;
	
	
	
	public Cidade() {
		
	}
	
	
	public Cidade(int id, String nome, int qtdhabitantes) {
		this.id = id;
		this.nome = nome;
		this.qtdhabitantes = qtdhabitantes;
	}

	
	
	public Cidade(int id) {
		this.id = id;
	}

	public Cidade(String nome) {
		this.nome=nome;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getQtdhabitantes() {
		return qtdhabitantes;
	}
	public void setQtdhabitantes(int qtdhabitantes) {
		this.qtdhabitantes = qtdhabitantes;
	}
	
	
}
