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
         Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
          child: Text(
            bannerTitle,
            style: TextStyle(fontSize: Width <500 ? 20 : 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [imageWidget(Width, height), labelWidget(Width,height)],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textboxWidget(txtCertifiedDetail,Width,height),
            textboxWidget(txtShipmentDetail1,Width,height),
            textboxWidget(txtSupportDetail,Width,height),
          ],
        ),
       const SizedBox(height: 60,),
        Container(
          width: Width*0.9,
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

Widget imageWidget(width,height) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        imageDecor(certifiedBadge,width),
        imageDecor(imgShipment,width),
        imageDecor(likeUs,width)
      ],
    ),
  );
}

Widget imageDecor(imgName,width) {
  return Container(
    // width: width*0.01,
      alignment: Alignment.center,
      child: Image.asset(
        imgName,
        width: 70,
        height: 70,
        fit: BoxFit.contain,
      ));
}

Widget labelWidget(width,height) {
  return Container(
    width: 900,
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LablDecor(txtCertified, width,height),
          LablDecor(txtShipment,width,height),
          LablDecor(txtLikeUs,width,height),
        ],
      ),
    ),
  );
}

Widget LablDecor(txtName,width, height) {
  return Container(
      width: width *0.28,
      height: width <500 ? 55 : 45,
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
        textAlign: width < 400 ? TextAlign.start: TextAlign.center,
        style: TextStyle(
          fontSize: width < 400 ? -10 : 12,
          fontFamily: "sans-serief"
        ),
      ));
}


Widget textboxWidget(txt,width,height) {
  return Container(
    width: width *0.25,
    height: height *0.25, // Adjust the height to fit your design
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
