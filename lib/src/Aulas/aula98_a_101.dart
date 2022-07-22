import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppAula98 extends StatelessWidget {
  const AppAula98({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _textoSalvo = "Nada salvo";
  TextEditingController _controllerCampo = TextEditingController();

  _salvar() async {
    String valorDigitado = _controllerCampo.text;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nome", valorDigitado);

    print("operacao (salvar): $valorDigitado");
  }

  _recuperar() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _textoSalvo = prefs.getString("nome") ?? "Sem valor";
    });

    print("operacao (recuperar): $_textoSalvo");
  }

  _remover() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("nome");

    print("operacao (remover):");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manipulação de dados"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 6,
        icon: const Icon(Icons.add_shopping_cart),
        label: const Text("Adicionar"),
        onPressed: () {},
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _textoSalvo,
              style: const TextStyle(fontSize: 20),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: "Digite algo"),
              controller: _controllerCampo,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: _salvar,
                  child: const Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: _recuperar,
                  child: const Text(
                    "Recuperar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: _remover,
                  child: const Text(
                    "Remover",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
