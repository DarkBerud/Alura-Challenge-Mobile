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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              height: 136,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        ("Assista agora"),
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Row(
                    children: [
                      Container(
                        color: Colors.green,
                        height: 80,
                      ),
                      Container(
                        color: Colors.red,
                        height: 80,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
