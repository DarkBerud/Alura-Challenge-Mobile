import 'package:flutter/material.dart';

class DevopsCard extends StatelessWidget {
  const DevopsCard({Key? key}) : super(key: key);

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
          MaterialStateProperty.all(Colors.redAccent),
        ),
        onPressed: () {},
        child: const Text(
          ("Devops"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
