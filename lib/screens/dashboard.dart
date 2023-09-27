// import 'package:bybackproduct/widgets/gridViewComponent.dart';
import 'dart:html';

import 'package:bybackproduct/widgets/banner.dart';
import 'package:bybackproduct/widgets/bottomTab.dart';
import 'package:bybackproduct/widgets/buyBackInfoComponent.dart';
import 'package:bybackproduct/widgets/faq.dart';
import 'package:bybackproduct/widgets/footer.dart';
// import 'package:bybackproduct/widgets/cardViewComponent.dart';
import 'package:bybackproduct/widgets/gridViewComponent.dart';
import 'package:flutter/material.dart';
import 'package:bybackproduct/widgets/headerContent.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/rendering.dart';
// import 'package:bybackproduct/widgets/gridViewComponent.dart';

class ByBackDashboard extends StatelessWidget {
  const ByBackDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.99;
    return  LayoutBuilder(
      builder: (context, constraints) {
            // Use constraints to make responsive decisions
    double availableHeight = constraints.maxHeight;
    double availableWidth = constraints.maxWidth;
    
    // Define responsive properties
    double headerFontSize = availableWidth > 600 ? 40 : 30;
    double productFontSize = availableWidth > 600 ? 35 : 25;
    double categoryFontSize = availableWidth > 600 ? 15 : 12;
    
        return 
         Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HeaderComponent(),   //header component
                  SizedBox(
                    height: 50,
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
                    height: 10,
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
                    height: 100,
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
                    height: 50,
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
                    height: 50,
                  ), //bottom tab component
                  BuyBackInfoTab(),   //buy back info tab
            
                  SizedBox(
                    height: 50,
                  ),
            
                  Text(
                    faqTitle,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
            
                  SizedBox(
                    height: 10,
                  ),
                  FAQComponent(),   //faq component
            
                  SizedBox(
                    height: 50,
                  ),
                    bannerComponent(),     //custom footer
                    SizedBox(height: 40,),

                    FooterComponent()
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
