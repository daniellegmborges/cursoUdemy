import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:test1/src/Aulas/aula94_a_105_youtube/model/video_youtube.dart';

const CHAVE_YOUTUBE_API =
    "AIzaSyDtoyEVv-BLUe-jG7T8u5zyMnGqF8jNRuA"; //chave da API criada na parte de credenciais
const ID_CANAL =
    "UCghJZXv-Cg90zgdeTZCt_-A"; //buscado no html do youtube, pois o canal possui url especificada
const URL_BASE =
    "https://www.googleapis.com/youtube/v3/"; //solicitacao http, retirado de onde colocamos os filtros da requisicao

class Api {
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(
      Uri.parse(URL_BASE +
          "search"
              "?part=snippet"
              "&type=video"
              "&maxResults=20"
              "&order=date"
              "&key=$CHAVE_YOUTUBE_API"
              "&channelId=$ID_CANAL"
              "&q=$pesquisa"),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();

      return videos;
    } else {}
  }
}
