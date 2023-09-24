// import 'package:bybackproduct/widgets/gridViewComponent.dart';
import 'package:bybackproduct/widgets/bottomTab.dart';
import 'package:bybackproduct/widgets/buyBackInfoComponent.dart';
import 'package:bybackproduct/widgets/faq.dart';
import 'package:bybackproduct/widgets/footer.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              HeaderComponent(),   //header component
              SizedBox(
                height: 40,
              ),
              Row(
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
              SizedBox(
                height: 30,
              ),
              Text(
                productInfo,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                productSubheading,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                productCategory,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

              // GridViewComponent()
              SizedBox(
                height: 25,
              ),

              GridViewComponent(), //gridview component
              // CardViewComponent(),

              SizedBox(
                height: 35,
              ),

              Text(
                productDetails,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 20,
              ),

              BottomTabComponent(),    //bottom tab component
              SizedBox(
                height: 30,
              ), //bottom tab component
              BuyBackInfoTab(),   //buy back info tab

              SizedBox(
                height: 20,
              ),

              Text(
                faq,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

              SizedBox(
                height: 10,
              ),
              FAQComponent(),   //faq component
              SizedBox(
                height: 20,
              ),
                customFooter(),     //custom footer
                SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}
