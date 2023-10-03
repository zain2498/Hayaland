// import 'package:flutter/material.dart';
// import 'package:bybackproduct/constants.dart';

// class FooterComponent extends StatefulWidget {
//   @override
//   State<FooterComponent> createState() => _FooterComponentState();
// }

// class _FooterComponentState extends State<FooterComponent> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width*0.99;
//     double height = MediaQuery.of(context).size.height*0.7;
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

//   Widget informativeTextWidget(width) {
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Column(
//         children: [
//           Container(
//             height: 200,
//             margin: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 textWidget(guide_Us, "Guide Us"),
//                 textWidget(company_Infomation, "Company Information"),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 textWidget(customer_Support, "Customer Support"),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 emailWidget(),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           brandLogo(),
//           const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),
//           dividerWidget(width),
// const SizedBox(
//             height: 10, // Adjust this value to control the gap
//           ),

//           brandInfoTab(width),
          
//         ],
//       ),
//     );
//   }

//   Widget textWidget(List<String> items, String title) {
//   return Container(
//     width: 230,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           padding: const EdgeInsets.only(left: 28), // Add left padding here
//           child: Text(
//             title,
//             style: const TextStyle(fontSize: 15, color: Colors.white),
//           ),
//         ),
//         const SizedBox(
//           height: 10, // Adjust this value to control the gap
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: items
//               .map(
//                 (item) => Container(
//                   padding: const EdgeInsets.only(left: 16), // Add left padding here
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       item,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//               .toList(),
//         )
//       ],
//     ),
//   );
// }


//   Widget emailWidget() {
//     return Column(
//       children: [
//         Container(
//           width: 400,
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
//           width: 400,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 margin: const EdgeInsets.symmetric(vertical: 8.0),
//                 width: 270,
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
//                 width: 100,
//                 height: 40,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.white,
//                     onPrimary: Colors.black,
//                     padding: const EdgeInsets.all(1.0),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5)
//                     )
//                   ),
//                   child: const Text(btnReg),
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }

//   Widget brandLogo() {
//     return Container(
//       height: 50,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Image.asset(
//             productLogoNoBckground,
//             width: 150,
//             height: 100,
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
//         width: 20,
//         height: 20,
//         color: Colors.white,
//       ),
//     );
//   }

//   Widget dividerWidget(width) {
//     return Container(
//       width: width,
//       child: const Divider(
//         height: 10,
//         // Set the height of the white line
//         color: Colors.white, // Set the color of the white line
//       ),
//     );
//   }

//   Widget brandInfoTab(width) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       brandInfoTxtWidget(companyName),
//       const Spacer(),
//       brandInfoTxtWidget(privacyPolicy),
//       const SizedBox(width: 50,),
//       brandInfoTxtWidget(footerDesc)
//     ],
//   );
// }

//     Widget brandInfoTxtWidget(txt){
//       return Text(
//           txt, style: const TextStyle(
//             color: Colors.white,
//             fontSize: 13
//           ),
//           );
//     }
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
            height: width > 400 ? 270 : 300,
            margin: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textWidget(guide_Us, "Guide Us",width),
                textWidget(company_Infomation, "Company Information",width),
                const SizedBox(
                  height: 10,
                ),
                textWidget(customer_Support, "Customer Support",width),
                const SizedBox(
                  height: 10,
                ),
                emailWidget(width),
              ],
            ),
          ),
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

  Widget textWidget(List<String> items, String title,width) {
    return Container(
      width: width * 0.23,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 28), // Add left padding here
            child: Text(
              title,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10, // Adjust this value to control the gap
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items
                .map(
                  (item) => Container(
                    padding: const EdgeInsets.only(left: 16), // Add left padding here
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
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
          width: width * 0.4,
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
          width: width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                width: width * 0.27,
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
                width: width * 0.12,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding: const EdgeInsets.all(1.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(btnReg),
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
            width: width * 0.2,
            height: 100,
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
        width: 20,
        height: 20,
        color: Colors.white,
      ),
    );
  }

  Widget dividerWidget(width) {
    return Container(
      width: width + 250,
      child: const Divider(
        height: 10,
        // Set the height of the white line
        color: Colors.white, // Set the color of the white line
      ),
    );
  }

  Widget brandInfoTab(width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        brandInfoTxtWidget(companyName,width),
        const Spacer(),
        brandInfoTxtWidget(privacyPolicy,width),
        const SizedBox(
          width: 20,
        ),
        Container(child: brandInfoTxtWidget(footerDesc,width))
      ],
    );
  }

  Widget brandInfoTxtWidget(txt,width) {
    return Container(
      width: width * 0.35,
      // height: 250,
      child: Expanded(
        child: Text(
          txt,
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ),
    );
  }




}
