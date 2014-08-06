package br.com.flexait.vraptor4.controller;

import javax.annotation.PostConstruct;
import javax.enterprise.context.RequestScoped;
import javax.inject.Named;

@Named("f")
@RequestScoped
public class Foo {

	public Foo() {
	}
	
	@PostConstruct
	public void foo() {
		System.out.println("###foooo");
	}
	
}
