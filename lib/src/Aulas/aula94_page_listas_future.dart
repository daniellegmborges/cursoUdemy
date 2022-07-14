import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class AppAula94 extends StatelessWidget {
  const AppAula94({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _urlBase = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> _recuperarPostagens() async {
    http.Response response = await http.get(Uri.parse(_urlBase));
    var dadosJson = json.decode(response.body);

    List<Post> postagens = []; //[] cria uma lista
    for (var post in dadosJson) {
      print("post: " + post["title"]);
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add(p);
    }
    return postagens;
    //print( postagens.toString() );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço avançado"),
      ),
      body: FutureBuilder<List<Post>>(
        future: _recuperarPostagens(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
            case ConnectionState.done:
              if (snapshot.hasError) {
                print("lista: Erro ao carregar ");
              } else {
                print("lista: carregou!! ");
                if (snapshot.data == null) {
                  return const Text("Nenhum dado encontrado");
                }

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    List<Post> lista = snapshot.data!;
                    Post post = lista[index];

                    return ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.id.toString()),
                    );
                  },
                );
              }
              return SizedBox();
          }
        },
      ),
    );
  }
}

class Post {
  int _userId;
  int _id;
  String _title;
  String _body;

  Post(this._userId, this._id, this._title, this._body);

  String get body => _body;

  set body(String value) {
    _body = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get userId => _userId;

  set userId(int value) {
    _userId = value;
  }
}
