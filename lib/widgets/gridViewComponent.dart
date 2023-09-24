import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class GridViewComponent extends StatefulWidget {
  const GridViewComponent({super.key});

  @override
  State<GridViewComponent> createState() => _GridViewComponentState();
}

class _GridViewComponentState extends State<GridViewComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
             margin: const EdgeInsets.symmetric(vertical:8.0),
          decoration: BoxDecoration(
            color: silver,
            border: Border.all(
              color: silver,
              width: 1.0
            ),
            borderRadius: BorderRadius.circular(12.0)
          ),
      child: itemsCategory(context));
  }
}

Widget itemsCategory(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.70,
   // color: silver, //const Color(0xFFF5F5F5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetBox(iphone,txtIphone),
              const SizedBox(width: 20,),
              WidgetBox(ipad, txtIpad),
              const SizedBox(width: 20,),
              WidgetBox(macbook, txtMacbook),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        // Other children of the Column go here
        Container(
          padding: const EdgeInsets.fromLTRB(70, 0, 70, 30),
          // You can wrap the second Row with a Container or another suitable widget.
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetBox(iwatch, txtIwatch),
             const SizedBox(width: 20,),
              WidgetBox(airpods, txtAirpods)
            ],
          ),
        ),
      ],
    ),
  );
}

Widget WidgetBox(imageName,gadgetName) {
  return Container(
    width: 250,
    height: 250,
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    decoration:  BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: silver,
        width: 1.0
      ),
      borderRadius: BorderRadius.circular(15.0)
      //),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(gadgetName),
          Expanded(
                    child: Image.asset(
                      imageName, height: 200,
                     width: 200,
                      fit: BoxFit.contain
                      ),
                  ),
        ],
      )
    ),
  );
}
