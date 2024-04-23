import 'package:club_frontend/features/home/SingleChatPage.dart';
import 'package:club_frontend/features/home/home_page.dart';
import 'package:club_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthController(),
        )
      ],
      child: MaterialApp(
        title: 'Club Application',
        theme: AppTheme.theme,
        initialRoute: RoutesName.home,
        onGenerateRoute: Routes.generateRoute,
        routes: {
          RoutesName.home: (context) => const MyHomePage(),
          RoutesName.chatpage: (context) => const AllChatPage(),
          RoutesName.singleChatPage: (context) => const SingleChatPage()
        },
      ),
    );
  }
}
