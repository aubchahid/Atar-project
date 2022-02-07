// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:atar/views/DetailsPlace/QuizScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class VisitScreen extends StatefulWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  State<VisitScreen> createState() => _VisitScreenState();
}

class _VisitScreenState extends State<VisitScreen> {
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
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 90.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          FeatherIcons.arrowLeft,
                          size: 35.h,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: Image.asset(
                          "assets/images/Logo_atar_color.png",
                          width: 42.w,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        FeatherIcons.arrowLeft,
                        size: 35.h,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 65.h,
              ),
              Text(
                'Place De Jamaa El Fna',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  height: 1.6,
                  fontFamily: 'MontserratBold',
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque ultrices dolor, porta viverra. Sed id et vitae, ac tristique in risus felis diam',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    height: 1.6,
                    fontFamily: 'MontserratRegular',
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  '00:22 / 05:05',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 55.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        FeatherIcons.rewind,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        FeatherIcons.pause,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        FeatherIcons.play,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      height: 55.h,
                      width: 55.h,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(360),
                      ),
                      child: const Icon(
                        FeatherIcons.fastForward,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: const QuizScreen(),
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
                  child: const Icon(FeatherIcons.arrowRight),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
