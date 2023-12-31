// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProgressChartWidget extends StatelessWidget {
  const ProgressChartWidget({super.key, required this.maxTime});

  final double maxTime;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            show: false,
          ),
          gridData: FlGridData(
            drawHorizontalLine: false,
            drawVerticalLine: false,
          ),
          borderData: FlBorderData(
              border: Border(
            top: BorderSide(color: Colors.transparent),
            left: BorderSide(color: Colors.transparent),
            right: BorderSide(color: Colors.transparent),
            bottom: BorderSide(color: Color.fromARGB(255, 69, 69, 69)),
          )),
          clipData: FlClipData.all(),
          minX: 0,
          minY: 0,
          maxX: maxTime,
          maxY: 55,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(10, 50),
                FlSpot(15, 20),
                FlSpot(20, 30),
                FlSpot(30, 10),
                FlSpot(35, 10),
                FlSpot(40, 50),
                FlSpot(45, 20),
                FlSpot(50, 30),
                FlSpot(60, 3),
                FlSpot(65, 50),
                FlSpot(73, 20),
                FlSpot(90, 30),
                FlSpot(100, 10),
                FlSpot(110, 10),
                FlSpot(140, 50),
                FlSpot(190, 20),
                FlSpot(200, 30),
              ],

              color: const Color.fromARGB(255, 136, 215, 139),

              isCurved: true,
              dotData: FlDotData(
                  show: false), // Set to true if you want dots on the line
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 136, 215, 139),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
