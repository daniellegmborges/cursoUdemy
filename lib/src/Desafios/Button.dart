import 'package:flutter/material.dart';
import 'package:flutter/src/material/material_state.dart';

class AppDesafio extends StatelessWidget {
  const AppDesafio({Key? key}) : super(key: key);

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
  final Text title;
  final ButtonStyle estilo;

  const CustomButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.title,
      required this.estilo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: title,
      style: estilo,
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
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
            //const SizedBox(height: 10),

//GestureDetector( - nao possui animações
            InkWell(
              onTap: () {
                setState(
                  () {
                    _mensagem = "Feito!";
                  },
                );
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
                  ],
                ),
                child: const Center(
                  child: Text(
                    "Salvar 2",
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

            //Teste do primeiro metodo com classe
            CustomButtonWidget(
                onPressed: () {},
                title: const Text(
                  "Salvar 3",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                estilo: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                )
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all(Colors.purple),
                // ),
                ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                _mensagem ?? "",
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//adicionar sombra, borda e alterar formato do texto
