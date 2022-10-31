import 'package:flutter/material.dart';

class UxeDesignCard extends StatelessWidget {
  const UxeDesignCard({Key? key}) : super(key: key);

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
          MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: () {},
        child: const Text(
          ("UX e Design"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
