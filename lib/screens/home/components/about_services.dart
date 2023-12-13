import 'package:agripote/constants.dart';
import 'package:agripote/screens/login/screens/login_screen.dart';
import 'package:agripote/screens/login/screens/signup_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        //it will adjust its size according to screeen
        const AutoSizeText(
          "Agripote",
          maxLines: 1,
          style: TextStyle(
              color: kSecondaryColor,
              fontSize: 56,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "C'est une plateforme web, mobile et SMS (USSD) connectant les agriculteurs et producteurs locaux aux "
          "acheteurs potentiels et consommateurs finaux sur un marché numérique et permettant le "
          "financement participatif des projets dans le domaine agricole et agro-alimentaire."
          "Elle met en relation les agriculteurs et les acheteurs pour faciliter la vente de produits agricoles.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w600),
        ),

        const SizedBox(
          height: 20,
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                height: 55,
                color: kSecondaryColor,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: const AutoSizeText(
                  "Se connecter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "or",
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  child: const AutoSizeText(
                    "Creer compte",
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: kSecondaryColor)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
