import 'package:club_frontend/features/authentication/login_screen.dart';
import 'package:club_frontend/features/authentication/otp_screen.dart';
import 'package:club_frontend/features/authentication/signup_screen.dart';
import 'package:club_frontend/features/user_setup.dart/success_screen.dart';
import 'package:club_frontend/features/user_setup.dart/user_bio.dart';
import 'package:club_frontend/theme/pallete.dart';

import 'package:club_frontend/features/home/SingleChatPage.dart';
import 'package:club_frontend/features/home/home_page.dart';
import 'package:club_frontend/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'common/routes/routes.dart';
import 'common/routes/routes_name.dart';
import 'features/auth/controller/auth_controller.dart';
import 'features/home/all_chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (_) => AuthController(),
    //     )
    //   ],
    //   child:

    return ScreenUtilInit(
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthController(),
          )
        ],
        child: MaterialApp(
          title: 'Club Application',
          theme: AppTheme.theme,
          initialRoute: RoutesName.login,
          onGenerateRoute: Routes.generateRoute,
          routes: {
            RoutesName.home: (context) => const MyHomePage(),
            RoutesName.chatpage: (context) => const AllChatPage(),
            RoutesName.singleChatPage: (context) => const SingleChatPage(),
            RoutesName.login: (context) => const LoginScreen(),
            RoutesName.signup: (context) => const SignupScreen(),
            RoutesName.otpScreen: (context) => const OtpScreen(),
            RoutesName.successScreen: (context) => const SuccessScreen(),
            RoutesName.bio: (context) => const UserBio(),
          },
        ),
      ),
      designSize: const Size(430, 932),
    );
    // This widget is the root of your application.
  }
}
