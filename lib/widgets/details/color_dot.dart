import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
//import 'package:store_app/widgets/details/product_image.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, this.FillColor, this.isSelected = false});
  final Color? FillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? kTextLightColor : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: FillColor),
      ),
    );
  }
}
