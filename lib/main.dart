import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/view_screan/dashboard_view.dart';
import 'package:new_pro/presentation_layer/view_screan/joinus_view.dart';
import 'package:new_pro/presentation_layer/view_screan/login_view.dart';
import 'package:new_pro/presentation_layer/view_screan/register_view.dart';
import 'package:new_pro/presentation_layer/view_screan/welcome_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            "/":(context) => WelcomePage(),
            "dashboard":(context) => DashBoardPage(),
            "joinus":(context) => JoinUS(),
            "register":(context) => RegiserPage(),
            "login":(context) => LoginPage(),
          },
        );
      },
      //child: LoginPage(),
    );
  }
}
