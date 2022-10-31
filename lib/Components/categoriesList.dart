import 'package:alura_challenge_mobile/Components/categories/DataScience.dart';
import 'package:alura_challenge_mobile/Components/categories/Devops.dart';
import 'package:alura_challenge_mobile/Components/categories/FrontEnd.dart';
import 'package:alura_challenge_mobile/Components/categories/Mobile.dart';
import 'package:alura_challenge_mobile/Components/categories/UXeDesign.dart';
import 'package:flutter/material.dart';

import 'categories/Programação.dart';

class categories extends StatefulWidget {
  const categories({Key? key}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
        ),
        child: Row(
          children: [
            FrontEndCard(),
            ProgramacaoCard(),
            MobileCard(),
            DataScienceCard(),
            DevopsCard(),
            UxeDesignCard(),
          ],
        ),
      ),
    );
  }
}
