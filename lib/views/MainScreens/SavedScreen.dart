// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Text(
            "Don’t miss a thing",
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.black,
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
            "With saves, you can make a list of all your favorite travel ideas in one place",
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              height: 1.6,
              fontFamily: 'MontserratRegular',
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
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
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1524&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: const DetailsPlaceScreen(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1569383746724-6f1b882b8f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1512958789358-4effcbe171a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: Container(
                      height: 255.h,
                      width: 155.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 155.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).backgroundColor,
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1587974928442-77dc3e0dba72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1524&q=80',
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
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
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
