import 'package:club_frontend/utils/widgets/linear_gradient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  GradientText({
    required this.text,
    required this.fontSize,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return componentsGradient.createShader(bounds);
      },
      child: Text(
        text,
        style: GoogleFonts.openSans(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: Colors.white,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }
}
