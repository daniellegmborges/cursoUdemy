import 'package:flutter/material.dart';
import 'package:test1/src/AppLucas/Tela03_Noticias.dart';
import 'Tela03_Noticias.dart';
import 'Tela04_Dicas.dart';
import 'Tela05_Medicos.dart';
import 'Tela06_Videos.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, opacity: 0.9),
        title: const Text("App Lukita"),
        backgroundColor: Colors.yellow[800],
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
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
                  Text("Vídeos Indicados",
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
                      Navigator.pushNamed(context, "/TelaVideos");
                    },
                    child: Image.asset(
                      "images/AppLucas/BotaoVideos.png",
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
