import 'package:alura_challenge_mobile/Components/categories/Categorie.dart';
import 'package:alura_challenge_mobile/Components/categories/DataScience.dart';
import 'package:alura_challenge_mobile/Components/categories/Devops.dart';
import 'package:alura_challenge_mobile/Components/categories/FrontEnd.dart';
import 'package:alura_challenge_mobile/Components/categories/Programa%C3%A7%C3%A3o.dart';
import 'package:alura_challenge_mobile/Components/categories/UXeDesign.dart';
import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';
import '../Components/categories/Mobile.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController imageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool valueValidator(String? value) {
    if (value != null && value.isEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Cadastre um vídeo",
              style: TextStyle(fontSize: 32),
              textAlign: TextAlign.center,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                  child: Text(
                    "URL:",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                TextFormField(
                    onChanged: (text) {
                      setState(() {});
                    },
                    validator: (value) {
                      if (valueValidator(value)) {
                        return "Insira um URL do Youtube!";
                      }
                      return null;
                    },
                    controller: imageController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Ex: N2h5A0oAzsk",
                      hintStyle: TextStyle(color: Color(0xFFB0B0B0)),
                      fillColor: Color(0xFF275FA3),
                      filled: true,
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0, top: 32.0),
                  child: Text(
                    "Categoria:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 345,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF275FA3)),
                    ),
                    onPressed: () {
                      showDialog(context: context, builder: (context) => AlertDialog(
                        title: Text("Escolha uma categoria"),
                         content: SizedBox(
                           height: 400,
                           width: 50,
                           child: ListView(
                             children: [
                               FrontEndCard(1),
                               ProgramacaoCard(1),
                               MobileCard(1),
                               DataScienceCard(1),
                               DevopsCard(1),
                               UxeDesignCard(1),
                             ],
                           ),
                         ),
                      ));
                    },
                    child: Text(
                      "Mobile, Front-End...                                                             ",
                      style: TextStyle(
                        color: Color(0xFFB0B0B0),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          "Preview",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ),
                      Container(
                        child: CategorieCard(),
                      ),
                      Container(
                        height: 194,
                        width: 345,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            YoutubeThumbnail(youtubeId: imageController.text)
                                .mq(),
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return Image.asset("assets/images/nophoto.png");
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: SizedBox(
                            height: 52,
                            width: 345,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blueAccent),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Cadastrar",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
