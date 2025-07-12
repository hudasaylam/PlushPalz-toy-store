import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/main.dart';
import 'package:store_app/widgets/home/home_body.dart';

void main() {
  runApp(MyApp());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: homeAppBar(),

      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kBlueColor,
      elevation: 2,

      title: Flexible(
        child: FittedBox(
          fit: BoxFit.scaleDown,

          child: Text(
            "You Are Welcome To PlushPalz",
            style: GoogleFonts.alata(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kBackgroundColor,
            ),
          ),
        ),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
    );
  }
}
