// ignore_for_file: file_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:atar/views/DetailsPlace/DetailsCityScreen.dart';
import 'package:atar/views/DetailsPlace/DetailsPlaceScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List city = [];
  List filtreList = [];

  var _search = TextEditingController();
  Future<void> _getcity() async {
    var url =
        Uri.https('sehat.medyouin.com', 'public/assets/atar_api/city.php');
    var response = await http.post(
      url,
      body: {
        'action': 'getCity',
      },
    );
    if (response.statusCode == 200) {
      setState(() {
        filtreList = city = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getcity();
  }

  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Column(
            children: [
              Text(
                'Recommended where you’ve been exploring.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 1.6,
                  fontFamily: 'MontserratSemiBold',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 4.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 200.h,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: city.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(children: [
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
                      height: 200.h,
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
                              color: Colors.grey.withOpacity(0.4),
                              image: DecorationImage(
                                image: NetworkImage(
                                  city[index]["image"].toString(),
                                  scale: 2.0,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            city[index]["cityName"].toString(),
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.black,
                              height: 1.6,
                              fontFamily: 'MontserratSemiBold',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  /*GestureDetector(
                onTap: () {
                  pushNewScreen(
                    context,
                    screen: const DetailsPlaceScreen(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 200.h,
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
                          color: Colors.grey.withOpacity(0.4),
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
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.white,
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
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 200.h,
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
                          color: Colors.grey.withOpacity(0.4),
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
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.white,
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
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 200.h,
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
                          color: Colors.grey.withOpacity(0.4),
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
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    FontAwesomeIcons.heart,
                                    color: Colors.white,
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
                    ],
                  ),
                ),
              ),
                  SizedBox(
                    width: 15.w,
                  ),*/
                ]);
              }),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Column(
            children: [
              Text(
                'Cities You May want to explore',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 1.6,
                  fontFamily: 'MontserratSemiBold',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 4.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          //scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                pushNewScreen(
                  context,
                  screen: const DetailsCityScreen(),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.h),
                height: 140.h,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.4),
                      image: DecorationImage(
                        image: NetworkImage(
                          city[index]["image"].toString(),
                          scale: 2.0,
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.6),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Text(
                            city[index]["cityName"].toString(),
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              height: 1.6,
                              fontFamily: 'MontserratSemiBold',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            city[index]["description"].toString(),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                              height: 1.6,
                              fontFamily: 'MontserratRegular',
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );

            /*GestureDetector(
          onTap: () {
            pushNewScreen(
              context,
              screen: const DetailsCityScreen(),
              withNavBar: false, // OPTIONAL VALUE. True by default.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: SizedBox(
            height: 140.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.4),
                  image: DecorationImage(
                    image: const NetworkImage(
                      'https://images.unsplash.com/photo-1545041552-becc2efcccc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
                      scale: 2.0,
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6),
                      BlendMode.darken,
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 7.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        'Marrakech',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          height: 1.6,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'Lorem ipsum dolor sit amet, aeconsec tetur adipiscing elit',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          height: 1.6,
                          fontFamily: 'MontserratRegular',
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),*/
          },
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
