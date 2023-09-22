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
    return itemsCategory(context);
  }
}

Widget itemsCategory(context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.80,
    color: silver, //const Color(0xFFF5F5F5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(70, 70, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WidgetBox(iphone),
              const SizedBox(width: 20,),
              WidgetBox(ipad),
              const SizedBox(width: 20,),
              WidgetBox(macbook),
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
              WidgetBox(iwatch),
             const SizedBox(width: 20,),
              WidgetBox(airpods)
            ],
          ),
        ),
      ],
    ),
  );
}

Widget WidgetBox(imageName) {
  return Container(
    width: 250,
    height: 250,
    decoration: const BoxDecoration(
      color: Colors.white,
      border: Border(
        left: BorderSide(color: silver, width: 1.5),
        right: BorderSide(color: silver, width: 1.5),
        top: BorderSide(color: silver, width: 1.5),
        bottom: BorderSide(color: silver, width: 1.5),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Expanded(
                    child: Image.asset(
                      imageName, height: 200,
                     width: 200,
                      fit: BoxFit.contain
                      ),
                  ),
    ),
  );
}
