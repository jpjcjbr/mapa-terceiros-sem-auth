package com.example.model;

public class Endereco {
	
	private String logradouro;
	
	private String bairro;
	
	private String cidade;
	
	private String pais;
	
	private String siglaEstado;

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}

	public String getSiglaEstado() {
		return siglaEstado;
	}

	public void setSiglaEstado(String siglaEstado) {
		this.siglaEstado = siglaEstado;
	}
	
	public String getBlankIfNull(String s)
	{
		if(s == null)
		{
			s = "";
		}
		
		return s;
	}

	public String getEnderecoCompleto() {
		return getBlankIfNull(getLogradouro()) + "," + getBlankIfNull(getBairro()) + "," + getBlankIfNull(getCidade()) + "," + getBlankIfNull(getPais());
	}
}
