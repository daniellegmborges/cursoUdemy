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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  TextEditingController _controllerNomeCompleto = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();

  int? _escolhaUsuario;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Novo App Cadastro",
        ),
        backgroundColor: Colors.blue,
      ),


      body: Container(
        child: SingleChildScrollView( //para poder rolar/scroll a tela do app
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, //para o conteudo ocupar toda a tela de forma esticada
            
            
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text (
                  "Novo cadastro",
                ),
              ),
              

              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Digite seu nome completo"
                ),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
                controller: _controllerNomeCompleto, //para capturar o que o usuario digitou
              ),
              
              
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Digite seu e-mail"
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _controllerEmail, //para capturar o que o usuario digitou
              ),


              RadioListTile(
              title: Text("Masculino") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha){
                  setState(() {
                      _escolhaUsuario = escolha;
                  });
                }
              ),
                


              RadioListTile(
              title: Text("Feminino") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha){
                  setState(() {
                      _escolhaUsuario = escolha;
                  });
                }
              ),

             
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Salvar",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    onPressed: (){}
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}