import 'package:atar/views/MainScreens/ProfilScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      //padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
                      color: const Color(0xFFFFFFFF),
                      width: MediaQuery.of(context).size.width,
                      height: 80.h,
                      alignment: Alignment.topRight,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  _key.currentState!.openDrawer();
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 20.w, top: 13.h),
                                  width: 35.w,
                                  height: 35.h,
                                  // alignment: Alignment.topCenter,
                                  child: Icon(
                                    FeatherIcons.grid,
                                    size: 35.h,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 13.h),
                                width: 39.h,
                                height: 53.h,
                                //alignment: Alignment.topCenter,
                                child: Image.asset(
                                  'assets/images/Logo_atar_color.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  /*Navigator.push(
                                    context,
                                    PageTransition(
                                        child: const ProfilScreen(),
                                        type: PageTransitionType.rightToLeft),
                                  );*/
                                },
                                child: CircleAvatar(
                                  radius: 30.h,
                                  backgroundImage: const AssetImage(
                                    'assets/images/profile.jpg',
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 300.h,
                            //alignment: Alignment.topCenter,
                            child: Image.asset(
                              'assets/images/Image1.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Container(
                            width: 360.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium mi vel leo rutrum cursus. Ut et tempor nunc..",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 18.0.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: 360.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: "Poppins",
                                height: 1.5,
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
