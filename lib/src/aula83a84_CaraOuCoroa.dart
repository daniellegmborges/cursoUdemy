import 'package:flutter/material.dart';
import 'dart:math';

class AppAula83 extends StatelessWidget {
  const AppAula83({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "/principal",
      // routes: {
      //   "/principal": (context) => Jogar(),
      //   "/resultado": (context) => Resultado(),
      // },
      debugShowCheckedModeBanner: false,
      home: Jogar(),
    );
  }
}

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/CaraOuCoroa/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/CaraOuCoroa/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}

//criando a segunda tela de resultados

class Resultado extends StatefulWidget {
  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    //print(widget.valor);
    var caminhoImagem;

    if (widget.valor == "cara") {
      caminhoImagem = "images/CaraOuCoroa/moeda_cara.png";
    } else {
      caminhoImagem = "images/CaraOuCoroa/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/CaraOuCoroa/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
