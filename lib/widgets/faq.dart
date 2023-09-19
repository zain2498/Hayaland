import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'What is Flutter?',
      answer: 'Flutter is an open-source UI software development toolkit created by Google. It is used for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    ),
    FAQItem(
      question: 'How do I install Flutter?',
      answer: 'You can install Flutter by following the installation instructions provided in the official Flutter documentation. Flutter supports Windows, macOS, and Linux.',
    ),
    FAQItem(
      question: 'Can I use Flutter for web development?',
      answer: 'Yes, you can use Flutter for web development. Flutter includes web support, allowing you to build web applications using the same codebase as your mobile app.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return FaqContainer(faqItems);
  }
}

Widget FaqContainer (faqList){
   
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            "faq",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          // Wrap the ListView with a SizedBox to give it a fixed height
          SizedBox(
            height: 300, // Set the desired height
            child: ListView.builder(
              itemCount: faqList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(faqList[index].question),
                  subtitle: Text(faqList[index].answer),
                );
              },
            ),
          ),
        ],
      ),
    );
}
class FAQItem {
  final String question;
  final String answer;

  FAQItem({
    required this.question,
    required this.answer,
  });
}
