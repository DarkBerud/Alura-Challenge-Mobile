import 'package:alura_challenge_mobile/Components/banner.dart';
import 'package:alura_challenge_mobile/Components/categories.dart';
import 'package:alura_challenge_mobile/Components/videoBox.dart';
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
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          banner(),
          categories(),
          videoBox(),
          videoBox(),
        ]),
      ),
      floatingActionButton: FloatingActionButton( onPressed: (){}, child: Icon(Icons.add, size: 48,),backgroundColor: Colors.deepPurpleAccent,),
    );
  }
}
