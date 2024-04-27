import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class RTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final bool isPhone;
  final IconData? suffixIcon;

  RTextField({
    required this.hintText,
    this.isPassword = false,
    this.isPhone = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(370.w, 57.h),
      child: ClipRRect(

        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              width: 1.0,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      obscureText: isPassword,
                      style: GoogleFonts.openSans(
                        color: Pallete.primaryWhite,
                        fontSize: 14.sp
                      ),
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                        isDense: true,
                      ),
                    ),
                  ),
                  if (suffixIcon != null)
                    SizedBox(
                      width: 30.w,
                      child: Icon(
                        suffixIcon,
                        color: Pallete.primaryWhite.withOpacity(0.3),
                        size: 25.w,
                      ),

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

