import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback onPressed;

  GradientButton({
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        padding: EdgeInsets.zero,
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient:  LinearGradient(
            colors: [Pallete.lightGreen, Pallete.green],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Container(
          width: width,
          height: height,
          alignment: Alignment.center,
          child: Text(
            text,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
