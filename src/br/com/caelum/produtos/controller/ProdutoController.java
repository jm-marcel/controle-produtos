package br.com.caelum.produtos.controller;

import java.util.List;

import br.com.caelum.produtos.dao.ProdutoDao;
import br.com.caelum.produtos.modelo.Produto;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class ProdutoController {

	private Result result;
	private ProdutoDao produtoDao;
	
	public ProdutoController(Result result, ProdutoDao produtoDao) {
		this.result = result;
		this.produtoDao = produtoDao;
	}
	
	public void formulario() {
		
	}
	
	public List<Produto> lista() {
		return new ProdutoDao().lista();
	}
	
	public void adiciona(Produto produto) {
		produtoDao.adiciona(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public void altera(Produto produto) {
		produtoDao.atualiza(produto);
		result.redirectTo(ProdutoController.class).lista();
	}
	
	public void remove(Produto produto) {
		produtoDao.remove(produto);
		// result.redirectTo(ProdutoController.class).lista();
	}
}
