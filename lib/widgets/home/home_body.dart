import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/products.dart';
import 'package:store_app/screens/details_screen.dart';
import 'package:store_app/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder:
                      (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      DetailsScreen(product: products[index]),
                            ),
                          );
                        },
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
