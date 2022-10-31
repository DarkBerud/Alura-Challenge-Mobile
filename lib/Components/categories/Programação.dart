import 'package:flutter/material.dart';

class ProgramacaoCard extends StatelessWidget {
  const ProgramacaoCard({Key? key}) : super(key: key);

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
          MaterialStateProperty.all(Colors.green),
        ),
        onPressed: () {},
        child: const Text(
          ("Programação"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
