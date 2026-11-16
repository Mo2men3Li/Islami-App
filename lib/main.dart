import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/on_boarding.dart';
import 'package:islami_app/utiles/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: Size(430, 932),
      builder: (context, child) {
        return MaterialApp(
          darkTheme: MyTheme.myTheme,
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          initialRoute: OnBoardingScreen.routeName,
          routes: {
            HomeScreen.routeName: (context) => HomeScreen(),
            OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
          },
        );
      },
    );
  }
}
