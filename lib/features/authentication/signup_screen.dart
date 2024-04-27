import 'package:club_frontend/common/routes/routes_name.dart';
import 'package:club_frontend/features/authentication/login_screen.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/gradient_text.dart';
import 'package:club_frontend/utils/widgets/rounded_text_field.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 30.w, right: 30.w, top: 50.h, bottom: 30.h),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Sign UP',
                        style: GoogleFonts.openSans(
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold,
                            color: Pallete.primaryWhite),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Join our community! Create an account \nto get started',
                        style: GoogleFonts.openSans(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Pallete.primaryWhite,
                            height: 1.8.h),
                      ),
                      SizedBox(
                        height: 190.h,
                      ),
                      RTextField(
                        hintText: 'Phone',
                      ),
                    ],
                  ),
                  SizedBox(height: 300.h),
                  GradientButton(
                      text: 'Get OTP',
                      width: 175.w,
                      height: 57.h,
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.otpScreen);
                      }),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: GradientText(
                        text: 'already ready have an account?',
                        fontSize: 12.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
