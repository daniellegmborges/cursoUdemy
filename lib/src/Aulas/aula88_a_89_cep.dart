import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class AppAula88 extends StatelessWidget {
  const AppAula88({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeCep(),
    );
  }
}

class HomeCep extends StatefulWidget {
  @override
  _HomeCepState createState() => _HomeCepState();
}

class _HomeCepState extends State<HomeCep> {
  TextEditingController _controllerCep = TextEditingController();
  String _resultado = "Resultado";

  _recuperarCep() async {
    String cepDigitado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";
    http.Response response;

    response = await http.get(Uri.parse(url));
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _resultado = "${logradouro}, ${bairro}, ${localidade} ";
    });

    print(
        "Resposta logradouro: ${logradouro} bairro: ${bairro} localidade ${localidade}");

    //print("resposta: " + response.statusCode.toString() );
    //print("resposta: " + response.body );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumo de serviço web"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Digite o cep: ex: 05428200"),
              style: TextStyle(fontSize: 20),
              controller: _controllerCep,
            ),
            RaisedButton(
              child: Text("Clique aqui"),
              onPressed: _recuperarCep,
            ),
            Text(_resultado)
          ],
        ),
      ),
    );
  }
}
