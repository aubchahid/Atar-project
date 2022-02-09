// ignore_for_file: file_names

import 'dart:async';

import 'package:atar/views/MainScreens/HomeScreen.dart';
import 'package:atar/views/MainScreens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 167.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/Logo_atar_white.png',
                    width: 67.w,
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Bienvenu sur Atar',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).backgroundColor,
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
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    height: 1.6,
                    fontFamily: 'MontserratRegular',
                  ),
                ),
              ),
              /*  SizedBox(
                height: 120.h,
              ),*/
              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 230.h,
                  child: Image.asset(
                    'assets/images/Image1.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const SignInScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        width: 269.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Se connecter',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.6,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              FeatherIcons.arrowRight,
                              color: Colors.white,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const SignUpScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        width: 269.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          //color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                          border: Border.all(
                            width: 1.8,
                            color: Theme.of(context).backgroundColor,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Créer un compte',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Theme.of(context).backgroundColor,
                                height: 1.6,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            const Spacer(),
                            Icon(
                              FeatherIcons.arrowRight,
                              color: Theme.of(context).backgroundColor,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 167.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          size: 35.w,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/Logo_atar_white.png',
                        width: 67.w,
                      ),
                      const Spacer(),
                      Icon(
                        FeatherIcons.arrowLeft,
                        size: 35.w,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Se  connecter',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).backgroundColor,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Adresse e-mail',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Mot de passe',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(
                        'Mot de passe oubliée?',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          height: 1.6,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const MainSCreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        width: 269.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Se connecter',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.6,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              FeatherIcons.arrowRight,
                              color: Colors.white,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Center(
                  child: Text(
                    "Ou",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey,
                      height: 1.6,
                      fontFamily: 'MontserratSemiBold',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 65.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 65.h,
                      width: 65.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: const Color.fromRGBO(253, 0, 0, 1),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 45.h,
                    ),
                    Container(
                      height: 65.h,
                      width: 65.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 45.h,
                    ),
                    Container(
                      height: 65.h,
                      width: 65.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360),
                        color: const Color.fromRGBO(72, 103, 170, 1),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const SignUpScreen(),
                        type: PageTransitionType.rightToLeft,
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Créer un compte",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Theme.of(context).backgroundColor,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 167.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          size: 35.w,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/Logo_atar_white.png',
                        width: 67.w,
                      ),
                      const Spacer(),
                      Icon(
                        FeatherIcons.arrowLeft,
                        size: 35.w,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'S\'inscrire',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).backgroundColor,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Nom complete',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Adresse e-mail',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Numéro de téléphone',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Mot de passe',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const SignUpScreen2(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        width: 269.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Compléter profile',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.6,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              FeatherIcons.arrowRight,
                              color: Colors.white,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const SignInScreen(),
                          type: PageTransitionType.rightToLeft,
                        ),
                      );
                    },
                    child: Text(
                      "Se connecter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Theme.of(context).backgroundColor,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 167.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          size: 35.w,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/Logo_atar_white.png',
                        width: 67.w,
                      ),
                      const Spacer(),
                      Icon(
                        FeatherIcons.arrowLeft,
                        size: 35.w,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 38.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Compléter profile',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).backgroundColor,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Date Naissance',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Ville',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Adresse',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      width: 310.w,
                      height: 65.h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45),
                          bottomLeft: Radius.circular(45),
                        ),
                      ),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontFamily: "MontserratMedium",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Code Postal',
                          hintStyle: TextStyle(
                            fontFamily: "MontserratMedium",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(229, 229, 229, 1),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45),
                              bottomLeft: Radius.circular(45),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            child: const SecondSplashScreen(),
                            type: PageTransitionType.rightToLeft,
                          ),
                        );
                      },
                      child: Container(
                        width: 269.w,
                        height: 65.h,
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Text(
                              'Créer mon comte',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                height: 1.6,
                                fontFamily: 'MontserratBold',
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              FeatherIcons.arrowRight,
                              color: Colors.white,
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  void initState() {
    super.initState();
    /*Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          child: const MainSCreen(),
        ),
      );
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 167.h,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/images/Logo_atar_white.png',
                      width: 67.w,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Center(
                child: Text(
                  'Welcome Aboard',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Theme.of(context).backgroundColor,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Image.asset(
                'assets/images/undraw_Lost_online_re_upmy.png',
                height: 281.h,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consaeac ectetur adipiscing elit. In pretiumivela leo rutrum cursus. Ut et tempor nuc.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    height: 1.6,
                    fontFamily: 'MontserratRegular',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const MainSCreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 45.h,
                  width: 125.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Commencer',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                      //height: 1.6,
                      fontFamily: 'MontserratRegular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
