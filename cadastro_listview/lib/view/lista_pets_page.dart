import 'package:cadastro_listview/controller/pet_repository.dart';
import 'package:flutter/material.dart';

class ListaPetsPage extends StatefulWidget {
  const ListaPetsPage({super.key});

  @override
  State<ListaPetsPage> createState() => _ListaPetsPageState();
}

class _ListaPetsPageState extends State<ListaPetsPage> {
  final listaPets = PetRepository.getListaPets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pets Cadastrados"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.separated(
            shrinkWrap: true, //mais adequado pra esse exemplo
            itemCount: listaPets.length,
            separatorBuilder: ((context, index) => const Divider(
                  thickness: 2,
                )),
            itemBuilder: ((context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Text(listaPets[index].name[0]),
                ),
                title: Text(listaPets[index].name),
                subtitle: Text(listaPets[index].cuidador),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              );
            }),
          ),
          Divider(
            thickness: 2,
          ),
          ElevatedButton(
            child: Text("Voltar"),
            onPressed: () {
              Navigator.pop(context); //bruh
            },
          )
        ],
      ),
    );
  }
}
