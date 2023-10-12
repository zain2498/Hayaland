import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class GridViewComponent extends StatefulWidget {
  const GridViewComponent({Key? key});

  @override
  State<GridViewComponent> createState() => _GridViewComponentState();
}

class _GridViewComponentState extends State<GridViewComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: silver, // Change to your desired color
        border: Border.all(
          color: Colors.white, // Change to your desired color
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: itemsCategory(context),
    );
  }
}

Widget itemsCategory(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.75,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       const Padding(
          padding:  EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              WidgetBox(iphone, 'iPhone'),
               SizedBox(width: 20),
              WidgetBox(ipad2, 'iPad'),
               SizedBox(width: 20),
              WidgetBox(macbook2, 'Macbook'),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.fromLTRB(70, 0, 70, 30),
          child: const Wrap(
            alignment: WrapAlignment.center,
            children: [
              WidgetBox(iwatch, 'iWatch'),
               SizedBox(width: 20),
              WidgetBox(airpods, 'Airpods'),
            ],
          ),
        ),
      ],
    ),
  );
}

class WidgetBox extends StatefulWidget {
  final String imageName;
  final String gadgetName;

  const WidgetBox(this.imageName, this.gadgetName, {Key? key}) : super(key: key);

  @override
  _WidgetBoxState createState() => _WidgetBoxState();
}

class _WidgetBoxState extends State<WidgetBox> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 225, // Adjust as needed
            height: 225, // Adjust as needed
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: silver, // Change to your desired color
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(widget.gadgetName),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            height: isHovered ? 200 : 150, // Adjust as needed
            width: isHovered ? 200 : 150, // Adjust as needed
            duration: const Duration(milliseconds: 100),
            child: Image.asset(
              widget.imageName,
            ),
          ),
        ],
      ),
    );
  }
}
