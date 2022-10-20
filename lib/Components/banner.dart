import 'package:flutter/material.dart';

class banner extends StatelessWidget {
  const banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
