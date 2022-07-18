import 'package:flutter/material.dart';
import 'package:test1/src/Aulas/aula94_a_105_youtube/CustomSearchDelegate.dart';
import 'package:test1/src/Aulas/aula94_a_105_youtube/telas/biblioteca_youtube.dart';
import 'package:test1/src/Aulas/aula94_a_105_youtube/telas/em_alta_youtube.dart';
import 'package:test1/src/Aulas/aula94_a_105_youtube/telas/inicio_youtube.dart';
import 'package:test1/src/Aulas/aula94_a_105_youtube/telas/inscricao_youtube.dart';

class AppAula95 extends StatelessWidget {
  const AppAula95({Key? key}) : super(key: key);

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
  int _indiceAtual = 0;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(_resultado),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              String resultadoPesquisa = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
              setState(() {
                _resultado = resultadoPesquisa;
              });
              print("resultado: digitado " + resultadoPesquisa);
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                label: "Início",
                //title: Text("Início"),
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Em alta",
                //title: Text("Em alta"),
                icon: Icon(Icons.whatshot)),
            BottomNavigationBarItem(
                label: "Inscrições",
                //title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)),
            BottomNavigationBarItem(
                label: "Biblioteca",
                //title: Text("Biblioteca"),
                icon: Icon(Icons.folder)),
          ]),
    );
  }
}
