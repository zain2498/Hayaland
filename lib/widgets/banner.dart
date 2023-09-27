import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class bannerComponent extends StatefulWidget {
  const bannerComponent({super.key});

  @override
  State<bannerComponent> createState() => _bannerComponentState();
}

class _bannerComponentState extends State<bannerComponent> {
  @override
  Widget build(BuildContext context) {
    double widget = MediaQuery.of(context).size.width * 0.85;
    double height = MediaQuery.of(context).size.height * 0.8;
    return SingleChildScrollView(child: BannerWidget(widget, height));
  }
}

Widget BannerWidget(Width, height) {
  return Container(
    width: Width,
    height: height,
    //  color: Color.fromARGB(255, 230, 99, 143),//lightPink,
    margin: const EdgeInsets.symmetric(vertical: 6.0),
    decoration: BoxDecoration(
        color: lightPink,
        border: Border.all(
          color: silver,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(18.0)),
    child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Text(
            bannerTitle,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [imageWidget(), labelWidget()],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textboxWidget(txtCertifiedDetail),
            textboxWidget(txtShipmentDetail1),
            textboxWidget(txtSupportDetail),
          ],
        ),
        SizedBox(height: 60,),
        Container(
          width: 500,
          margin: const EdgeInsets.symmetric(vertical: 6.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: lightReddish,
              width: 1.0
            ),
            borderRadius: BorderRadius.circular(35)
          ),
          child: ElevatedButton(
            onPressed: () {
              // Add your button click logic here
            },
              style: ElevatedButton.styleFrom(
            primary: lightReddish, // Change the background color here
          ),
            child: const Text(routeToSellerProd, style: TextStyle(
              color: Colors.white
            ),),
          ),
        )
      ],
    ),
  );
}

Widget imageWidget() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        imageDecor(certifiedBadge),
        imageDecor(imgShipment),
        imageDecor(likeUs)
      ],
    ),
  );
}

Widget imageDecor(imgName) {
  return Container(
      alignment: Alignment.center,
      child: Image.asset(
        imgName,
        width: 70,
        height: 70,
        fit: BoxFit.contain,
      ));
}

Widget labelWidget() {
  return Container(
    width: 900,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LablDecor(txtCertified),
          LablDecor(txtShipment),
          LablDecor(txtLikeUs),
        ],
      ),
    ),
  );
}

Widget LablDecor(txtName) {
  return Container(
      width: 280,
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: silver,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(12.0),
      child: Text(
        txtName,
        textAlign: TextAlign.center,
      ));
}

// Widget textboxWidget(txt){
//   return Container(
//     width: 100,
//     height: 500,
//     child: Row(
//       children: [
//         Image.asset(imgChecked, width: 15, height: 15, fit: BoxFit.contain,),
//        const SizedBox(width: 5,),
//          Expanded(child: Text(txt)),
//       ],
//     ),
//   );
// }

Widget textboxWidget(txt) {
  return Container(
    width: 150,
    height: 100, // Adjust the height to fit your design
    child: Row(
      children: [
        Image.asset(
          imgChecked,
          width: 15,
          height: 15,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(child: Text(txt)),
      ],
    ),
  );
}
