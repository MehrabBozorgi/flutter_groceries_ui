import 'package:flutter/material.dart';
import 'package:flutter_groceries_store/tools/border.dart';
import 'package:flutter_groceries_store/tools/colors.dart';

import '../tools/styles.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('pic1.jpg'),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
          ),
        ),
        child: Container(
          width: width,
          height: height * 0.3,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: height*0.02),
              const Text(
                'Buy Groceries Easily With Us',
                style: textStyle9,
              ),
              SizedBox(height: height*0.02),
              const Text(
                'Deliver your Product\ninjust one hour',
                style: textStyle10,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height*0.04),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width*0.8, height*0.06),
                  primary: redColor1,
                  shape: getShapeWidget(context, 0.03),
                ),
                onPressed: () {},
                child: const Text(
                  'Get Started',
                  style: textStyle10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
