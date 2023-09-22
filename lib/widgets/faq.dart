//---------------------------- check this oout ------------------------//
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class FAQAccordion extends StatefulWidget {
  @override
  _FAQAccordionState createState() => _FAQAccordionState();
}

class _FAQAccordionState extends State<FAQAccordion> {
  List<Item> _data = generateItems(5);
  int _expandedIndex = -1;

  void toggleAccordion(int index) {
    setState(() {
      if (_expandedIndex == index) {
        _expandedIndex = -1; // Collapse if already expanded
      } else {
        _expandedIndex = index; // Expand the selected item
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final item = _data[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: ExpansionPanelList(
              elevation: 1,
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      child: ListTile(
                        title: Text(
                          item.headerText,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue, // Set the text color to blue
                            fontSize: 18.0, // Set the font size
                          ),
                        ),
                      ),
                    );
                  },
                  body: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      item.bodyText,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  isExpanded: _expandedIndex == index,
                ),
              ],
              expansionCallback: (int index, bool isExpanded) {
                toggleAccordion(index); // Toggle the selected item
              },
            ),
          );
        },
      ),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerText,
    required this.bodyText,
  });

  String expandedValue;
  String headerText;
  String bodyText;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerText: 'Question ${index + 1}',
      expandedValue: 'Answer to Question ${index + 1}',
      bodyText: faqAnswer,
    );
  });
}





