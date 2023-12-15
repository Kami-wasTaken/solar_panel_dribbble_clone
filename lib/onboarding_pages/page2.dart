import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              child: Image(
                image: AssetImage(
                  'assets/Panel2.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Text(
              "Reducing climate change for the future using solar panels",
              style: GoogleFonts.redHatDisplay(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
