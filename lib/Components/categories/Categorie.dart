import 'package:alura_challenge_mobile/Components/categories/Mobile.dart';
import 'package:flutter/material.dart';

class CategorieCard extends StatefulWidget {

  var categorie;

  CategorieCard({Key? key, categorie}) : super(key: key);

  @override
  State<CategorieCard> createState() => _CategorieCardState();
}

class _CategorieCardState extends State<CategorieCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: CategorieCard().categorie ? 2 : return MobileCard(0),
    //     child: if(CategorieCard().categorie = 2){return MobileCard(0);
    // }else{};

    );
  }
}
