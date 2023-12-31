import 'package:agripote/constants.dart';
import 'package:agripote/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upside extends StatelessWidget {
  const Upside({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2,
          color: kThirdColor,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset(
              imgUrl,
              alignment: Alignment.topCenter,
              scale: 8,
            ),
          ),
        ),
        iconBackButton(context)
      ],
    );
  }
}

iconBackButton(BuildContext context) {
  return IconButton(
    color: Colors.white,
    iconSize: 28,
    icon: const Icon(CupertinoIcons.arrow_left),
    onPressed: () {
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder:(_) => const HomeScreen()));
    },
  );
}