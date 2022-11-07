import 'package:alura_challenge_mobile/data/video_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDataBase() async {
  final String path = join(await getDatabasesPath(), "video.db");
  return openDatabase(path, onCreate: (db, version) {
    db.execute(VideoDao.tablesql);
  }, version: 1,);
}
