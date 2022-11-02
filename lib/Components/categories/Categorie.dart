import 'package:alura_challenge_mobile/Components/categories/Mobile.dart';
import 'package:alura_challenge_mobile/Components/categoriesList.dart';
import 'package:flutter/material.dart';


class CategorieCard extends StatefulWidget {

  var categorie;

  CategorieCard({Key? key,  categorie}) : super(key: key);

  @override
  State<CategorieCard> createState() => _CategorieCardState();
}

class _CategorieCardState extends State<CategorieCard> {

  @override
  Widget build(BuildContext context) {
    Widget? child;

    if (CategorieCard().categorie == 2){
      child = MobileCard(0);
    } else{
      Container();
    }
    return new Container(child: child);
  }
}
