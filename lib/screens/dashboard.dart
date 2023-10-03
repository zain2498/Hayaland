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
          body: Column(
            children: [
              const HeaderComponent(),   
              Expanded(
                child: SingleChildScrollView(
                  // controller: ,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //header component
                       const  SizedBox(
                          height: 50,
                        ),
                      const   Row(
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
                      const   SizedBox(
                          height: 10,
                        ),
                       const Text(
                          productInfo,
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                       const Text(
                          productSubheading,
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                       const SizedBox(
                          height: 100,
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
                  
                      const  GridViewComponent(), //gridview component
                        // CardViewComponent(),
                  
                       const  SizedBox(
                          height: 50,
                        ),
                  
                      const   Text(
                          productDetails,
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                  
                       const  SizedBox(
                          height: 20,
                        ),
                  
                      const   BottomTabComponent(),    //bottom tab component
                  
                       const  SizedBox(
                          height: 50,
                        ), //bottom tab component
                       const  BuyBackInfoTab(),   //buy back info tab
                  
                      const   SizedBox(
                          height: 50,
                        ),
                  
                      const   Text(
                          faqTitle,
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                  
                      const   SizedBox(
                          height: 10,
                        ),
                      const   FAQComponent(),   //faq component
                  
                      const   SizedBox(
                          height: 50,
                        ),
                        const  bannerComponent(),     //custom footer
                        const   SizedBox(height: 40,),
              
                          FooterComponent()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
