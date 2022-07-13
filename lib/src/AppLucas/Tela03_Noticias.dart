import 'package:flutter/material.dart';

class TelaNoticias extends StatefulWidget {
  const TelaNoticias({Key? key}) : super(key: key);

  @override
  State<TelaNoticias> createState() => _TelaNoticiasState();
}

class _TelaNoticiasState extends State<TelaNoticias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Noticias"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(),
    );
  }
}
