import 'package:agripote/model.dart/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import 'menu.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'À propos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {
                  // Ajoutez ici le code pour ouvrir la page Facebook de votre entreprise
                },
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.twitter),
                onPressed: () {
                  // Ajoutez ici le code pour ouvrir la page Twitter de votre entreprise
                },
              ),
              IconButton(
                icon: Icon((FontAwesomeIcons.instagram)),
                onPressed: () {
                  // Ajoutez ici le code pour ouvrir la page Instagram de votre entreprise
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Newsletter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Entrez votre adresse e-mail',
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            
            onPressed: () {
              // Ajoutez ici le code pour s'abonner à la newsletter
            },
            child: Text('S\'abonner'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          )),
      child: SvgPicture.asset(icon),
    );
  }
}
