import 'package:club_frontend/features/user_setup.dart/success_screen.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/rounded_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSelectInterest extends StatefulWidget {
  const UserSelectInterest({super.key});

  @override
  State<UserSelectInterest> createState() => _UserSelectInterestState();
}

class _UserSelectInterestState extends State<UserSelectInterest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h, bottom: 30.h),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RBack(context),

                      SizedBox(height: 15.h,),
            
                      Text(
                       'Select Your Area of\nInterest',
                        style: GoogleFonts.openSans(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                      ),
                  
            
                    
                      SizedBox(height: 15.h,),
                    
                      Text(
                        'You will recommendations based \non these interests',
                        style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Pallete.primaryWhite, height: 1.8.h),
                      ),
                    
                    
                      SizedBox(height: 190.h,),
                    
                      
                    ],
                  ),
                    
                  SizedBox(height: 300.h),
                    
                    
                  GradientButton(
                      text: 'Next',
                      width: 175.w,
                      height: 57.h,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessScreen()));
                      },
                  ),
                    
                    
                ],
              ),
            ),
        ),
      ),
    );
  }
}