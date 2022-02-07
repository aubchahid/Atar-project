// ignore_for_file: file_names

import 'package:atar/views/auth/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/language.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/Logo_atar_white.png',
                    width: 111.w,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Choisissez votre langue préférée",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium mi vel leo rutrum cursus. Ut et tempor nunc..",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratRegular',
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const OnBoardingOneScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: 375.w,
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/English.png',
                            width: 28.w,
                            height: 28.w,
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            'English',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              height: 1.6,
                              fontFamily: 'MontserratMedium',
                            ),
                          ),
                          const Spacer(),
                          const Icon(FeatherIcons.arrowRight),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const OnBoardingOneScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: 375.w,
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/arabe.png',
                            width: 28.w,
                            height: 28.w,
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            'Arabe',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              height: 1.6,
                              fontFamily: 'MontserratMedium',
                            ),
                          ),
                          const Spacer(),
                          const Icon(FeatherIcons.arrowRight),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const OnBoardingOneScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Container(
                    height: 60.h,
                    width: 375.w,
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/français.png',
                            width: 28.w,
                            height: 28.w,
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            'Français',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              height: 1.6,
                              fontFamily: 'MontserratMedium',
                            ),
                          ),
                          const Spacer(),
                          const Icon(FeatherIcons.arrowRight),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingOneScreen extends StatefulWidget {
  const OnBoardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingOneScreen> createState() => _OnBoardingOneScreenState();
}

class _OnBoardingOneScreenState extends State<OnBoardingOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/onboardingOne.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          color: Colors.white,
                          size: 35.w,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Passer',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          height: 1.6,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Logo_atar_white.png',
                    width: 111.w,
                  ),
                ),
                SizedBox(
                  height: 160.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "OnBoarding Number1",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium mi vel leo rutrum cursus. Ut et tempor nunc.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratRegular',
                    ),
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const OnBoardingTwoScreen(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: const Icon(FeatherIcons.arrowRight),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingTwoScreen extends StatefulWidget {
  const OnBoardingTwoScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingTwoScreen> createState() => _OnBoardingTwoScreenState();
}

class _OnBoardingTwoScreenState extends State<OnBoardingTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/onboardingTwo.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          color: Colors.white,
                          size: 35.w,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Passer',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          height: 1.6,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Logo_atar_white.png',
                    width: 111.w,
                  ),
                ),
                SizedBox(
                  height: 160.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "OnBoarding Number2",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium mi vel leo rutrum cursus. Ut et tempor nunc.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratRegular',
                    ),
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const OnBoardingThreeScreen(),
                        type: PageTransitionType.fade,
                      ),
                    );
                  },
                  child: Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: const Icon(FeatherIcons.arrowRight),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnBoardingThreeScreen extends StatefulWidget {
  const OnBoardingThreeScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingThreeScreen> createState() => _OnBoardingThreeScreenState();
}

class _OnBoardingThreeScreenState extends State<OnBoardingThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/onboardingThree .jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 28.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          color: Colors.white,
                          size: 35.w,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/Logo_atar_white.png',
                    width: 111.w,
                  ),
                ),
                SizedBox(
                  height: 160.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "OnBoarding Number3",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium mi vel leo rutrum cursus. Ut et tempor nunc.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      height: 1.6,
                      fontFamily: 'MontserratRegular',
                    ),
                  ),
                ),
                SizedBox(
                  height: 33.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    SizedBox(
                      width: 7.5.h,
                    ),
                    Container(
                      height: 15.h,
                      width: 15.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const WelcomeScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: const Icon(FeatherIcons.check),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
