import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeFilter extends StatelessWidget {
  final String timeFilter;
  final bool isSelected;
  final VoidCallback onTap;

  TimeFilter({
    required this.timeFilter,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 78,
        height: 35,
        decoration: BoxDecoration(
            color: isSelected ? Colors.white : null,
            border: Border.all(
              color: isSelected ? Colors.black87 : Colors.white,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            timeFilter,
            style: GoogleFonts.redHatDisplay(
              fontSize: 16,
              color: isSelected ? Colors.black87 : Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
