// ignore_for_file: file_names

import 'package:atar/views/DetailsPlace/VisitScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class DetailsPlaceScreen extends StatefulWidget {
  const DetailsPlaceScreen({Key? key}) : super(key: key);

  @override
  State<DetailsPlaceScreen> createState() => _DetailsPlaceScreenState();
}

class _DetailsPlaceScreenState extends State<DetailsPlaceScreen> {
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
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const VisitScreen(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
              child: Container(
                height: 55.h,
                width: 260.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'Commencer la visite',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    height: 1.6,
                    fontFamily: 'MontserratSemiBold',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.h,
            ),
            Container(
              height: 55.h,
              width: 55.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                FeatherIcons.navigation,
                color: Colors.white,
                size: 24.h,
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.h,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        height: 130.h,
                        width: 300.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).backgroundColor,
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1601290006882-9dcdfbd809ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
                              scale: 2.0,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  children: [
                    Text(
                      'Place De Jamaa El Fna',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black,
                        height: 1.6,
                        fontFamily: 'MontserratSemiBold',
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 40.h,
                      width: 100.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(360),
                          border: Border.all(
                            color: Theme.of(context).backgroundColor,
                            width: 1.5,
                          )),
                      child: Text(
                        'Demo visit',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Theme.of(context).backgroundColor,
                          height: 1.6,
                          fontFamily: 'MontserratSemiBold',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: SizedBox(
                  height: 75.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 90.w,
                        child: Column(
                          children: [
                            const Spacer(),
                            Text(
                              'Ouverture',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '9H30min',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 90.w,
                        child: Column(
                          children: [
                            const Spacer(),
                            Text(
                              'Frais d\'accès',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '150DHS',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 90.w,
                        child: Column(
                          children: [
                            const Spacer(),
                            Text(
                              'Durée visite',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '1H30min',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                height: 1.6,
                                fontFamily: 'MontserratSemiBold',
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Text(
                  'About Jamaa El Fna',
                  style: TextStyle(
                    fontSize: 14.sp,
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
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque ultrices dolor, porta viverra. Sed id et vitae, ac tristique in risus felis diam. Nam et quis cum ac viverra proin dictumst enim. Rhoncus iaculis elementum odio ultrices. Sit orci enim gravida enim. Quisque aliquam non risus venenatis congue integer maecenas. Commodo lacus a pellentesque in. Congue turpis nibh orci fames semper lorem nibh libero. Nullam aliquet lacus lobortis ut pretium quis.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    height: 1.6,
                    fontFamily: 'MontserratRegular',
                  ),
                ),
              ),
              SizedBox(
                height: 75.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
