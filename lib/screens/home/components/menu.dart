import 'package:agripote/screens/home/home_screen.dart';
import 'package:agripote/screens/market/market_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderMenu(
          press: () {
            Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen ()));
          },
          title: "Accueil",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Services",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MarketScreen ()));
          },
          title: "Marché",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Finacement",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Contacts",
        ),
      ],
    );
  }
}

class MobFooterMenu extends StatelessWidget {
  const MobFooterMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        HeaderMenu(
          press: () {
            Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen ()));
          },
          title: "Accueil",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Services",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {
            Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MarketScreen ()));
          },
          title: "Marché",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Financement",
        ),
        SizedBox(
          width: kPadding,
        ),
        HeaderMenu(
          press: () {},
          title: "Contacts",
        ),
      ],
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}

class MobMenu extends StatefulWidget {
  const MobMenu({Key? key}) : super(key: key);

  @override
  _MobMenuState createState() => _MobMenuState();
}

class _MobMenuState extends State<MobMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderMenu(
            press: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen ()));
            },
            title: "Accueil",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Services",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => MarketScreen ()));
            },
            title: "Marché",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Financement",
          ),
          SizedBox(
            height: kPadding,
          ),
          HeaderMenu(
            press: () {},
            title: "Contacts",
          ),
        ],
      ),
    );
  }
}
