import 'package:alura_challenge_mobile/Components/categories/Mobile.dart';
import 'package:flutter/material.dart';

class videoBox extends StatefulWidget {
  const videoBox({Key? key}) : super(key: key);

  @override
  State<videoBox> createState() => _videoBoxState();
}

class _videoBoxState extends State<videoBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 600,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MobileCard(),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.blueGrey,
                    width: 335,
                    height: 180,
                  ))
            ]),
      ),
    );
  }
}
