import 'package:flutter/material.dart';
import 'package:test1/src/AppLucas/Tela03_Noticias.dart';
import 'Tela03_Noticias.dart';
import 'Tela04_Dicas.dart';
import 'Tela05_Medicos.dart';
import 'Tela06_Games.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  // void _abrirNoticias() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => TelaNoticias()));
  // }

  // void _abrirMedicos() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => TelaMedicos()));
  // }

  // void _abrirDicas() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => TelaDicas()));
  // }

  // void _abrirGames() {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => TelaGames()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Lukita"),
        backgroundColor: Colors.yellow[800],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Image.asset(
              "images/AppLucas/LacoAustimo.png",
              scale: 3,
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Últimas Noticias",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Lista de Medicos",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/TelaNoticias");
                    },
                    child: Image.asset(
                      "images/AppLucas/BotaoNoticias.png",
                      scale: 4,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/TelaMedicos");
                    },
                    child: Image.asset(
                      "images/AppLucas/BotaoMedicos.png",
                      scale: 3.5,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text(
                    "Nossas Dicas",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Jogos Favoritos",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/TelaDicas");
                    },
                    child: Image.asset(
                      "images/AppLucas/BotaoDicas.png",
                      scale: 7.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/TelaGames");
                    },
                    child: Image.asset(
                      "images/AppLucas/BotaoGames.png",
                      scale: 3.8,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
