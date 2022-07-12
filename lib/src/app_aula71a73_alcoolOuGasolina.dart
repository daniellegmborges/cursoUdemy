import 'package:flutter/material.dart';

class AppAula71 extends StatelessWidget {
  const AppAula71({Key? key}) : super(key: key);

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
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _limparCampos() {
    _controllerAlcool.text = "";
    _controllerGasolina.text = "";
  }

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(
        () {
          _textoResultado =
              "Número inválido, digite números maiores que 0 e utilizando (.)";
        },
      );
    } else {
      //Se o preço do álcool divido pelo preço da gasolina for >= a 0.7 é melhor abastecer com gasolina, senão é melhor utilizar álcool

      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(
          () {
            _textoResultado = "Melhor abastecer com gasolina";
          },
        );
      } else {
        setState(
          () {
            _textoResultado = "Melhor abastecer com alcool";
          },
        );
      }

      //_limparCampos();

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          //para poder rolar/scroll a tela do app
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, //para o conteudo ocupar toda a tela de forma esticada

            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("images/logoAlcoolOuGasolina.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Alcool, ex: 1.59"),
                style: TextStyle(fontSize: 22),
                controller:
                    _controllerAlcool, //para capturar o que o usuario digitou
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina, ex: 3.59"),
                style: TextStyle(fontSize: 22),
                controller:
                    _controllerGasolina, //para capturar o que o usuario digitou
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    _calcular();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "Resultado: " + _textoResultado,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
