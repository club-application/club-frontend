import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RBack extends StatelessWidget{

  final BuildContext context;

  RBack(this.context);


  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(50.w, 50.h),
      child: ClipRRect(
        child: Material(
          color: Colors.transparent,

          child: Ink(
            decoration: BoxDecoration(
              color: Pallete.primaryWhite.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15.r),
              border: Border.all(
                width: 1.0,
              ),
            ),

            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios_rounded, color: Pallete.primaryWhite, size: 20.w,), // <-- Icon
                  ],
                ),
              ),
            ),
          ),
        ),
      )

    );
  }


}