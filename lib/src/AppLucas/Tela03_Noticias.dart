import 'package:flutter/material.dart';

class TelaNoticias extends StatefulWidget {
  const TelaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaNoticias> createState() => _TelaNoticiasState();
}

class _TelaNoticiasState extends State<TelaNoticias> {
  List _listaNoticias = [];

  void _carregarlistaNoticias() {
    _listaNoticias = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Noticia ${i} - Título da notícia";
      item["descricao"] = "Descrição ${i}: descrição da notícia";
      _listaNoticias.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarlistaNoticias();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Noticias"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _listaNoticias.length,
          itemBuilder: (context, indice) {
            //Map<String, dynamic> item = _listaNoticias[indice];
            //print("item ${ _listaNoticias[indice]["titulo"] }");

            return ListTile(
              title: Text(_listaNoticias[indice]["titulo"]),
              subtitle: Text(_listaNoticias[indice]["descricao"]),
            );
          },
        ),
      ),
    );
  }
}
