import 'package:flutter/material.dart';

class TelaVideos extends StatefulWidget {
  const TelaVideos({Key? key}) : super(key: key);

  @override
  State<TelaVideos> createState() => _TelaVideosState();
}

class _TelaVideosState extends State<TelaVideos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vídeos Indicados"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Container(),
    );
  }
}
