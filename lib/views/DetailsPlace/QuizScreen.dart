// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:atar/views/DetailsPlace/VisitScreen.dart';
import 'package:atar/views/MainScreens/MainScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Quiz  Place de jamaa el fna',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.black,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Container(
                  height: 1.5.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360),
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mollis sed pellentesque non elit?',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    height: 1.6,
                    fontFamily: 'MontserratRegular',
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          height: 1.6,
                          fontFamily: 'MontserratRegular',
                        ),
                      ),
                      const Spacer(),
                      const Icon(FeatherIcons.circle),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 270.w,
                        child: Text(
                          'Lorem dolor sit amet ipsum dolor sit amet ipsum amet',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            height: 1.6,
                            fontFamily: 'MontserratRegular',
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(FeatherIcons.checkCircle),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          height: 1.6,
                          fontFamily: 'MontserratRegular',
                        ),
                      ),
                      const Spacer(),
                      const Icon(FeatherIcons.circle),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          height: 1.6,
                          fontFamily: 'MontserratRegular',
                        ),
                      ),
                      const Spacer(),
                      const Icon(FeatherIcons.circle),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 55.h,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    pushNewScreen(
                      context,
                      screen: const MainSCreen(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: const Icon(
                      FeatherIcons.arrowRight,
                      color: Colors.white,
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
