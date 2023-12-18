// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_panel_dribbble_clone/pages/home_util/drop_down.dart';
import 'home_util/summary_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SummaryChart(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Device",
                style: GoogleFonts.redHatDisplay(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Sort by",
                    style: GoogleFonts.redHatDisplay(
                      fontSize: 16,
                      color: Colors.grey[850],
                    ),
                  ),
                  DropDown(),
                ],
              ),
            ],
          ),
        ),

        // Devices
      ],
    ));
  }
}
