import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class BottomTabComponent extends StatefulWidget {
  const BottomTabComponent({super.key});

  @override
  State<BottomTabComponent> createState() => _BottomTabComponentState();
}

class _BottomTabComponentState extends State<BottomTabComponent> {
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width * 0.95;
    return bottomTabBox(screenSize);
  }
}

Widget bottomTabBox(screenSize) {
  // Define a list of icon names, titles, and details
  final List<String> iconNames = [
    'fire',
    'search',
    'liked',
    'report',
  ];

  final List<String> titles = [
    shipment,
    searchItem,
    likedItem,
    report,
  ];

  final List<String> details = [
    shipmentDetail,
    searchItemDetail,
    likedItemDetail,
    reportDetail,
  ];

  // Create a list of tab items using a loop
  final List<Widget> tabItems = List.generate(iconNames.length, (index) {
    final IconData iconData = _getIconData(iconNames[index]);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Icon(
                iconData,
              ),
            ),
            const SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 3.0),
              child: Text(
                titles[index],
                style: const TextStyle(fontSize: 15, fontFamily: 'Sans-Serif'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(details[index], style: const TextStyle(fontSize: 12, fontFamily: 'Sans-Serif')),
        ),
      ],
    );
  });

  // Create a list of separators
  final List<Widget> separators = List.generate(
      tabItems.length - 1, // One less separator than the number of tab items
      (index) => const
          Text(
            '|',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: silver,
            ),
          ));

  // Interleave the tab items with separators
  final List<Widget> combinedItems = [];
  for (int i = 0; i < tabItems.length; i++) {
    combinedItems.add(tabItems[i]);
    if (i < separators.length) {
      combinedItems.add(separators[i]);
    }
  }

  return Container(
    //child: Container(
      width: screenSize,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: silver, width: 1.5),
          right: BorderSide(color: silver, width: 1.5),
          top: BorderSide(color: silver, width: 1.5),
          bottom: BorderSide(color: silver, width: 1.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: combinedItems,
      ),
   // ),
  );
}

IconData _getIconData(String iconName) {
  switch (iconName) {
    case 'fire':
      return Icons.fire_truck;
    case 'search':
      return Icons.search;
    // Add more cases for other icon names
    case 'liked':
      return Icons.thumb_up;
    case 'report':
      return Icons.report_off;
    default:
      return Icons.error; // Use a default icon in case of an unknown name
  }
}
