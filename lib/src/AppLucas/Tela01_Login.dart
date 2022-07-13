import 'package:flutter/material.dart';
import 'package:test1/src/AppLucas/Tela02_Principal.dart';
import 'package:test1/src/AppLucas/Tela03_Noticias.dart';
import 'package:test1/src/AppLucas/Tela04_Dicas.dart';
import 'package:test1/src/AppLucas/Tela05_Medicos.dart';
import 'package:test1/src/AppLucas/Tela06_Games.dart';

class AppLucas extends StatelessWidget {
  const AppLucas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      routes: {
        "/login": (context) => Home(),
        "/TelaPrincipal": (context) => Home(),
        "/TelaPrincipal": (context) => TelaPrincipal(),
        "/TelaNoticias": (context) => TelaNoticias(),
        "/TelaDicas": (context) => TelaDicas(),
        "/TelaMedicos": (context) => TelaMedicos(),
        "/TelaGames": (context) => TelaGames(),
      },
      debugShowCheckedModeBanner: false,
      //home: Home(),
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

  TextEditingController _controllerSenhaUsuario = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  //TextEditingController _controllerTextoFinal = TextEditingController();

  int? _escolhaUsuario;

  void _loginEntrar() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaPrincipal()));
  }

  void _limparCampos() {
    _controllerSenhaUsuario.text = "";
    _controllerEmail.text = "";

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
        ),
        backgroundColor: const Color.fromRGBO(60, 64, 190, 1),
      ),
      body: SingleChildScrollView(
//para poder rolar/scroll a tela do app
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
//para o conteudo ocupar toda a tela de forma esticada
          children: <Widget>[
            const Center(
              child: Text(
                "Faça seu login",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Digite seu e-mail"),
              style: const TextStyle(fontSize: 20),
              controller:
                  _controllerEmail, //para capturar o que o usuario digitou
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true, //para ocultar os digitos da senha
              decoration: const InputDecoration(labelText: "Digite sua senha"),
              style: const TextStyle(fontSize: 20),
              controller:
                  _controllerSenhaUsuario, //para capturar o que o usuario digitou
            ),

            SwitchListTile(
                title: const Text("Remember me?"),
                activeColor: const Color.fromRGBO(63, 147, 187, 1),
                value: _escolhaUsuarioRemember,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuarioRemember = valor;
                  });
                }),

//GestureDetector( - nao possui animações
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaPrincipal(),
                  ),
                );
                setState(
                  () {
                    _limparCampos;
                  },
                );
              },
              child: Ink(
                height: 34,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(63, 147, 187, 1),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                        spreadRadius: 0)
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Entrar",
                    textAlign: TextAlign.center,
                    //textAlignVertical: TextAlignVertical.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: '.SF UI Text',
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
