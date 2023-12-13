import 'package:agripote/model.dart/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'banner_section.dart';
import 'header.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: kPrimaryColor,
    
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            constraints: BoxConstraints(),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 0,
                ),
                Responsive.isDesktop(context) ? BannerSection() : MobBanner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}  
