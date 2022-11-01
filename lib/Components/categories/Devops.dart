import 'package:flutter/material.dart';

class DevopsCard extends StatelessWidget {

  final int option;
  const DevopsCard(this.option, {Key? key}) : super(key: key);

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
        onPressed: () {
          if(option == 0){

          }else{
            Navigator.pop(context);
          }
        },
        child: const Text(
          ("Devops"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
