import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatefulWidget {
  const HeaderComponent({super.key});

  @override
  State<HeaderComponent> createState() => _HeaderComponentState();
}

class _HeaderComponentState extends State<HeaderComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.99;
    return HeaderSection(width);
  }
}

// ignore: non_constant_identifier_names
Widget HeaderSection(width) {
  return Container(
    width: width,
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        scrollableHeaderContent(width),
        const SizedBox(
          height: 15,
        ),
        fixedHeaderContent()
      ],
    ),
  );
}

Widget scrollableHeaderContent(width) {
  return Row(
    children: [
      Image.asset(
        productLogo,
        width: width <= 600 ? width * 0.3 : 200,
      ),
      const Spacer(),
      TextButton(
          onPressed: () {},
          child: const Text("Corporate Sites",
              style: TextStyle(
                color: Colors.black,
              ))),
      TextButton(
          onPressed: () {},
          child: const Text(
            "Corporate Customers",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
      IconButton(onPressed: () {}, icon: const Icon(Icons.search))
    ],
  );
}

Widget fixedHeaderContent() {
  return Container(
      color: Colors.black,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTextField("Home"),
          buildTextField("Shop"),
          buildTextField("Outlet"),
          buildTextField("Guide"),
          buildTextField("FAQ"),
          buildTextField("Inquiry"),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ))
        ],
      ));
}

Widget buildTextField(String fieldName) {
  return Container(
    color: Colors.black,
    child: Container(
      //     child: Text(
      //   fieldName,
      //   style: const TextStyle(color: Colors.white),
      // )
      child: TextButton(
        onPressed: () {},
        child: Text(
          fieldName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
