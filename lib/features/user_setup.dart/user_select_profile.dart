import 'package:club_frontend/features/user_setup.dart/user_select_interest.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/rounded_back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSelectProfile extends StatefulWidget {
  const UserSelectProfile({super.key});

  @override
  State<UserSelectProfile> createState() => _UserSelectProfileState();
}

class _UserSelectProfileState extends State<UserSelectProfile> {
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
                       'Upload Your Profile\nPhoto',
                        style: GoogleFonts.openSans(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                      ),
                  
                    
                    SizedBox(height: 15.h,),
                    
                    Text(
                      'This data will be displayed in your\naccount profile', 
                      style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Pallete.primaryWhite, height: 1.8.h),
                    ),

                    SizedBox(height: 95.h,),

                    
                  
                  ],
                ),

                

                

                SizedBox(height: 116.h,),

                GradientButton(
                  text: "Next", 
                  width: 141, 
                  height: 57, 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserSelectInterest(),));
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