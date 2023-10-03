import 'package:bybackproduct/colors.dart';
import 'package:bybackproduct/constants.dart';
import 'package:flutter/material.dart';

class CardViewComponent extends StatefulWidget {
  const CardViewComponent({super.key});

  @override
  State<CardViewComponent> createState() => _CardViewComponentState();
}

class _CardViewComponentState extends State<CardViewComponent> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.75;
    return createCardView();
  }
}

Widget createCardView() {
  return Container(
    color: silver, // Silver background color for the container
    child: Card(
      elevation: 3, // Add elevation for a card-like appearance
      margin: const EdgeInsets.all(16), // Margin for the card
      color: Colors.white, // White background color for the card
      child: Column(
        children: [
          Row(
            children: [
              // Three pictures in the first row
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(iphone), // Replace with your image path
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(ipad), // Replace with your image path
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(iwatch), // Replace with your image path
                ),
              ),
            ],
          ),
          Row(
            children: [
              // Two pictures in the second row
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(macbook), // Replace with your image path
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(airpods), // Replace with your image path
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}




