package br.com.flexait.vraptor4.controller;

import java.util.ResourceBundle;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;

@Controller @Path("/my") 
public class MyController {

	private final Result result;
	private final ResourceBundle resourceBundle;

	public MyController() {
		this(null, null);
	}
	
	@Inject
	public MyController(Result result, ResourceBundle resourceBundle) {
		this.result = result;
		this.resourceBundle = resourceBundle;
	}
	
	public void index() {
		result.use(Results.http()).body(resourceBundle.getString("user.title") + " " + resourceBundle.getLocale());
	}
	
	@Get("/{id}")
	public void to(Long id) {
		
	}
	
}
