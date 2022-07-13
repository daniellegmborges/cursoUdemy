import 'package:flutter/material.dart';

class TelaGames extends StatefulWidget {
  const TelaGames({Key? key}) : super(key: key);

  @override
  State<TelaGames> createState() => _TelaGamesState();
}

class _TelaGamesState extends State<TelaGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jogos Favoritos"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Container(),
    );
  }
}
