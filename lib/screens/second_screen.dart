import 'package:flutter/material.dart';
import 'package:flutter_groceries_store/tools/border.dart';
import 'package:flutter_groceries_store/tools/colors.dart';

import '../tools/styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    String desc =
        'An orange is a fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange';
    return Container(
      color: redColor2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: width,
                  height: height * 0.3,
                  decoration: BoxDecoration(
                    color: redColor2,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(width * 0.3),
                      bottomRight: Radius.circular(width * 0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: height * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(width * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  getBorderRadiusWidget(context, 0.02),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(width * 0.02),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: getBorderRadiusWidget(context, 1),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'pic3.png',
                        width: width,
                      ),
                      SizedBox(height: height * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Orange',
                            style: textStyle1,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_circle_outline,
                                color: redColor1,
                                size: width * 0.07,
                              ),
                              SizedBox(width: width * 0.02),
                              const Text(
                                '1',
                                style: textStyle14,
                              ),
                              SizedBox(width: width * 0.02),
                              Icon(
                                Icons.add_circle_rounded,
                                color: redColor1,
                                size: width * 0.07,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(width: width * 0.005),
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(width: width * 0.005),
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(width: width * 0.005),
                              const Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(width: width * 0.005),
                              Icon(
                                Icons.star,
                                color: Colors.grey.shade800,
                              ),
                              SizedBox(width: width * 0.005),
                            ],
                          ),
                          const Text(
                            '(4.4)',
                            style: textStyle6,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        'product Description',
                        style: textStyle1,
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        desc,
                        style: textStyle7,
                      ),
                      SizedBox(height: height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price',
                            style: textStyle2,
                          ),
                          Text(
                            '\$2.99/kg',
                            style: textStyle2,
                          ),
                        ],
                      ),
                      SizedBox(height: height*0.03),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          width: width*0.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: redColor1,
                              shape: getShapeWidget(context, 1),
                              padding: EdgeInsets.symmetric(vertical: height*0.01)
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(width*0.01),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        getBorderRadiusWidget(context, 1),
                                  ),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: redColor1,
                                  ),
                                ),
                                SizedBox(width: width*0.03),
                                const Text(
                                  'Add to cart',
                                  style: textStyle10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
