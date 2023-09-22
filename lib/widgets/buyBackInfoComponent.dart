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

    return infoTab(width, height);
  }

  Widget infoTab(width, height) {
    return Container(
      width: width,
      height: height,
      color: silver,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //child number 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                // Wrap with Expanded to distribute space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.0),
                      child: Text(
                        backMarketTrade,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        backMarketTradeAns,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: timesNewRoman,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(iphone, fit: BoxFit.contain),
            ],
          ),

          //child number 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(iphone, fit: BoxFit.contain),
              const Expanded(
                // Wrap with Expanded to distribute space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: Text(
                        tradeInWork,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        tradeInWorkAns,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: timesNewRoman,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              //Image.asset(iphone, fit: BoxFit.contain),
            ],
          ),

          //child number 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                // Wrap with Expanded to distribute space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.0),
                      child: Text(
                        offer,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        offerAns,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: timesNewRoman,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(iphone, fit: BoxFit.contain),
            ],
          ),
        ],
      ),
    );
  }
}
