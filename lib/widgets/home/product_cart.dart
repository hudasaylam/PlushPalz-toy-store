import '../../constants.dart';
import 'package:flutter/material.dart';
import 'package:store_app/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, this.itemIndex, this.product, this.press});

  final int? itemIndex;
  final Product? product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166.0,
      child: InkWell(
        onTap: press,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 400,
              height: 200,
              margin: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      product!.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 4),
                    Text(
                      product!.subTitle,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.black45),
                    ),
                    SizedBox(height: 16),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text('Price : \$${product!.price}'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -10,
              right: 0,
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    product!.image,
                    width: 150,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
