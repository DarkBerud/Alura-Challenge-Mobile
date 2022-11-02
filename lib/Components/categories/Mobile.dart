import 'package:alura_challenge_mobile/Components/categories/Categorie.dart';
import 'package:flutter/material.dart';

class MobileCard extends StatelessWidget {

  final int option;
  const MobileCard(this.option, {Key? key}) : super(key: key);

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
        onPressed: () {
          if(option == 0){

          }else{
            CategorieCard().categorie = "mobile";
            print(CategorieCard().categorie);
            Navigator.pop(context);
          }
        },
        child: const Text(
          ("Mobile"),
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
