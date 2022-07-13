import 'package:flutter/material.dart';

class TelaMedicos extends StatefulWidget {
  const TelaMedicos({Key? key}) : super(key: key);

  @override
  State<TelaMedicos> createState() => _TelaMedicosState();
}

class _TelaMedicosState extends State<TelaMedicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Médicos Indicados"),
        backgroundColor: Colors.blue[500],
      ),
      body: Container(),
    );
  }
}
