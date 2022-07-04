import 'package:flutter/material.dart';

class AppAula63 extends StatelessWidget {
  const AppAula63({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Frases do dia'),
          centerTitle: true,
          //style
          backgroundColor: Colors.blueGrey[900],
        ),
        body: 
          const Center(
            child: Image(
              image: AssetImage('images/diamond.png'),
          ),
        ),
          bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue[200],
          child: Padding(
            padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              const Text ('Texto 1'),
            ],
          ),
          ),
        ),
      ),
      );
  }
}
