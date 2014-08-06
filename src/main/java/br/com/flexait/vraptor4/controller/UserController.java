package br.com.flexait.vraptor4.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.i18n.routes.I18nPath;
import br.com.caelum.vraptor.i18n.routes.I18nPaths;

@Controller @Path("/user")  @I18nPath(locale = "es-es", path = "/usuario")
public class UserController {
	
	public UserController() {
	}
	
	@I18nPath(locale = "es-es", path = "/initiale")
	public void index() {
	}

	@Post("/{id}")
	@I18nPaths(@I18nPath(locale = "es-es", path = "/{id}"))
	public void save(Long id) {
		
	}
}