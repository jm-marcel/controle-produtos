package br.com.caelum.produtos.controller;

// import org.springframework.stereotype.Controller;

import br.com.caelum.produtos.component.UsuarioLogado;
import br.com.caelum.produtos.dao.UsuarioDao;
import br.com.caelum.produtos.modelo.Usuario;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

// @Controller
@Resource
public class LoginController {

	private UsuarioDao usuarioDao;
	private UsuarioLogado usuarioLogado;
	private Result result;
	
	public LoginController(UsuarioDao usuarioDao, UsuarioLogado usuarioLogado, Result result) {
		this.usuarioDao = usuarioDao;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}
	
	public void formulario() {
		
	}
	
	public void autentica(Usuario usuario) {
		Usuario autenticado = usuarioDao.buscaUsuarioPorLoginESenha(usuario);
		if(autenticado != null) {
			usuarioLogado.efetuaLogin(autenticado);
			result.redirectTo(ProdutoController.class).lista();
			return;
		} result.redirectTo(LoginController.class).formulario();
	}
}
