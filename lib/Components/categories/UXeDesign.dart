import 'package:flutter/material.dart';

class UxeDesignCard extends StatelessWidget {

  final int option;
  const UxeDesignCard(this.option, {Key? key}) : super(key: key);

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
        onPressed: () {
          if(option == 0){

          }else{
            Navigator.pop(context);
          }
        },
        child: const Text(
          ("UX e Design"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
