// import 'package:bybackproduct/colors.dart';
// import 'package:bybackproduct/constants.dart';
// import 'package:bybackproduct/font.dart';
// import 'package:flutter/material.dart';

// class BuyBackInfoTab extends StatefulWidget {
//   const BuyBackInfoTab({super.key});

//   @override
//   State<BuyBackInfoTab> createState() => _BuyBackInfoTabState();
// }

// class _BuyBackInfoTabState extends State<BuyBackInfoTab> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width * 0.7;
//     double height = MediaQuery.of(context).size.height * 0.70;

//     return Center(
//       child: Container(
//         width: width,
//         height: height,
//         // height: height,
//         margin: const EdgeInsets.symmetric(vertical: 8.0),
//         decoration: BoxDecoration(
//           color: silver,
//           border: Border.all(
//             color: silver,
//             width: 1.0
    
//           ),
//           borderRadius: BorderRadius.circular(20)
//         ),
//         child: infoTab(width, height),
//       ),
//     );
//   }

//   Widget infoTab(width, height) {
//     return Column(
//       //:mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         //child number 1
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             rowWidget(backMarketTrade, backMarketTradeAns,width),
//             Image.asset(iphone,height: height*0.02, width: width*0.02, fit: BoxFit.contain),
//           ],
//         ),

//         //child number 2
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Image.asset(iphone,height: height*0.02, width: width*0.02, fit: BoxFit.contain),
//             rowWidget(tradeInWork, tradeInWorkAns)
//           ],
//         ),

//         //child number 3
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             rowWidget(offer,offerAns),
//             Image.asset(iphone,height: height*0.02, width: width*0.02,fit:BoxFit.contain),
//           ],
//         ),
//       ],
//     );
//   }
// }

// //dynamic widget for all the three campaigns
// Widget rowWidget(txt1,txt2,width){
//   return Container(
//     width: width*0.05,
//     child: Expanded(
//            // Wrap with Expanded to distribute space
//            child: Column(
//              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: [
//                Text(
//                  txt1,
//                  style: const TextStyle(
//                    fontSize: 15,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black,
//                  ),
//                  textAlign: TextAlign.justify,
//                ),
//                const SizedBox(
//                  height: 5,
//                ),
//                Container(
//                 margin: const EdgeInsets.only(left: 18.0),
//                 width: 350,
//                  child: Padding(
//                    padding:  const EdgeInsets.only(left: 8.0),
//                    child: Text(
//                      txt2,
//                      style: const TextStyle(
//                        fontSize: 12,
//                        fontFamily: timesNewRoman,
//                        color: Colors.black,
//                      ),
//                      textAlign: TextAlign.justify,
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//   );
// }

import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:bybackproduct/font.dart';
import 'package:flutter/material.dart';

class BuyBackInfoTab extends StatefulWidget {
  const BuyBackInfoTab({super.key});

  @override
  State<BuyBackInfoTab> createState() => _BuyBackInfoTabState();
}

class _BuyBackInfoTabState extends State<BuyBackInfoTab> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth = constraints.maxWidth * 0.77;

        return Center(
          child: Column(
            children: [
             const SizedBox(
                height: 20, // Add spacing at the top
              ),
              Container(
                width: containerWidth,
                decoration: BoxDecoration(
                  color: silver,
                  border: Border.all(
                    color: silver,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: infoTab(),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget infoTab() {
    return Padding(
      padding: const EdgeInsets.all(55.0),
      child: Column(
        children: [
          // Child number 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              rowWidget(backMarketTrade, backMarketTradeAns),
              Image.asset(iphone, height: 150, width: 150, fit: BoxFit.contain),
            ],
          ),
    
          // Child number 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(iphone, height: 150, width: 150, fit: BoxFit.contain),
              rowWidget(tradeInWork, tradeInWorkAns),
            ],
          ),
    
          // Child number 3 (Uncomment if needed)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              rowWidget(offer, offerAns),
              Image.asset(iphone, height: 150, width: 150, fit: BoxFit.contain),
            ],
          ),
        ],
      ),
    );
  }

  Widget rowWidget(txt1, txt2) {
    return Container(
      width: 250,
      child: Column(
        children: [
          Text(
            txt1,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
         const SizedBox(height: 5),
          Container(
            margin: const EdgeInsets.only(left: 18.0),
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                txt2,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: timesNewRoman,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


