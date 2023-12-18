// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_panel_dribbble_clone/pages/home_util/consumption_div.dart';
import 'package:solar_panel_dribbble_clone/pages/home_util/line_chart.dart';
import 'time_filter.dart';

class SummaryChart extends StatefulWidget {
  const SummaryChart({super.key});

  @override
  State<SummaryChart> createState() => _SummaryChartState();
}

class _SummaryChartState extends State<SummaryChart> {
  double timeScale = 50;
  final List timeFilter = [
    [
      'Day',
      true,
    ],
    [
      'Week',
      false,
    ],
    [
      'Month',
      false,
    ],
    [
      'Year',
      false,
    ],
  ];

  void timeFilterSelected(int index) {
    setState(() {
      for (var i = 0; i < timeFilter.length; i++) {
        timeFilter[i][1] = false;
      }
      timeFilter[index][1] = true;
      switch (timeFilter[index][0]) {
        case "Day":
          timeScale = 50.0;
        case "Week":
          timeScale = 80.0;
        case "Month":
          timeScale = 150.0;
        case "Year":
          timeScale = 200.0;
      }
      print(timeScale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55.0, left: 8, right: 8),
      child: Container(
        alignment: Alignment(0, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black87,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Consumed",
                  style: GoogleFonts.redHatDisplay(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Text(
                      "69.32",
                      style: GoogleFonts.redHatDisplay(
                        height: 1.4,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text("KW/H",
                      style: GoogleFonts.redHatDisplay(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300))
                ],
              ),

              // time Filter

              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 20.0),
                child: SizedBox(
                  height: 35,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: timeFilter.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 6),
                      itemBuilder: (context, index) {
                        return TimeFilter(
                          timeFilter: timeFilter[index][0],
                          isSelected: timeFilter[index][1],
                          onTap: () {
                            timeFilterSelected(index);
                          },
                        );
                      }),
                ),
              ),

              //progress chart
              ProgressChartWidget(maxTime: timeScale),

              //division of consumption
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: ConsumptionDiv(division: [
                  ["175 KW/H", "Produced"],
                  ["22 KW/H", "Exported"],
                  ["42 KW/H", "Used in battery"]
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
