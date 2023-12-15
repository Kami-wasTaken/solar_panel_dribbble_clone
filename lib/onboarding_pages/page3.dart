import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                  'assets/Panel1.png',
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: Text(
              "Monitor and track your energy consumption patterns",
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
