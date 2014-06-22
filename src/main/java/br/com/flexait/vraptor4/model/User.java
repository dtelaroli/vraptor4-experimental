package br.com.flexait.vraptor4.model;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotEmpty;

import br.com.flexait.crud.model.Model;

@Entity
public class User extends Model {

	private static final long serialVersionUID = -2282717190691012398L;

	@NotEmpty
	private String name;
	
	public User() {
		
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + "]";
	}

}