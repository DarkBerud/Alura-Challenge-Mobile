import 'package:alura_challenge_mobile/Components/banner.dart';
import 'package:alura_challenge_mobile/Components/categoriesList.dart';
import 'package:alura_challenge_mobile/Components/videoBox.dart';
import 'package:alura_challenge_mobile/screen/form_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
            child: Center(
          child: Text(
            "MOBFLIX",
            textAlign: TextAlign.center,
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          banner(),
          categories(),
          videoBox("url1", "categoria1", "imagem1"),
          videoBox("url2", "categoria2", "imagem2"),
        ]),
      ),
      floatingActionButton: FloatingActionButton( onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (contextNew) => FormScreen(),
          ),
        );
      }, child: Icon(Icons.add, size: 48,),backgroundColor: Colors.deepPurpleAccent,),
    );
  }
}
