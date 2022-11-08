import 'dart:ffi';

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

  save(videoBox video) async {
    final Database bancoDeDados = await getDataBase();
    var itemExists = await find(video.url);
    Map<String, dynamic> videoMap = toMap(video);
    if (itemExists.isEmpty) {
      return await bancoDeDados.insert(_tablename, videoMap);
    } else {
      return await bancoDeDados.update(
        _tablename,
        videoMap,
      );
    }
  }

  Map<String,dynamic> toMap(videoBox video){
    final Map<String, dynamic> mapOfVideos = Map();
    mapOfVideos[_url] = video.url;
    mapOfVideos[_categorie] = video.categorie;
    mapOfVideos[_image] = video.image;
    return mapOfVideos;
  }

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

  delete(String url) async {
    final Database bancoDeDados = await getDataBase();
    return bancoDeDados.delete(_tablename, where: "$_url = ?", whereArgs: [url]);
  }
}
