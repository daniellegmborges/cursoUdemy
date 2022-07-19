import 'package:flutter/material.dart';

class AppAula101 extends StatelessWidget {
  const AppAula101({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FloatingActionButton"),
        ),
        body: const Text("Conteudo"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          elevation: 6,
          icon: Icon(Icons.add_shopping_cart),
          label: Text("Adicionar"),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
