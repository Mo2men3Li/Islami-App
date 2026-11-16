import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/utiles/app_colors.dart';
import 'package:islami_app/utiles/my_theme.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = 'onBoardingScreen';

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  Widget buildImage(String assetName) {
    return Image.asset(
      'assets/images/$assetName',
      width: double.infinity,
      height: 415.h,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: Theme.of(context).textTheme.titleLarge!,
      bodyTextStyle: Theme.of(context).textTheme.titleSmall!,
      bodyPadding: EdgeInsets.fromLTRB(16.r, 40.r, 16.r, 16.r),
      pageColor: AppColors.blackColor,
      imageFlex: 3,
      imagePadding: EdgeInsets.only(top: 150.h),
    );
    return IntroductionScreen(
      globalBackgroundColor: const Color(0xFF202020),
      dotsFlex: 3.r.toInt(),
      dotsDecorator: DotsDecorator(
        size: Size(7.w, 7.h),
        activeSize: Size(18.w, 7.h),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(27.r),
        ),
        color: AppColors.greyColor,
        activeColor: AppColors.primaryColor,
      ),
      showDoneButton: true,
      showNextButton: true,
      globalHeader: Image.asset("assets/images/intro_heading.png"),
      next: Text("Next", style: MyTheme.myTheme.textTheme.titleSmall),
      done: Text("Finish", style: Theme.of(context).textTheme.titleSmall),
      onDone: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
      showBackButton: true,
      back: Text("Back", style: Theme.of(context).textTheme.titleSmall),
      pages: [
        PageViewModel(
          title: "Welcome To Islami App",
          body: "",
          image: buildImage('intro_body1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Welcome To Islami",
          body: "We Are Very Excited To Have You In Our Community",
          image: buildImage('intro_body2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Reading the Quran",
          body: "Read, and your Lord is the Most Generous",
          image: buildImage('intro_body3.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: buildImage('intro_body4.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Holy Quran Radio",
          body: "You can listen to the Holy Quran Radio through the application for free and easily",
          image: buildImage('intro_body5.png'),
          decoration: pageDecoration,
        ),
      ],
    );
  }
}
