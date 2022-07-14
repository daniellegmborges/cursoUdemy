import 'package:flutter/material.dart';

class AppAula78 extends StatelessWidget {
  const AppAula78({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _abrirEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaEmpresa()));
  }

  void _abrirClientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaClientes()));
  }

  void _abrirServicos() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaServicos()));
  }

  void _abrirContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        //padding: EdgeInsets.all(16),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Image.asset("images/ATMConsultoria/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child:
                        Image.asset("images/ATMConsultoria/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirServicos,
                    child:
                        Image.asset("images/ATMConsultoria/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirClientes,
                    child:
                        Image.asset("images/ATMConsultoria/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child:
                        Image.asset("images/ATMConsultoria/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Construção da tela empresa
class TelaEmpresa extends StatefulWidget {
  const TelaEmpresa({Key? key}) : super(key: key);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("A Empresa"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Image.asset("images/ATMConsultoria/detalhe_empresa.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a empresa",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Digite a descrição da sua empresa aqui",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Construção da tela cliente
class TelaClientes extends StatefulWidget {
  const TelaClientes({Key? key}) : super(key: key);

  @override
  State<TelaClientes> createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text("Cliente"),
          backgroundColor: Color.fromARGB(255, 168, 184, 50)),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Image.asset("images/ATMConsultoria/detalhe_cliente.png"),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre os nossos clientes",
                      style: TextStyle(
                          color: Color.fromRGBO(185, 201, 65, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Image.asset("images/ATMConsultoria/cliente1.png"),
              Text(
                "Digite a descrição do seu cliente aqui",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              SizedBox(height: 15),
              Image.asset("images/ATMConsultoria/cliente2.png"),
              Text(
                "Digite a descrição do seu cliente aqui",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Construção da tela serviços
class TelaServicos extends StatefulWidget {
  const TelaServicos({Key? key}) : super(key: key);

  @override
  State<TelaServicos> createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Os Serviços"),
        backgroundColor: Color.fromARGB(255, 23, 179, 171),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Image.asset("images/ATMConsultoria/detalhe_servico.png"),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos serviços",
                      style: TextStyle(
                          color: Color.fromRGBO(25, 209, 200, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Lavagem de cortinas",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              Text(
                "Lavagem de persianas",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              Text(
                "Lavagem de tapetes",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              Text(
                "Entre outros",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Construção da tela contato
class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Contatos"),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  Image.asset("images/ATMConsultoria/detalhe_contato.png"),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos Contatos",
                      style: TextStyle(
                          color: Color.fromRGBO(97, 189, 140, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Email: empresa@empresa.com.br",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
              Text(
                "Telefone: (21) 3576-XXXX",
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
