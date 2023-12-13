import 'package:agripote/screens/home/components/about_services.dart';
import 'package:agripote/screens/home/components/services_card.dart';
import 'package:flutter/material.dart';
import 'package:agripote/model.dart/responsive.dart';



import '../../../constants.dart';
import 'email_banner.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(kPadding),
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Column(
        children: const [
          AboutSection(),
          Padding(padding: EdgeInsets.all(20.0)),
          Text(
            "QUI SOMMES NOUS? ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: kSecondaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Agripote est une pmateforme en ligne qui offre une gamme compléte de services et de fonctionnalitÃ©s pour aider les agriculteurs et les producteurs locaux à améliorer leur production, à atteindre de nouveaux marchés et à  obtenir des fonds pour leurs projets de développement. ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                fontWeight: FontWeight.w600),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          ServicesCard(),
          SizedBox(
            height: 10,
          ),
          Text(
            " ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          //now we create model of our product images
          // we are using gridview inside column and scrollview widget thats why we are facing error
          // use shrinkwrap and ScrollPhysics widget

          SizedBox(
            height: 40,
          ),
          EmailBanner(),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (BuildContext context, int index) {},
    );
  }
}
