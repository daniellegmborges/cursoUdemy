import 'package:flutter/material.dart';

class AppAula91 extends StatelessWidget {
  const AppAula91({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} ipsum dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            //Map<String, dynamic> item = _itens[indice];
            //print("item ${ _itens[indice]["titulo"] }");

            return ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(_itens[indice]["titulo"]),
                      titlePadding: const EdgeInsets.all(10),
                      titleTextStyle: const TextStyle(fontSize: 20),
                      content: Text(_itens[indice]["descricao"]),
                      actions: <Widget>[
                        TextButton(onPressed: null, child: Text("Ok"))
                      ],
                    );
                  },
                );
              },
              // onLongPress: () {},
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          },
        ),
      ),
    );
  }
}
