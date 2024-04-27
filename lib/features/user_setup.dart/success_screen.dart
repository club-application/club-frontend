import 'package:club_frontend/common/routes/routes_name.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 59.h,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 271.h,
              ),
              Image.asset("assets/success.png"),
              SizedBox(
                height: 46.h,
              ),
              GradientText(
                text: "Congrats!",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 11.h,
              ),
              Text(
                "Your Profile is Ready To Use",
                style: GoogleFonts.openSans(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w600,
                    color: Pallete.primaryWhite),
              ),
              SizedBox(
                height: 160.h,
              ),
              GradientButton(
                text: "Get Started",
                width: 150,
                height: 57,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.home, (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
