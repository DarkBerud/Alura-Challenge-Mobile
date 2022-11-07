import 'package:alura_challenge_mobile/Components/videoBox.dart';
import 'package:alura_challenge_mobile/data/database.dart';
import 'package:sqflite/sqflite.dart';

class VideoDao {
  static const String tablesql = "CREATE TABLE $_tablename("
      "$_url TEXT, "
      "$_categorie TEXT, "
      "$_image TEXT)";

  static const String _tablename = "videoTable";
  static const String _url = "url";
  static const String _categorie = "categorie";
  static const String _image = "image";

  save(videoBox video) async {}

  Future<List<videoBox>> findAll() async {
    final Database bancoDeDados = await getDataBase();
    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tablename);
    return toList(result);
  }

  List<videoBox> toList(List<Map<String, dynamic>> mapOfVideos) {
    final List<videoBox> videos = [];
    for (Map<String, dynamic> linha in mapOfVideos) {
      final videoBox video =
          videoBox(linha[_url], linha[_categorie], linha[_image]);
      videos.add(video);
    }
    return videos;
  }

  Future<List<videoBox>> find(String categorie) async {
    final Database bancoDeDados = await getDataBase();
    final List<Map<String, dynamic>> result = await bancoDeDados
        .query(_tablename, where: "$_categorie = ?", whereArgs: [categorie]);
    return toList(result);
  }

  delete(String url) async {}
}
