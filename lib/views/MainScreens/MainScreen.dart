// ignore_for_file: file_names

import 'package:atar/views/MainScreens/HomeScreen.dart';
import 'package:atar/views/MainScreens/MapScreen.dart';
import 'package:atar/views/MainScreens/SavedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainSCreen extends StatefulWidget {
  const MainSCreen({Key? key}) : super(key: key);

  @override
  State<MainSCreen> createState() => _MainSCreenState();
}

class _MainSCreenState extends State<MainSCreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProvidedStylesExample(
          menuScreenContext: context,
          index: 0,
        ),
      ),
    );
  }
}

class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  final int index;

  // ignore: use_key_in_widget_constructors
  const ProvidedStylesExample(
      {required this.menuScreenContext, required this.index});

  @override
  _ProvidedStylesExampleState createState() =>
      // ignore: no_logic_in_create_state
      _ProvidedStylesExampleState(index);
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  int index;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      WidgetsBinding.instance?.addPostFrameCallback((_) async {});
    }
  }

  _ProvidedStylesExampleState(this.index);

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const MapScreen(),
      const SavedScreen(),
      const SavedScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          FeatherIcons.home,
          size: 24.sp,
          color: Colors.white,
        ),
        title: ("Accueil"),
        activeColorPrimary: Theme.of(context).primaryColor,
        textStyle: TextStyle(
          fontFamily: "NunitoBold",
          fontSize: 13.sp,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          FeatherIcons.map,
          size: 24.sp,
          color: Colors.white,
        ),
        title: ("Mes Status"),
        activeColorPrimary: Theme.of(context).primaryColor,
        textStyle: TextStyle(
          fontFamily: "NunitoBold",
          fontSize: 13.sp,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          FeatherIcons.heart,
          size: 24.sp,
          color: Colors.white,
        ),
        title: ("Rappels"),
        activeColorPrimary: Theme.of(context).primaryColor,
        textStyle: TextStyle(
          fontFamily: "NunitoBold",
          fontSize: 13.sp,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          FeatherIcons.user,
          size: 24.sp,
          color: Colors.white,
        ),
        title: ("Chat"),
        activeColorPrimary: Theme.of(context).primaryColor,
        textStyle: TextStyle(
          fontFamily: "NunitoBold",
          fontSize: 13.sp,
        ),
      ),
    ];
  }

  bool drawerHeaderShadow = false;

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: null,
      child: SafeArea(
        child: Scaffold(
          key: _key,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                //Scaffold.of(context).openDrawer();
                _key.currentState!.openDrawer(); // Create a key
              },
              child: Icon(
                FeatherIcons.grid,
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
                child: Icon(
                  FeatherIcons.user,
                  color: Theme.of(context).primaryColor,
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
          //drawer: const NavigationDrawerWidget(),
          body: PersistentTabView(
            context,
            onItemSelected: (value) => setState(() => index = value),
            screens: _buildScreens(),
            items: _navBarsItems(),
            controller: PersistentTabController(
              initialIndex: index,
            ),
            confineInSafeArea: true,
            backgroundColor: Theme.of(context).backgroundColor,
            decoration: NavBarDecoration(
              border: const Border.fromBorderSide(BorderSide.none),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15.sp),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(30, 30, 30, 1).withAlpha(40),
                  spreadRadius: 5,
                  blurRadius: 40,
                  offset: const Offset(12, 6), // changes position of shadow
                ),
              ],
              colorBehindNavBar: const Color.fromRGBO(250, 250, 250, 1),
            ),
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            navBarHeight: 70.h,
            hideNavigationBarWhenKeyboardShows: false,
            margin: const EdgeInsets.all(0.0),
            //popActionScreens: PopActionScreensType.once,
            bottomScreenMargin: MediaQuery.of(context).viewInsets.bottom > 0
                ? 0.0
                : kBottomNavigationBarHeight,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.bounceIn,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle
                .style13, // Choose the nav bar style with this property
          ),
        ),
      ),
    );
  }
}
