// //---------------------------- check this oout ------------------------//
import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

// class FAQAccordion extends StatefulWidget {
//   @override
//   _FAQAccordionState createState() => _FAQAccordionState();
// }

// class _FAQAccordionState extends State<FAQAccordion> {
//   List<Item> _data = generateItems(5);
//   int _expandedIndex = -1;

//   void toggleAccordion(int index) {
//     setState(() {
//       if (_expandedIndex == index) {
//         _expandedIndex = -1; // Collapse if already expanded
//       } else {
//         _expandedIndex = index; // Expand the selected item
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: _data.length,
//         itemBuilder: (context, index) {
//           final item = _data[index];
//           return Container(
//             margin: const EdgeInsets.only(bottom: 16.0),
//             child: ExpansionPanelList(
//               elevation: 1,
//               children: [
                
//                 ExpansionPanel(
//                   headerBuilder: (BuildContext context, bool isExpanded) {
//                     return Container(
//                       child: ListTile(
//                         title: Text(
//                           item.headerText,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black, // Set the text color to blue
//                             fontSize: 18.0, // Set the font size
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   body: Container(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Text(
//                       item.bodyText,
//                       style: const TextStyle(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                   ),
//                   isExpanded: _expandedIndex == index,
//                 ),
//               ],
//               expansionCallback: (int index, bool isExpanded) {
//                 toggleAccordion(index); // Toggle the selected item
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class Item {
//   Item({
//     required this.expandedValue,
//     required this.headerText,
//     required this.bodyText,
//   });

//   String expandedValue;
//   String headerText;
//   String bodyText;
// }

// List<Item> generateItems(int numberOfItems) {
//   return List<Item>.generate(numberOfItems, (int index) {
//     return Item(
//       headerText: 'Question ${index + 1}',
//       expandedValue: 'Answer to Question ${index + 1}',
//       bodyText: faqAnswer,
//     );
//   });
// }

class FAQComponent extends StatefulWidget {
  const FAQComponent({super.key});

  @override
  State<FAQComponent> createState() => _FAQComponentState();
}

class _FAQComponentState extends State<FAQComponent> {
  @override
  Widget build(BuildContext context) {
    // return FaqContainer();
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: questions.length,
          itemBuilder: (context, index) {
            final question = questions[index]['question'];
            final answer = questions[index]['answer'];
            return FaqContainer(question,answer);
          
    
          }
          ),
        ),
    );
  }
}

final questions = [
  {
    'question': 'What is Flutter?',
    'answer': 'Flutter is a mobile app development framework created by Google. It allows developers to build natively compiled applications for mobile, web, and desktop from a single codebase.'
  },
  {
    'question': 'What are the benefits of using Flutter?',
    'answer': 'There are several benefits of using Flutter, including: fast development, expressive and flexible UI, hot reload, and good performance.'
  },
  {
    'question': 'Is Flutter only for mobile app development?',
    'answer': 'No, Flutter can be used to develop applications for mobile, web, and desktop. It supports building for Android, iOS, web, and desktop platforms.'
  },
  {
    'question': 'Is Flutter only for Android and iOS?',
    'answer': 'No, Flutter can be used to build applications for Android, iOS, web, and desktop. It has good support for all these platforms.'
  },
  {
    'question': 'Is Flutter only for small apps?',
    'answer': 'No, Flutter can be used to build small as well as large and complex apps. It has the capabilities and performance to handle any size of app.'
  },
];

Widget FaqContainer(question, answer){
  return Container(
    // width: 10,
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: silver,
        width: 1.0

      ),
      borderRadius: BorderRadius.circular(8.0)
    ),
    child: ExpansionTile(
      leading: const Icon(Icons.home),
      title: Text(question!),
      backgroundColor: silver,
      trailing: const Icon(Icons.arrow_drop_down_sharp),
      children: [
        Padding(
          padding:  const EdgeInsets.all(16.0),
          child: Text(answer!),
        )
      ],
    ),
  );
}

// Widget FaqContainer(question, answer) {
//   return Container(
//     margin: const EdgeInsets.symmetric(vertical: 8.0), // Adjust margin as needed
//     decoration: BoxDecoration(
//       border: Border.all(
//         color: Colors.grey, // Border color
//         width: 1.0, // Border width
//       ),
//       borderRadius: BorderRadius.circular(8.0), // Border radius
//     ),
//     child: ExpansionTile(
//       leading: const Icon(Icons.home),
//       title: Text(question!),
//       backgroundColor: silver,
//       trailing: const Icon(Icons.arrow_drop_down_sharp),
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Text(answer!),
//         ),
//       ],
//     ),
//   );
// }








