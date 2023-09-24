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
    double width = MediaQuery.of(context).size.width * 0.95;
    double height = MediaQuery.of(context).size.height * 0.9;

    return Container(
      width: width,
      height: height,
      
      decoration: BoxDecoration(
        color: silver,
        border: Border.all(
          color: silver,
          width: 1.0

        ),
        borderRadius: BorderRadius.circular(20)
      ),
      child: infoTab(),
    );
  }

  Widget infoTab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //child number 1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            rowWidget(backMarketTrade, backMarketTradeAns),
            Image.asset(iphone, fit: BoxFit.contain),
          ],
        ),

        //child number 2
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(iphone, fit: BoxFit.contain),
            rowWidget(tradeInWork, tradeInWorkAns)
          ],
        ),

        //child number 3
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            rowWidget(offer,offerAns),
            Image.asset(iphone, fit: BoxFit.contain),
          ],
        ),
      ],
    );
  }
}

//dynamic widget for all the three campaigns
Widget rowWidget(txt1,txt2){
  return Container(
    width: 500,
    child: Expanded(
           // Wrap with Expanded to distribute space
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
               const SizedBox(
                 height: 5,
               ),
               Container(
                margin: const EdgeInsets.only(left: 18.0),
                width: 350,
                 child: Padding(
                   padding:  const EdgeInsets.only(left: 8.0),
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
         ),
  );
}
