import 'package:flutter/material.dart';
import 'package:flutter/src/material/material_state.dart';

class AppLucas extends StatelessWidget {
  const AppLucas({Key? key}) : super(key: key);

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
  bool _escolhaUsuarioRemember = false;
  double valorIdade = 10;
  String labelIdade = "0";
  String? _mensagem;

  TextEditingController _controllerNomeCompleto = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerTextoFinal = TextEditingController();

  int? _escolhaUsuario;

  void _limparCampos() {
    _controllerNomeCompleto.text = "";
    _controllerEmail.text = "";

    setState(() {
      "Obrigada!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Novo App Cadastro",
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        //para poder rolar/scroll a tela do app
        padding: const EdgeInsets.all(32),
        child: Column(
          //para o conteudo ocupar toda a tela de forma esticada
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Novo cadastro",
              ),
            ),
            TextField(
              keyboardType: TextInputType.name,
              decoration:
                  const InputDecoration(labelText: "Digite seu nome completo"),
              style: const TextStyle(fontSize: 20, color: Colors.black),
              controller:
                  _controllerNomeCompleto, //para capturar o que o usuario digitou
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Digite seu e-mail"),
              style: const TextStyle(fontSize: 20),
              controller:
                  _controllerEmail, //para capturar o que o usuario digitou
            ),
            SwitchListTile(
                title: const Text("Remember me?"),
                activeColor: Colors.green[700],
                value: _escolhaUsuarioRemember,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuarioRemember = valor;
                  });
                }),

//GestureDetector(
            InkWell(
              onTap: () {
                setState(() {
                  _mensagem = "Feito!";
                });
              },
              child: Ink(
                height: 34,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                          spreadRadius: 0)
                    ]),
                child: Column(
                  children: const <Widget>[
                    SizedBox(height: 10),
                    Text(
                      "Salvar",
                      textAlign: TextAlign.center,
                      //textAlignVertical: TextAlignVertical.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: '.SF UI Text',
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
