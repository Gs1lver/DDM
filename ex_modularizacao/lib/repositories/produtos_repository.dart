import 'package:ex_modularizacao/classes/produto.dart';

class ProdutoRepository {
  List<Produto> _listaProdutos = [];

  ProdutoRepository() {
    this._listaProdutos = [];
  }

  void adicionarProduto(Produto prod) {
    _listaProdutos.add(prod);
  }

  void imprimirProduto() {
    for (var i = 0; i < _listaProdutos.length; i++) {
      print(
          "Produto: ${_listaProdutos[i].produto}, Preço: ${_listaProdutos[i].price}\n");
    }
  }
}
