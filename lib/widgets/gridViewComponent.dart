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
    color: const Color(0xFFF5F5F5),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(iphone, fit: BoxFit.contain),
              ),
              Expanded(
                child: Image.asset(ipad, fit: BoxFit.contain),
              ),
              Expanded(
                child: Image.asset(macbook, fit: BoxFit.contain),
              ),
            ],
          ),
        ),
        // Other children of the Column go here
        Container(
          // You can wrap the second Row with a Container or another suitable widget.
          child: Row(
            children: [
              Expanded(
                child: Image.asset(iwatch, fit: BoxFit.contain),
              ),
              Expanded(
                child: Image.asset(airpods, fit: BoxFit.contain),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
