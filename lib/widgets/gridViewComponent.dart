// import 'package:bybackproduct/colors.dart';
// import 'package:bybackproduct/constants.dart';
// import 'package:flutter/material.dart';

// class GridViewComponent extends StatefulWidget {
//   const GridViewComponent({super.key});

//   @override
//   State<GridViewComponent> createState() => _GridViewComponentState();
// }

// class _GridViewComponentState extends State<GridViewComponent> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//              margin: const EdgeInsets.symmetric(vertical:8.0),
//           decoration: BoxDecoration(
//             color: silver,
//             border: Border.all(
//               color: silver,
//               width: 1.0
//             ),
//             borderRadius: BorderRadius.circular(20.0)
//           ),
//       child: itemsCategory(context));
//   }
// }

// Widget itemsCategory(context) {
//   return Container(
//     width: MediaQuery.of(context).size.width * 0.75,
//    // color: silver, //const Color(0xFFF5F5F5),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               WidgetBox(iphone,txtIphone),
//               const SizedBox(width: 20,),
//               WidgetBox(ipad, txtIpad),
//               const SizedBox(width: 20,),
//               WidgetBox(macbook, txtMacbook),
//             ],
//           ),
//         ),
//         const SizedBox(height: 30,),
//         // Other children of the Column go here
//         Container(
//           padding: const EdgeInsets.fromLTRB(70, 0, 70, 30),
//           // You can wrap the second Row with a Container or another suitable widget.
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               WidgetBox(iwatch, txtIwatch),
//              const SizedBox(width: 20,),
//               WidgetBox(airpods, txtAirpods)
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
// bool flag = false;
// Widget WidgetBox(imageName,gadgetName) {
//   return StatefulBuilder(
//     builder: (BuildContext context, StateSetter stateful) {
//       return Stack(
//         clipBehavior: Clip.none,
//         alignment: Alignment.center,
//         children: [
//           Container(
//            width: 250, //!flag?250:400,
//            height: 250, //!flag?250:400,
//            clipBehavior: Clip.antiAlias,

//             margin: const EdgeInsets.symmetric(vertical: 8.0),
//             decoration:  BoxDecoration(
//               color: Colors.white,
//               border: Border.all(
//                 color: silver,
//                 width: 1.0
//               ),
//               borderRadius: BorderRadius.circular(20.0)
//               //),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   Text(gadgetName),
                  
//                 ],
//               )
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//             child: MouseRegion(
//                                     onEnter: (event){             
//                                       //  stateful(){
//                                       //     flag = true;
//                                       //  }
//                                       //  flag = true;
//                                      // print("enter");
                                      
//                                        stateful(() => flag = true);
//                                        //print(flag);
//                                     },
//                                     onExit: (event) {
//                                       // flag = false;
//                                       // stateful(){
//                                       //     flag = false;
//                                       //  }
//                                       stateful(() => flag = false);
//                                       //print("exit");
//                                       //print(flag);
//                                     },
//                                     child: AnimatedContainer(
//                                       height: flag ?  250 : 200,
//                                       width: flag ?  250 : 200,
//                                       duration:const Duration(milliseconds: 100),
//                                       child: Image.asset(
//                                         imageName, 
//                                         //fit: BoxFit.contain,
                                        
//                                         ),
//                                     ),
//                                   ),
//           ),
//         ],
//       );
//     }
//   );
// }

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
              WidgetBox(ipad, 'iPad'),
               SizedBox(width: 20),
              WidgetBox(macbook, 'Macbook'),
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

// class _WidgetBoxState extends State<WidgetBox> {
//   bool flag = false;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           flag = !flag;
//         });
//       },
//       child: Stack(
//         clipBehavior: Clip.none,
//         alignment: Alignment.center,
//         children: [
//           Container(
//             width: 225, // Adjust as needed
//             height: 225, // Adjust as needed
//             clipBehavior: Clip.antiAlias,
//             margin: const EdgeInsets.symmetric(vertical: 8.0),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(
//                 color: silver, // Change to your desired color
//                 width: 1.0,
//               ),
//               borderRadius: BorderRadius.circular(20.0),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   Text(widget.gadgetName),
//                 ],
//               ),
//             ),
//           ),
//           AnimatedContainer(
//             height: flag ? 200 : 150, // Adjust as needed
//             width: flag ? 200 : 150, // Adjust as needed
//             duration: const Duration(milliseconds: 100),
//             child: Image.asset(
//               widget.imageName,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


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
