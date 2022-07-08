import 'package:flutter/material.dart';

class AppAula74 extends StatelessWidget {
  const AppAula74({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

//classe do botao salvar, com todos os requerimentos
class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed; //nao funcionou sem, mas nao entendi
  final String title;

  CustomButtonWidget({Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// class BotaoSalvar extends StatelessWidget {
//   const BotaoSalvar({Key? key}) : super(key: key);

//   String nomeCartao = "";

//   @override
//   Widget build(BuildContext context) {

//   }
// }

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
      "Obrigada por participar";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Novo App Cadastro",
        ),
        backgroundColor: Colors.purple[900],
      ),
      body: SingleChildScrollView(
        //para poder rolar/scroll a tela do app
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //para o conteudo ocupar toda a tela de forma esticada

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
                activeColor: Colors.purple[400],
                value: _escolhaUsuarioRemember,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuarioRemember = valor;
                  });
                }),
            RadioListTile(
                title: const Text("Masculino"),
                value: 1,
                activeColor: Colors.purple[300],
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            RadioListTile(
                title: const Text("Feminino"),
                value: 2,
                activeColor: Colors.purple[300],
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            Slider(
                value: valorIdade,
                max: 100,
                label: labelIdade.toString(),
                divisions: 10,
                activeColor: Colors.purple[300],
                inactiveColor: Colors.black26,
                onChanged: (double novoValorIdade) {
                  setState(() {
                    valorIdade = novoValorIdade;
                    labelIdade = novoValorIdade.toString();
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                // style: ButtonStyle(

                // ),
                // color: Colors.purple[900],
                // textColor: Colors.white,
                // padding: const EdgeInsets.all(15),

                child: const Text(
                  "Salvar",
                  style: TextStyle(fontSize: 20),
                ),
                //onPressed: () {}),

                onPressed: () {
                  _limparCampos();
                  _mensagem = "Obrigada";
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _mensagem ?? "",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            CustomButtonWidget(
              onPressed: () {},
              title: "Salvar",
              // style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(Colors
              //         .blue) //definicao de cor para todos os estados do botao: erro, clicado, etc
            )
          ],
        ),
      ),
    );
  }
}
