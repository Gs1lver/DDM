import 'package:flutter/material.dart';
import 'package:ex_modularizacao/classes/produto.dart';
import 'package:ex_modularizacao/repositories/produtos_repository.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  String produto = "";
  double price = 0;
  TextEditingController campoProduto = TextEditingController();
  TextEditingController campoPrice = TextEditingController();
  ProdutoRepository listaProd = ProdutoRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Cadastro de produtos",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "Produto",
                      labelStyle: TextStyle(color: Colors.red),
                    ),
                    controller: campoProduto,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        labelText: "Preço",
                        labelStyle: TextStyle(color: Colors.red)),
                    controller: campoPrice,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      produto = campoProduto.text;
                      price = double.parse(campoPrice.text);
                      Produto prod = Produto(produto, price);
                      listaProd.adicionarProduto(prod);
                      listaProd.imprimirProduto();
                      setState(() {});
                    },
                    child: Text("Cadastrar"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
