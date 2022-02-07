// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DetailsCityScreen extends StatefulWidget {
  const DetailsCityScreen({Key? key}) : super(key: key);

  @override
  State<DetailsCityScreen> createState() => _DetailsCityScreenState();
}

class _DetailsCityScreenState extends State<DetailsCityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              FeatherIcons.arrowLeft,
              size: 35.h,
              color: Colors.black,
            ),
          ),
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          toolbarHeight: 90.h,
          title: Center(
            child: Image.asset(
              "assets/images/Logo_atar_color.png",
              width: 42.w,
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20.0.w),
              child: const Icon(
                FeatherIcons.user,
                color: Color.fromRGBO(250, 250, 250, 1),
              ),
            )
          ],
          bottom: PreferredSize(
            child: Container(
              color: const Color.fromRGBO(250, 250, 250, 1),
              height: 4.0,
            ),
            preferredSize: const Size.fromHeight(4.0),
          ),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                'Bienvenue à Meknes (19)',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 1.6,
                  fontFamily: 'MontserratSemiBold',
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Container(
                height: 55.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontFamily: "MontserratMedium",
                    fontSize: 14.sp,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search bar',
                    hintStyle: TextStyle(
                      fontFamily: "MontserratMedium",
                      fontSize: 14.sp,
                    ),
                    filled: true,
                    fillColor: const Color.fromRGBO(229, 229, 229, 1),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Al Qasbah',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1524&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Marrakech',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.w,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1569383746724-6f1b882b8f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Chefchaoun',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1512958789358-4effcbe171a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Fes',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Al Qasbah',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: const DetailsPlaceScreen(),
                                  withNavBar:
                                      false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                height: 215.h,
                                width: 155.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Theme.of(context).backgroundColor,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1524&q=80',
                                            scale: 2.0,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text(
                                      'Marrakech',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.black,
                                        height: 1.6,
                                        fontFamily: 'MontserratSemiBold',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, aeconsectetur adipiscing elit. Sodales sem sollicitudin.',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          height: 1.2,
                                          fontFamily: 'MontserratRegular',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
