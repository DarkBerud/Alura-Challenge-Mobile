import 'package:flutter/material.dart';

class MobileCard extends StatelessWidget {
  const MobileCard({Key? key}) : super(key: key);

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
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        onPressed: () {},
        child: const Text(
          ("Mobile"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
