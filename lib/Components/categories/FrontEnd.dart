import 'package:flutter/material.dart';

class FrontEndCard extends StatelessWidget {
  const FrontEndCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape:
          MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              )),
          backgroundColor:
          MaterialStateProperty.all(Colors.blueAccent),
        ),
        // style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,),
        onPressed: () {},
        child: Text(
          ("Front End"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
