import 'package:flutter/material.dart';

/* Stateless -> Widgets que não podem ser alterados (contantes)
  Stateful -> Widgets que podem ser alterados (variáveis) */

class AppAula64 extends StatelessWidget {
  const AppAula64({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  );
}
}

/* var _texto = "Jamilton Damasceno";
var _texto = "Curso Flutter";*/


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _texto = "Jamilton Damasceno";

  @override
  Widget build(BuildContext context) {

    print("Build chamado");

    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                
                setState(() {
                  _texto = "Curso Flutter";  
                }
                );
              },
              child: Text("Clique aqui"),
            ),
            Text("Nome: $_texto ")
          ],
        ),
      ),
    );
  }
}