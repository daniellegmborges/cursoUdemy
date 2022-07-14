import 'package:flutter/material.dart';
import 'package:test1/src/Aulas/aula97_a_94_youtube/Biblioteca.dart';
import 'package:test1/src/Aulas/aula97_a_94_youtube/EmAlta.dart';
import 'package:test1/src/Aulas/aula97_a_94_youtube/Inicio.dart';
import 'package:test1/src/Aulas/aula97_a_94_youtube/Inscricao.dart';

class AppAula97 extends StatelessWidget {
  const AppAula97({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeYoutube(),
    );
  }
}

class HomeYoutube extends StatefulWidget {
  @override
  _HomeYoutubeState createState() => _HomeYoutubeState();
}

class _HomeYoutubeState extends State<HomeYoutube> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Inicio(), EmAlta(), Inscricao(), Biblioteca()];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("acao: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("acao: conta");
            },
          )
        ],
      ),
      body: telas[_indiceAtual],
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
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Em alta",
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              label: "Inscrições",
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(Icons.folder),
            ),
          ]),
    );
  }
}
