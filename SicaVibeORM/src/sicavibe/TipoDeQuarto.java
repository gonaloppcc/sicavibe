/**
 * "Visual Paradigm: DO NOT MODIFY THIS FILE!"
 * 
 * This is an automatic generated file. It will be regenerated every time 
 * you generate persistence class.
 * 
 * Modifying its content may cause the program not work, or your work may lost.
 */

/**
 * Licensee: vicshadow(Universidade do Minho)
 * License Type: Academic
 */
package sicavibe;

public class TipoDeQuarto {
	public TipoDeQuarto() {
	}
	
	private int ID;
	
	private String nome;
	
	private int capacidade;
	
	private Float preco;
	
	private String descricao;
	
	private String imgUrl;
	
	private void setID(int value) {
		this.ID = value;
	}
	
	public int getID() {
		return ID;
	}
	
	public int getORMID() {
		return getID();
	}
	
	public void setNome(String value) {
		this.nome = value;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setCapacidade(int value) {
		this.capacidade = value;
	}
	
	public int getCapacidade() {
		return capacidade;
	}
	
	public void setPreco(float value) {
		setPreco(Float.valueOf(value));
	}
	
	public void setPreco(Float value) {
		this.preco = value;
	}
	
	public Float getPreco() {
		return preco;
	}
	
	public void setDescricao(String value) {
		this.descricao = value;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setImgUrl(String value) {
		this.imgUrl = value;
	}
	
	public String getImgUrl() {
		return imgUrl;
	}
	
	public String toString() {
		return String.valueOf(getID());
	}
	
}
