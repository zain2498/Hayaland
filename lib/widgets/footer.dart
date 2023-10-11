// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:bybackproduct/constants.dart';

// class FooterComponent extends StatefulWidget {
//   @override
//   State<FooterComponent> createState() => _FooterComponentState();
// }

// class _FooterComponentState extends State<FooterComponent> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width * 0.79;
//     double height = MediaQuery.of(context).size.height * 0.7;
//     return Container(
//       color: Colors.black,
//       child: Column(
//         children: [
//           informativeTextWidget(width),
//           // Add other widgets as needed
//         ],
//       ),
//     );
//   }

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

//   Widget informativeTextWidget(double width) {
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Column(
//         children: [
//           Container(
//               height: width > 400 ? 270 : 370,
//               margin: const EdgeInsets.all(8.0),
//               child: width <= 500
//                   ? infoWidgetInListView(width)
//                   : infoWidgetInColView(width)),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           brandLogo(width),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           dividerWidget(width),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           brandInfoTab(width),
//         ],
//       ),
//     );
//   }

//   Widget infoWidgetInListView(width) {
//     return Column(
//       children: [
//         emailWidget(width),
//         dividerWidget(width),
//         listView(width, "Guide Us",guide_Us),
//         dividerWidget(width),
//         listView(width, "Company Information",company_Infomation),
//         dividerWidget(width),
//         listView(width, "Customer Support",customer_Support),
//         dividerWidget(width),
//       ],
//     );
//   }

// Widget listView(width, title, List<String> items) {
//   return ExpansionTile(
//     title: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(title, style: const TextStyle(fontSize: 10, color: Colors.white)),
//         const Icon(
//           Icons.add,
//           color: Colors.white,
//           size: 10,
//         ),
//       ],
//     ),
//     children: [
//       Container(
//         padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             for (var item in items)
//               Container(
//                 padding: EdgeInsets.only(left: 16.0), // Remove const EdgeInsets.symmetric(horizontal: 16.0)
//                 child: Text(
//                   item,
//                   style: const TextStyle(
//                     fontSize: 11,
//                     color: Colors.white,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     ],
//   );
// }

// // Widget listView(width, title, List<String> items) {
// //   bool isExpand = false;

// //   return ExpansionTile(
// //     initiallyExpanded: isExpand,
// //     title: Row(
// //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //       children: [
// //         Text(title, style: const TextStyle(fontSize: 10, color: Colors.white),), // Left side text
// //         GestureDetector(
// //           onTap: () {
// //             isExpand = !isExpand;
// //           },
// //           child: Icon(
// //             isExpand ? Icons.remove : Icons.add,
// //             color: Colors.white,
// //             size: 10,
// //           ),
// //         ),
// //       ],
// //     ),
// //     onExpansionChanged: (value) {
// //       // Do nothing here or remove this callback if you don't need it
// //     },
// //     children: [
// //       Container(
// //         padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             for (var item in items)
// //               Container(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                 child: Text(
// //                   item,
// //                   style: const TextStyle(
// //                     fontSize: 11,
// //                     color: Colors.white,
// //                   ),
// //                   textAlign: TextAlign.left, // Align child text to the left
// //                 ),
// //               ),
// //           ],
// //         ),
// //       ),
// //     ],
// //   );
// // }


//   Widget infoWidgetInColView(width) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         textWidget(guide_Us, "User guide", width),
//         textWidget(company_Infomation, "Company information", width),
//         const SizedBox(
//           height: 10,
//         ),
//         textWidget(customer_Support, "Customer support", width),
//         const SizedBox(
//           height: 10,
//         ),
//         emailWidget(width),
//       ],
//     );
//   }

//   Widget textWidget(List<String> items, String title, width) {
//     return Container(
//       width: width * 0.23,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             padding: const EdgeInsets.only(left: 28), // Add left padding here
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 15, color: Colors.white),
//             ),
//           ),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: items
//                 .map(
//                   (item) => Container(
//                     padding: const EdgeInsets.only(
//                         left: 16), // Add left padding here
//                     child: TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         item,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 15,
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }

//   Widget emailWidget(width) {
//     return Column(
//       children: [
//         Container(
//           width: width <= 500 ?width * 2:  width * 0.4,
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
//         Container(
//           width: width <= 500 ?width * 2:  width * 0.4,//width * 2,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 8.0),
//                 width: width <= 500 ? width * 0.7 :  width * 0.27,//width *0.1,
//                 height: 40,
//                 child: const TextField(
//                   decoration: InputDecoration(
//                     hintText: emailAddress,
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: width <=500 ? width * 0.2 :width * 0.12,
//                 height: 40,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.white,
//                       onPrimary: Colors.black,
//                       padding: const EdgeInsets.all(1.0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5))),
//                   child: Text(
//                     btnReg,
//                     style: TextStyle(fontSize: width < 500 ? 12 : 15, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget brandLogo(width) {
//     return Container(
//       height: 50,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Image.asset(
//             productLogoNoBckground,
//             width: width * 0.5,
//             height: 120,
//           ),
//           const Spacer(),
//           imageButton(twitterLogo),
//           const SizedBox(
//             width: 10,
//           ),
//           imageButton(facebookLogo),
//           const SizedBox(
//             width: 10,
//           ),
//           imageButton(instaLogo),
//         ],
//       ),
//     );
//   }

//   Widget imageButton(img) {
//     return InkWell(
//       onTap: () {},
//       child: Image.asset(
//         img,
//         width: 25,
//         height: 25,
//         color: Colors.white,
//       ),
//     );
//   }

//   Widget dividerWidget(width) {
//     return Container(
//       width: width + 250,
//       child: const Divider(
//         height: 10,
//         // Set the height of the white line
//         color: Colors.white, // Set the color of the white line
//       ),
//     );
//   }

//   Widget brandInfoTab(width) {
//     return Container(
//         height: 60,
//         child: width <= 500 ? designInCol(width) : designInRow(width));
//   }

//   Widget designInRow(width) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         brandInfoTxtWidget(companyName, width),
//         const Spacer(),
//         brandInfoTxtWidget(privacyPolicy, width),
//         const SizedBox(
//           width: 20,
//         ),
//         brandInfoTxtWidget(footerDesc, width)
//       ],
//     );
//   }

//   Widget designInCol(width) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         brandInfoTxtWidget(companyName, width),
//         Container(
//           child: Row(
//             children: [
//               Container(
//                   width: width * 0.15,
//                   child: brandInfoTxtWidget(privacyPolicy, width)),
//               const SizedBox(
//                 width: 5,
//               ),
//               Container(
                
//                 child: brandInfoTxtWidget(footerDesc, width)),
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget brandInfoTxtWidget(txt, width) {
//     return Container(
//       child: Expanded(
//         child: Text(
//           txt,
//           style: const TextStyle(color: Colors.white, fontSize: 13),
//         ),
//       ),
//     );
//   }
// }


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:bybackproduct/constants.dart';

class FooterComponent extends StatefulWidget {
  @override
  State<FooterComponent> createState() => _FooterComponentState();
}

class _FooterComponentState extends State<FooterComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.79;
    double height = MediaQuery.of(context).size.height * 0.7;
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          informativeTextWidget(width),
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

  Widget informativeTextWidget(double width) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
              height: width > 400 ? 270 : 370,
              margin: const EdgeInsets.all(8.0),
              child: width <= 500
                  ? infoWidgetInListView(width)
                  : infoWidgetInColView(width)),
          const SizedBox(
            height: 10, // Adjust this value to control the gap
          ),
          brandLogo(width),
          const SizedBox(
            height: 10, // Adjust this value to control the gap
          ),
          dividerWidget(width),
          const SizedBox(
            height: 10, // Adjust this value to control the gap
          ),
          brandInfoTab(width),
        ],
      ),
    );
  }

  Widget infoWidgetInListView(width) {
    return Column(
      children: [
        emailWidget(width),
        dividerWidget(width),
        listView(width, "Guide Us", guide_Us),
        dividerWidget(width),
        listView(width, "Company Information", company_Infomation),
        dividerWidget(width),
        listView(width, "Customer Support", customer_Support),
        dividerWidget(width),
      ],
    );
  }

  Widget listView(width, title, List<String> items) {
    return ExpansionTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 10, color: Colors.white)),
          const Icon(
            Icons.add,
            color: Colors.white,
            size: 10,
          ),
        ],
      ),
      children: [
        Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var item in items)
                Container(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget infoWidgetInColView(width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        textWidget(guide_Us, "User guide", width),
        textWidget(company_Infomation, "Company information", width),
        const SizedBox(
          height: 10,
        ),
        textWidget(customer_Support, "Customer support", width),
        const SizedBox(
          height: 10,
        ),
        emailWidget(width),
      ],
    );
  }

  Widget textWidget(List<String> items, String title, width) {
    return Container(
      width: width * 0.23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              title,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items
                .map(
                  (item) => Container(
                    padding: EdgeInsets.only(left: 16),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  Widget emailWidget(width) {
    return Column(
      children: [
        Container(
          width: width <= 500 ? width * 2 : width * 0.4,
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
        Container(
          width: width <= 500 ? width * 2 : width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                width: width <= 500 ? width * 0.7 : width * 0.27,
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
              Container(
                width: width <= 500 ? width * 0.2 : width * 0.12,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding: const EdgeInsets.all(1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Text(
                    btnReg,
                    style: TextStyle(
                        fontSize: width < 500 ? 12 : 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget brandLogo(width) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            productLogoNoBckground,
            width: width * 0.5,
            height: 120,
          ),
          const Spacer(),
          imageButton(twitterLogo),
          const SizedBox(
            width: 10,
          ),
          imageButton(facebookLogo),
          const SizedBox(
            width: 10,
          ),
          imageButton(instaLogo),
        ],
      ),
    );
  }

  Widget imageButton(img) {
    return InkWell(
      onTap: () {},
      child: Image.asset(
        img,
        width: 25,
        height: 25,
        color: Colors.white,
      ),
    );
  }

  Widget dividerWidget(width) {
    return Container(
      width: width + 250,
      child: const Divider(
        height: 10,
        color: Colors.white,
      ),
    );
  }

  Widget brandInfoTab(width) {
    return Container(
        height: 75,
        child: width <= 500 ? designInCol(width) : designInRow(width));
  }

  Widget designInRow(width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        brandInfoTxtWidget(companyName, width),
        const Spacer(),
        brandInfoTxtWidget(privacyPolicy, width),
        const SizedBox(
          width: 20,
        ),
        brandInfoTxtWidget(footerDesc, width)
      ],
    );
  }

  Widget designInCol(width) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        brandInfoTxtWidget(companyName, width),
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: brandInfoTxtWidget(privacyPolicy, width),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 400,
              height: 50,
              child: brandInfoTxtWidget(footerDesc, width)),
          ],
        )
      ],
    );
  }

  Widget brandInfoTxtWidget(txt, width) {
    return Container(
      height: 25,
      child: Text(
        txt,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }
}
