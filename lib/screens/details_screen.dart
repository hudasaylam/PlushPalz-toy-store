import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/products.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(Icons.arrow_back, color: kBlueColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text('Back', style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
