import 'package:club_frontend/features/user_setup.dart/user_bio.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/rounded_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                     'Enter 4-digit\nVerification code',
                      style: GoogleFonts.openSans(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                    ),

                    SizedBox(height: 15.h,),
                    
                    Text(
                      'Code send to +91 . This\ncode will expire in 01:30',
                      style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Pallete.primaryWhite, height: 1.8.h),
                    ),

                    SizedBox(height: 88.h,),

                    Container(
                      width: 370.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          width: 1.0,
                        ),
                      ),

                      child: OtpTextField(
                        alignment: Alignment.center,
                        numberOfFields: 4,
                        
                        textStyle: GoogleFonts.roboto(fontSize: 33.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                        showFieldAsBox: false,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        enabledBorderColor: Colors.transparent,
                        focusedBorderColor: Colors.transparent,
                        
                        fieldWidth: 70,
                        filled: true,
                        fillColor: Colors.transparent,
                        cursorColor: Pallete.primaryWhite,
                        
                        
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 290.h,),

                GradientButton(
                  text: "Next", 
                  width: 141, 
                  height: 57, 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserBio(),));
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