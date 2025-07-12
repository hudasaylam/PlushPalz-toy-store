import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/products.dart';
import 'package:store_app/widgets/details/product_image.dart';
import 'package:store_app/widgets/details/color_dot.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: ProductImage(size: size, image: product.image)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultFontSize),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(FillColor: kTextLightColor, isSelected: true),
                    ColorDot(FillColor: Colors.blue, isSelected: false),
                    ColorDot(FillColor: Colors.red, isSelected: false),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Text(
                'Price : ${product.price}\$',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding,
            ),
            child: Text(
              product.description,
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ),
          ),
        ),
      ],
    );
  }
}
