import 'package:flutter/material.dart';
import 'package:flutter_groceries_store/tools/border.dart';
import 'package:flutter_groceries_store/tools/colors.dart';

import '../tools/styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: redColor1,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.02,
                    horizontal: width * 0.03,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Good Morning',
                            style: textStyle6,
                          ),
                          Text(
                            'John Smith',
                            style: textStyle3,
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: getBorderRadiusWidget(context, 0.02),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Center(
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.065,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    decoration: BoxDecoration(
                      color: backGroundColor2,
                      borderRadius: getBorderRadiusWidget(context, 0.03),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: width * 0.07,
                            ),
                            SizedBox(width: width * 0.02),
                            const Text(
                              'Search Grocery',
                              style: textStyle7,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.filter_alt_outlined,
                          color: Colors.grey,
                          size: width * 0.07,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: getBorderRadiusWidget(context, 0.05),
                        child: Image.asset(
                          'pic2.jpg',
                          width: width * 0.9,
                          height: height * 0.175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.175,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: getBorderRadiusWidget(context, 0.05),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Discount',
                                style: textStyle12,
                              ),
                              Text(
                                'on the first order',
                                style: textStyle10,
                              ),
                            ],
                          ),
                          Text(
                            '20%',
                            style: textStyle13,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
                Padding(
                  padding:  EdgeInsets.only(left: width*0.02),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.07,
                            vertical: height * 0.008,
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: width * 0.03),
                          decoration: BoxDecoration(
                            color: redColor1,
                            borderRadius: getBorderRadiusWidget(context, 0.015),
                          ),
                          child: const Text(
                            'All',
                            style: textStyle10,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.07,
                            vertical: height * 0.008,
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: width * 0.03),
                          decoration: BoxDecoration(
                            color: backGroundColor2,
                            borderRadius: getBorderRadiusWidget(context, 0.015),
                          ),
                          child: Text(
                            'Fruit',
                            style: textStyle5,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.07,
                            vertical: height * 0.008,
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: width * 0.03),
                          decoration: BoxDecoration(
                            color: backGroundColor2,
                            borderRadius: getBorderRadiusWidget(context, 0.015),
                          ),
                          child: Text(
                            'Bakery',
                            style: textStyle5,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.07,
                            vertical: height * 0.008,
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: width * 0.03),
                          decoration: BoxDecoration(
                            color: backGroundColor2,
                            borderRadius: getBorderRadiusWidget(context, 0.015),
                          ),
                          child: Text(
                            'Vegetable',
                            style: textStyle5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemsWidget(
                        width: width,
                        height: height,
                        imageName: 'pic3.png',
                        name: 'Orange',
                        cat: 'Fruit',
                        price: '2.99',
                      ),
                      ItemsWidget(
                        width: width,
                        height: height,
                        imageName: 'pic4.png',
                        name: 'Broccoli',
                        cat: 'Vegetable',
                        price: '1.99',
                      ),
                      ItemsWidget(
                        width: width,
                        height: height,
                        imageName: 'pic3.png',
                        name: 'Orange',
                        cat: 'Fruit',
                        price: '2.99',
                      ),
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

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageName,
    required this.name,
    required this.price,
    required this.cat,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageName;
  final String name;
  final String price;
  final String cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.42,
      height: height * 0.3,
      padding: EdgeInsets.only(
        left: width * 0.03,
        top: height * 0.01,
        bottom: height * 0.01,
      ),
      margin: EdgeInsets.only(left: width * 0.05),
      decoration: BoxDecoration(
        color: backGroundColor2,
        borderRadius: getBorderRadiusWidget(context, 0.04),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(width * 0.01),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: getBorderRadiusWidget(context, 1),
            ),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: width * 0.04,
            ),
          ),
          Image.asset(
            imageName,
            width: width,
            height: height * 0.12,
          ),
          SizedBox(height: height * 0.01),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textStyle2,
              ),
              Text(
                cat,
                style: textStyle7,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: textStyle14,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(width * 0.03),
                      topLeft: Radius.circular(width * 0.03),
                    ),
                  ),
                  primary: redColor1,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: width * 0.05,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
