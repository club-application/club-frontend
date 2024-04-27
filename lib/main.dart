import 'package:club_frontend/features/authentication/login_screen.dart';
import 'package:club_frontend/features/authentication/otp_screen.dart';
import 'package:club_frontend/features/authentication/signup_screen.dart';
import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'common/routes/routes.dart';
import 'common/routes/routes_name.dart';
import 'features/auth/controller/auth_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        builder: (context, child) => MaterialApp(
          
          title: 'Club Application',
          debugShowCheckedModeBanner: false,
          
          theme: ThemeData(
            scaffoldBackgroundColor: Pallete.backgroundColor,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        

          onGenerateRoute: Routes.generateRoute,
          initialRoute: RoutesName.login,
        
          home: const OtpScreen(),
        
        ),
        designSize: const Size(430, 932),
      );
    // );
  }
}
