import 'package:cadastro_listview/controller/altera_pet.dart';
import 'package:cadastro_listview/controller/pet_repository.dart';
import 'package:cadastro_listview/model/pet.dart';
import 'package:flutter/material.dart';

class ListaPetsPage extends StatefulWidget {
  const ListaPetsPage({super.key});

  @override
  State<ListaPetsPage> createState() => _ListaPetsPageState();
}

class _ListaPetsPageState extends State<ListaPetsPage> {
  final listaPets = PetRepository.getListaPets;
  List<Pet> listaBusca = [];
  final nomeBusca = "";

@override
  void initState() {
    listaBusca = List.from(listaPets);
    super.initState();
  }
void atualizaLista(String nome){
  setState((){
    listaBusca = listaPets.where((element) => (
      element.name.toLowerCase().contains(nome.toLowerCase())
    )).toList();
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pets Cadastrados"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.all(8)),
                onChanged: (String nome){
                  atualizaLista(nome);
                }
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            ListView.separated(
              shrinkWrap: true, //mais adequado pra esse exemplo
              itemCount: listaBusca.length,
              separatorBuilder: ((context, index) =>
                  const Divider(thickness: 0)),
              itemBuilder: ((context, int index) {
                return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(listaBusca[index].name[0]),
                    ),
                    title: Text(listaBusca[index].name),
                    subtitle: Text(listaBusca[index].cuidador),
                    trailing: SizedBox(
                      width: 60,
                      child: Row(
                        children: [
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return AlteraPet(
                                        pet: listaPets[index], indice: index);
                                  }));
                                },
                                icon: const Icon(Icons.edit)),
                          ),
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  Pet pet = listaPets[index];
                                  setState(() {
                                    PetRepository.removerPet(pet);
                                    atualizaLista(nomeBusca);
                                  });
                                },
                                icon: const Icon(Icons.delete)),
                          ),
                        ],
                      ),
                    ));
              }),
            ),
            const Divider(
              thickness: 0,
            ),
            ElevatedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context); //bruh
              },
            )
          ],
        ),
      ),
    );
  }
}


