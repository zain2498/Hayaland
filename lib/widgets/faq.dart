// //---------------------------- check this oout ------------------------//
import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

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
    'question': faqQues1,
    'answer': faqAns1
  },
  {
    'question': faqQues2,
    'answer': faqAns2
  },
  {
    'question': faqQues3,
    'answer': faqAns3
  },
    {
    'question': faqQues4,
    'answer': faqAns4
  },
    {
    'question': faqQues5,
    'answer': faqAns5
  },
];

Widget FaqContainer(question, answer){
  return Container(
    // width: 10,
    margin: const EdgeInsets.symmetric(vertical: 6.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: silver,
        width: 1.0

      ),
      borderRadius: BorderRadius.circular(18.0)
    ),
    child: ExpansionTile(
      //leading: const Icon(Icons.home),
      title: Text(question!),
      backgroundColor: silver,
      trailing: const Icon(Icons.arrow_drop_down_sharp),
      children: [
        Padding(
          padding:  const EdgeInsets.all(16),
          child: Container(
            width: 1000,
            child: Text(answer!)),
        )
      ],
    ),
  );
}








