import 'package:flutter/material.dart';
import 'dart:math';

class AppAula69 extends StatelessWidget {
  const AppAula69({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
    home: Jogo(),
    debugShowCheckedModeBanner: false,
  );
}
}

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}


class _JogoState extends State<Jogo> {

    var _imagemApp = AssetImage("images/jokenPo_padrao.png");
    var _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada(String escolhaUsuario){

    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print("Escolha do App: " + escolhaApp);
    print("Escolha do usuario: " + escolhaUsuario);


    //Exibição da imagem escolhida pelo App
    switch( escolhaApp ){
      case "pedra" :
        setState(() {
          this._imagemApp = AssetImage("images/jokenPo_pedra.png");
        });
        break;
      case "papel" :
        setState(() {
          this._imagemApp = AssetImage("images/jokenPo_papel.png");
        });
        break;
      case "tesoura" :
        setState(() {
          this._imagemApp = AssetImage("images/jokenPo_tesoura.png");
        });
        break;
    }


    //Validação do ganhador
    //Usuario Ganhador
    if(
        (escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra")
    ){
      setState(() {
        this._mensagem = "Parabéns!!! Você ganhou :)";
      });
    //App Ganhador
    }else if(
        (escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
        (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
        (escolhaApp == "papel" && escolhaUsuario == "pedra")
    ){
      setState(() {
        this._mensagem = "Você perdeu :(";
      });
    //Empate
    }else{
      setState(() {
        this._mensagem = "Empatamos ;)";
      });
    }

  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
        centerTitle: true,
        backgroundColor: Colors.amber[400],
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //1) text
          //2) imagem
          //3) text resultado
          //4) Linha 3 imagens
          
          //para criar um texto com espaçamento dentro da coluna
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(250, 180, 90, 120)
              ),
            ),
          ),
        
        //imagem do aplicativo
        Image(image: this._imagemApp),

        
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 16),
            child: Text(
          //mensagem de escolha do app "Escolha uma opção abaixo"
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 180, 90, 120)
              ),
            ),
          ),

          // para criar uma linha/row com imagens
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            

            children: <Widget>[
          
          //para criar uma ação/gesto para o botão
              GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset("images/jokenPo_pedra.png", height: 100,),
              ),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("papel"),
                  child: Image.asset("images/jokenPo_papel.png", height: 100,),
              ),
              GestureDetector(
                  onTap: () => _opcaoSelecionada("tesoura"),
                  child: Image.asset("images/jokenPo_tesoura.png", height: 100,),
              ),
               
            ],
          )
        ],
      ),
    );
  }
}
