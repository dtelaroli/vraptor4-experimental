package br.com.flexait.vraptor4.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.flexait.crud.controller.CrudController;
import br.com.flexait.vraptor4.model.User;

@Controller @Path("/user")
public class UserController extends CrudController<User> {
	
}