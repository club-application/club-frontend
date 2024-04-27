import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/gradient_text.dart';
import 'package:club_frontend/utils/widgets/rounded_back_button.dart';
import 'package:club_frontend/utils/widgets/rounded_text_field.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h, bottom: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      
                  RBack(context),
            
                  SizedBox(height: 15.h,),
            
                  Text(
                    'Login',
                    style: GoogleFonts.openSans(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                  ),
            
                  SizedBox(height: 15.h,),
            
                  Text(
                    'Welcome back! Log in to access \nyour account',
                    style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Pallete.primaryWhite, height: 1.8.h),
                  ),
            
            
                  SizedBox(height: 190.h,),
            
                  RTextField(
                    hintText: 'Email',
                  ),
            
                  SizedBox(height: 15.h),
            
                  RTextField(
                    hintText: 'Password',
                    isPassword: true,
                    suffixIcon: Icons.remove_red_eye_sharp,
                  ),
                    ],
                  ),
            
            
                  SizedBox(height: 200.h),
            
            
                  GradientButton(
                      text: 'Login',
                      width: 141.w,
                      height: 57.h,
                      onPressed: () {}
                  ),
            
                  
                  TextButton(
                    onPressed: () {}, 
                    child: GradientText(text: 'Forgot Your Password?',  fontSize: 12.sp,),
                  ),
                  
            
            
            
                ],
              ),
            ),
          ),
      ),

    );
  }
}

