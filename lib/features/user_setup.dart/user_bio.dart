import 'package:club_frontend/features/user_setup.dart/user_select_profile.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:club_frontend/utils/widgets/gradient_button.dart';
import 'package:club_frontend/utils/widgets/rounded_back_button.dart';
import 'package:club_frontend/utils/widgets/rounded_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserBio extends StatefulWidget {
  const UserBio({super.key});

  @override
  State<UserBio> createState() => _UserBioState();
}

class _UserBioState extends State<UserBio> {
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
                       'Fill in your bio to get\nstarted',
                        style: GoogleFonts.openSans(fontSize: 25.sp, fontWeight: FontWeight.bold, color: Pallete.primaryWhite),
                      ),
                  
                    
                    SizedBox(height: 15.h,),
                    
                    Text(
                      'This data will be displayed in your\naccount profile', 
                      style: GoogleFonts.openSans(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Pallete.primaryWhite, height: 1.8.h),
                    ),

                    SizedBox(height: 90.h,),

                    RTextField(hintText: "Name"),

                    SizedBox(height: 40.h,),

                    RTextField(hintText: "Email"),
                    
                    SizedBox(height: 40.h,),

                    RTextField(hintText: "Password", isPassword: true, suffixIcon: Icons.remove_red_eye,),
                    
                    SizedBox(height: 40.h,),
            
                  ],
                ),

                SizedBox(height: 116.h,),

                GradientButton(
                  text: "Next", 
                  width: 141, 
                  height: 57, 
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserSelectProfile(),));
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