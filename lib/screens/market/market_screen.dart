import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:agripote/constants.dart';
import 'package:agripote/model.dart/product_model.dart';

import '../home/components/footer.dart';
import '../home/components/header.dart';
import '../home/components/header_container.dart';
import '../home/components/menu.dart';
import 'card.dart';


class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              child: Center(
                child: Image.asset("assets/images/logo.png")
                ),
              ),
            MobMenu()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Header(),
              //header
              Image.asset('assets/images/marche.png'),
              //body
              CardContainer(),
            
              //footer
              SizedBox(
                height: 80,
              ),
              Footer(),
              //now we make our website responsive
            ],
          ),
        ),
      ),
    );
  }
}