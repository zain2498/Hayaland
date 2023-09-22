// import 'package:bybackproduct/widgets/gridViewComponent.dart';
import 'package:bybackproduct/widgets/bottomTab.dart';
import 'package:bybackproduct/widgets/buyBackInfoComponent.dart';
import 'package:bybackproduct/widgets/faq.dart';
// import 'package:bybackproduct/widgets/cardViewComponent.dart';
import 'package:bybackproduct/widgets/gridViewComponent.dart';
import 'package:flutter/material.dart';
import 'package:bybackproduct/widgets/headerContent.dart';
import 'package:bybackproduct/constants.dart';
// import 'package:bybackproduct/widgets/gridViewComponent.dart';

class ByBackDashboard extends StatelessWidget {
  const ByBackDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
             const HeaderComponent(),
              const SizedBox(
                height: 40,
              ),
             const  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(brandLogo),
                    width: 35,
                  ),
                  Text(
                    byBack,
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
             const Text(
                productInfo,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
             const  Text(
                productSubheading,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
             const SizedBox(
                height: 25,
              ),
             const Text(
                productCategory,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

              // GridViewComponent()
             const SizedBox(
                height: 25,
              ),

             const GridViewComponent(), //gridview component
              // CardViewComponent(),

              const SizedBox(
                height: 35,
              ),

              const Text(
                productDetails,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),

             const SizedBox(
                height: 20,
              ),

             const BottomTabComponent(),
             const SizedBox(
                height: 30,
              ), //bottom tab component
              const BuyBackInfoTab(),
             
             const SizedBox(
                height: 10,
              ),

             const Text(
                "FAQ",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

              const SizedBox(
                height: 10,
              ),
              FAQComponent()
            ],
          ),
        ),
      ),
    );
  }
}
