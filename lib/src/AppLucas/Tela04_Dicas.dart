import 'package:flutter/material.dart';

class TelaDicas extends StatefulWidget {
  const TelaDicas({Key? key}) : super(key: key);

  @override
  State<TelaDicas> createState() => _TelaDicasState();
}

class _TelaDicasState extends State<TelaDicas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dicas"),
        backgroundColor: Colors.green[700],
      ),
      body: Container(),
    );
  }
}
