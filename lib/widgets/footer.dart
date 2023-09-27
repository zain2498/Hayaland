// import 'package:flutter/material.dart';
// import 'package:bybackproduct/constants.dart';

// class FooterComponent extends StatefulWidget {
//   @override
//   State<FooterComponent> createState() => _FooterComponentState();
// }

// class _FooterComponentState extends State<FooterComponent> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       child: Column(
//         children: [
//           informativeTextWidget(),
//           // Add other widgets as needed
//         ],
//       ),
//     );
//   }

//   // //Guide us
//   var guide_Us = [
//     userGuide,
//     abtPayment,
//     regardingDelivery,
//     abtTheProduct,
//     abtReturns
//   ];

//   var company_Infomation = [
//     abtUs,
//     businessContent,
//     sustainability,
//     recruitmentInfo,
//     companyProfie
//   ];

//   var customer_Support = [faq, indCustomer];

//   Widget informativeTextWidget() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           textWidget(guide_Us, "Guide Us"),
//           textWidget(company_Infomation, "Company Information"),
//           textWidget(customer_Support, "Customer Support"),
//           emailWidget()
//         ],
//       ),
//     );
//   }

//   Widget textWidget(List<String> items, String title) {
//     return Column(
//       children: [
//         Text(
//           title,
//           style: const TextStyle(fontSize: 15, color: Colors.white),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Column(
//           children: items
//               .map(
//                 (item) => TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     item,
//                     style: const TextStyle(color: Colors.white, fontSize: 15),
//                   ),
//                 ),
//               )
//               .toList(),
//         )
//       ],
//     );
//   }

//   Widget emailWidget() {
//     return Column(
//       children: [
//         Container(
//           width: 370,
//           height: 100,
//           child: const Padding(
//             padding: EdgeInsets.all(1.0),
//             child: Text(
//               signUp,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//               ),
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 margin: const EdgeInsets.symmetric(vertical: 8.0),
//                 width: 170,
//                 height: 40,
//                 child: const TextField(
//                   decoration: InputDecoration(
//                       hintText: emailAddress,
//                       filled: true,
//                       fillColor: Colors.white,
//                       border: OutlineInputBorder()),
//                 )),
//                 ElevatedButton(
//                   onPressed: (){}, 
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.white,
//                   onPrimary: Colors.black,
//                   padding: const  EdgeInsets.all(16.0)
//                 ),
//                 child: const Text(btnReg),
//                 )
//           ],
//         )
//       ],
//     );
//   }

// }


import 'package:flutter/material.dart';
import 'package:bybackproduct/constants.dart';

class FooterComponent extends StatefulWidget {
  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          informativeTextWidget(),
          // Add other widgets as needed
        ],
      ),
    );
  }

  var guide_Us = [
    userGuide,
    abtPayment,
    regardingDelivery,
    abtTheProduct,
    abtReturns
  ];

  var company_Infomation = [
    abtUs,
    businessContent,
    sustainability,
    recruitmentInfo,
    companyProfie
  ];

  var customer_Support = [faq, indCustomer];

  Widget informativeTextWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              textWidget(guide_Us, "Guide Us"),
              textWidget(company_Infomation, "Company Information"),
              const SizedBox(height: 100,),
              textWidget(customer_Support, "Customer Support"),
              const SizedBox(height: 10,),
              emailWidget(),
            ],
          ),
          // const SizedBox(
          //   height: 10, // Adjust this value to control the gap
          // ),
          
        ],
      ),
    );
  }

  Widget textWidget(List<String> items, String title) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.white),
        ),
        const SizedBox(
          height: 10, // Adjust this value to control the gap
        ),
        Column(
          children: items
              .map(
                (item) => TextButton(
                  onPressed: () {},
                  child: Text(
                    item,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }

  Widget emailWidget() {
    return Column(
      children: [
        Container(
          width: 370,
          height: 100,
          child: const Padding(
            padding: EdgeInsets.all(1.0),
            child: Text(
              signUp,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              width: 170,
              height: 40,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: emailAddress,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                padding: const EdgeInsets.all(16.0),
              ),
              child: const Text(btnReg),
            )
          ],
        )
      ],
    );
  }
}
